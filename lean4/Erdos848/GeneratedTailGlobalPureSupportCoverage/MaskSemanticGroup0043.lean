import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3373 :
    supportQrMaskWords 3373 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3373).take 11 := by
  rfl

theorem baseSupportPrimeMem3373 :
    3373 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3373 :
    supportExtensionPrime 3373 = 3389 := by
  rfl

theorem extensionSemanticPrime3373 :
    Nat.Prime (supportExtensionPrime 3373) ∧
      3373 < supportExtensionPrime 3373 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3373 < q → supportExtensionPrime 3373 ≤ q := by
  rw [extensionPrimeEq3373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3389 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3389 :
    supportQrMaskWords 3389 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3389).take 11 := by
  rfl

theorem baseSupportPrimeMem3389 :
    3389 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3389 :
    supportExtensionPrime 3389 = 3391 := by
  rfl

theorem extensionSemanticPrime3389 :
    Nat.Prime (supportExtensionPrime 3389) ∧
      3389 < supportExtensionPrime 3389 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3389 < q → supportExtensionPrime 3389 ≤ q := by
  rw [extensionPrimeEq3389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3391 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3391 :
    supportQrMaskWords 3391 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3391).take 11 := by
  rfl

theorem baseSupportPrimeMem3391 :
    3391 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3391 :
    supportExtensionPrime 3391 = 3407 := by
  rfl

theorem extensionSemanticPrime3391 :
    Nat.Prime (supportExtensionPrime 3391) ∧
      3391 < supportExtensionPrime 3391 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3391 < q → supportExtensionPrime 3391 ≤ q := by
  rw [extensionPrimeEq3391]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3407 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3407 :
    supportQrMaskWords 3407 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3407).take 11 := by
  rfl

theorem baseSupportPrimeMem3407 :
    3407 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3407 :
    supportExtensionPrime 3407 = 3413 := by
  rfl

theorem extensionSemanticPrime3407 :
    Nat.Prime (supportExtensionPrime 3407) ∧
      3407 < supportExtensionPrime 3407 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3407 < q → supportExtensionPrime 3407 ≤ q := by
  rw [extensionPrimeEq3407]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3413 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3413 :
    supportQrMaskWords 3413 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3413).take 11 := by
  rfl

theorem baseSupportPrimeMem3413 :
    3413 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3413 :
    supportExtensionPrime 3413 = 3433 := by
  rfl

theorem extensionSemanticPrime3413 :
    Nat.Prime (supportExtensionPrime 3413) ∧
      3413 < supportExtensionPrime 3413 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3413 < q → supportExtensionPrime 3413 ≤ q := by
  rw [extensionPrimeEq3413]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3433 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3433 :
    supportQrMaskWords 3433 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3433).take 11 := by
  rfl

theorem baseSupportPrimeMem3433 :
    3433 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3433 :
    supportExtensionPrime 3433 = 3449 := by
  rfl

theorem extensionSemanticPrime3433 :
    Nat.Prime (supportExtensionPrime 3433) ∧
      3433 < supportExtensionPrime 3433 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3433 < q → supportExtensionPrime 3433 ≤ q := by
  rw [extensionPrimeEq3433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3449 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3449 :
    supportQrMaskWords 3449 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3449).take 11 := by
  rfl

theorem baseSupportPrimeMem3449 :
    3449 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3449 :
    supportExtensionPrime 3449 = 3457 := by
  rfl

theorem extensionSemanticPrime3449 :
    Nat.Prime (supportExtensionPrime 3449) ∧
      3449 < supportExtensionPrime 3449 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3449 < q → supportExtensionPrime 3449 ≤ q := by
  rw [extensionPrimeEq3449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3457 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3457 :
    supportQrMaskWords 3457 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3457).take 11 := by
  rfl

theorem baseSupportPrimeMem3457 :
    3457 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3457 :
    supportExtensionPrime 3457 = 3461 := by
  rfl

theorem extensionSemanticPrime3457 :
    Nat.Prime (supportExtensionPrime 3457) ∧
      3457 < supportExtensionPrime 3457 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3457 < q → supportExtensionPrime 3457 ≤ q := by
  rw [extensionPrimeEq3457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3461 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3461 :
    supportQrMaskWords 3461 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3461).take 11 := by
  rfl

theorem baseSupportPrimeMem3461 :
    3461 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3461 :
    supportExtensionPrime 3461 = 3463 := by
  rfl

theorem extensionSemanticPrime3461 :
    Nat.Prime (supportExtensionPrime 3461) ∧
      3461 < supportExtensionPrime 3461 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3461 < q → supportExtensionPrime 3461 ≤ q := by
  rw [extensionPrimeEq3461]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3463 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3463 :
    supportQrMaskWords 3463 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3463).take 11 := by
  rfl

theorem baseSupportPrimeMem3463 :
    3463 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3463 :
    supportExtensionPrime 3463 = 3467 := by
  rfl

theorem extensionSemanticPrime3463 :
    Nat.Prime (supportExtensionPrime 3463) ∧
      3463 < supportExtensionPrime 3463 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3463 < q → supportExtensionPrime 3463 ≤ q := by
  rw [extensionPrimeEq3463]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3467 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3467 :
    supportQrMaskWords 3467 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3467).take 11 := by
  rfl

theorem baseSupportPrimeMem3467 :
    3467 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3467 :
    supportExtensionPrime 3467 = 3469 := by
  rfl

theorem extensionSemanticPrime3467 :
    Nat.Prime (supportExtensionPrime 3467) ∧
      3467 < supportExtensionPrime 3467 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3467 < q → supportExtensionPrime 3467 ≤ q := by
  rw [extensionPrimeEq3467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3469 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0043
    {p : ℕ}
    (hLower : 3372 ≤ p) (hUpper : p ≤ 3467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3373
  · exact maskSemanticPrime3389
  · exact maskSemanticPrime3391
  · exact maskSemanticPrime3407
  · exact maskSemanticPrime3413
  · exact maskSemanticPrime3433
  · exact maskSemanticPrime3449
  · exact maskSemanticPrime3457
  · exact maskSemanticPrime3461
  · exact maskSemanticPrime3463
  · exact maskSemanticPrime3467

theorem baseSupportPrimeMemGroup0043
    {p : ℕ}
    (hLower : 3372 ≤ p) (hUpper : p ≤ 3467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3373
  · exact baseSupportPrimeMem3389
  · exact baseSupportPrimeMem3391
  · exact baseSupportPrimeMem3407
  · exact baseSupportPrimeMem3413
  · exact baseSupportPrimeMem3433
  · exact baseSupportPrimeMem3449
  · exact baseSupportPrimeMem3457
  · exact baseSupportPrimeMem3461
  · exact baseSupportPrimeMem3463
  · exact baseSupportPrimeMem3467

theorem extensionSemanticGroup0043
    {p : ℕ}
    (hLower : 3372 ≤ p) (hUpper : p ≤ 3467)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3373
  · exact extensionSemanticPrime3389
  · exact extensionSemanticPrime3391
  · exact extensionSemanticPrime3407
  · exact extensionSemanticPrime3413
  · exact extensionSemanticPrime3433
  · exact extensionSemanticPrime3449
  · exact extensionSemanticPrime3457
  · exact extensionSemanticPrime3461
  · exact extensionSemanticPrime3463
  · exact extensionSemanticPrime3467

end Erdos848.GeneratedTailGlobalPureSupportCoverage
