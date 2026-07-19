import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2311 :
    supportQrMaskWords 2311 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2311).take 11 := by
  rfl

theorem baseSupportPrimeMem2311 :
    2311 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2311 :
    supportExtensionPrime 2311 = 2333 := by
  rfl

theorem extensionSemanticPrime2311 :
    Nat.Prime (supportExtensionPrime 2311) ∧
      2311 < supportExtensionPrime 2311 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2311 < q → supportExtensionPrime 2311 ≤ q := by
  rw [extensionPrimeEq2311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2333 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2333 :
    supportQrMaskWords 2333 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2333).take 11 := by
  rfl

theorem baseSupportPrimeMem2333 :
    2333 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2333 :
    supportExtensionPrime 2333 = 2339 := by
  rfl

theorem extensionSemanticPrime2333 :
    Nat.Prime (supportExtensionPrime 2333) ∧
      2333 < supportExtensionPrime 2333 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2333 < q → supportExtensionPrime 2333 ≤ q := by
  rw [extensionPrimeEq2333]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2339 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2339 :
    supportQrMaskWords 2339 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2339).take 11 := by
  rfl

theorem baseSupportPrimeMem2339 :
    2339 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2339 :
    supportExtensionPrime 2339 = 2341 := by
  rfl

theorem extensionSemanticPrime2339 :
    Nat.Prime (supportExtensionPrime 2339) ∧
      2339 < supportExtensionPrime 2339 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2339 < q → supportExtensionPrime 2339 ≤ q := by
  rw [extensionPrimeEq2339]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2341 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2341 :
    supportQrMaskWords 2341 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2341).take 11 := by
  rfl

theorem baseSupportPrimeMem2341 :
    2341 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2341 :
    supportExtensionPrime 2341 = 2347 := by
  rfl

theorem extensionSemanticPrime2341 :
    Nat.Prime (supportExtensionPrime 2341) ∧
      2341 < supportExtensionPrime 2341 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2341 < q → supportExtensionPrime 2341 ≤ q := by
  rw [extensionPrimeEq2341]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2347 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2347 :
    supportQrMaskWords 2347 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2347).take 11 := by
  rfl

theorem baseSupportPrimeMem2347 :
    2347 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2347 :
    supportExtensionPrime 2347 = 2351 := by
  rfl

theorem extensionSemanticPrime2347 :
    Nat.Prime (supportExtensionPrime 2347) ∧
      2347 < supportExtensionPrime 2347 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2347 < q → supportExtensionPrime 2347 ≤ q := by
  rw [extensionPrimeEq2347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2351 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2351 :
    supportQrMaskWords 2351 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2351).take 11 := by
  rfl

theorem baseSupportPrimeMem2351 :
    2351 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2351 :
    supportExtensionPrime 2351 = 2357 := by
  rfl

theorem extensionSemanticPrime2351 :
    Nat.Prime (supportExtensionPrime 2351) ∧
      2351 < supportExtensionPrime 2351 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2351 < q → supportExtensionPrime 2351 ≤ q := by
  rw [extensionPrimeEq2351]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2357 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2357 :
    supportQrMaskWords 2357 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2357).take 11 := by
  rfl

theorem baseSupportPrimeMem2357 :
    2357 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2357 :
    supportExtensionPrime 2357 = 2371 := by
  rfl

theorem extensionSemanticPrime2357 :
    Nat.Prime (supportExtensionPrime 2357) ∧
      2357 < supportExtensionPrime 2357 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2357 < q → supportExtensionPrime 2357 ≤ q := by
  rw [extensionPrimeEq2357]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2371 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2371 :
    supportQrMaskWords 2371 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2371).take 11 := by
  rfl

theorem baseSupportPrimeMem2371 :
    2371 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2371 :
    supportExtensionPrime 2371 = 2377 := by
  rfl

theorem extensionSemanticPrime2371 :
    Nat.Prime (supportExtensionPrime 2371) ∧
      2371 < supportExtensionPrime 2371 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2371 < q → supportExtensionPrime 2371 ≤ q := by
  rw [extensionPrimeEq2371]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2377 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2377 :
    supportQrMaskWords 2377 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2377).take 11 := by
  rfl

theorem baseSupportPrimeMem2377 :
    2377 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2377 :
    supportExtensionPrime 2377 = 2381 := by
  rfl

theorem extensionSemanticPrime2377 :
    Nat.Prime (supportExtensionPrime 2377) ∧
      2377 < supportExtensionPrime 2377 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2377 < q → supportExtensionPrime 2377 ≤ q := by
  rw [extensionPrimeEq2377]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2381 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2381 :
    supportQrMaskWords 2381 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2381).take 11 := by
  rfl

theorem baseSupportPrimeMem2381 :
    2381 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2381 :
    supportExtensionPrime 2381 = 2383 := by
  rfl

theorem extensionSemanticPrime2381 :
    Nat.Prime (supportExtensionPrime 2381) ∧
      2381 < supportExtensionPrime 2381 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2381 < q → supportExtensionPrime 2381 ≤ q := by
  rw [extensionPrimeEq2381]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2383 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2383 :
    supportQrMaskWords 2383 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2383).take 11 := by
  rfl

theorem baseSupportPrimeMem2383 :
    2383 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2383 :
    supportExtensionPrime 2383 = 2389 := by
  rfl

theorem extensionSemanticPrime2383 :
    Nat.Prime (supportExtensionPrime 2383) ∧
      2383 < supportExtensionPrime 2383 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2383 < q → supportExtensionPrime 2383 ≤ q := by
  rw [extensionPrimeEq2383]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2389 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0031
    {p : ℕ}
    (hLower : 2310 ≤ p) (hUpper : p ≤ 2383)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2311
  · exact maskSemanticPrime2333
  · exact maskSemanticPrime2339
  · exact maskSemanticPrime2341
  · exact maskSemanticPrime2347
  · exact maskSemanticPrime2351
  · exact maskSemanticPrime2357
  · exact maskSemanticPrime2371
  · exact maskSemanticPrime2377
  · exact maskSemanticPrime2381
  · exact maskSemanticPrime2383

theorem baseSupportPrimeMemGroup0031
    {p : ℕ}
    (hLower : 2310 ≤ p) (hUpper : p ≤ 2383)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2311
  · exact baseSupportPrimeMem2333
  · exact baseSupportPrimeMem2339
  · exact baseSupportPrimeMem2341
  · exact baseSupportPrimeMem2347
  · exact baseSupportPrimeMem2351
  · exact baseSupportPrimeMem2357
  · exact baseSupportPrimeMem2371
  · exact baseSupportPrimeMem2377
  · exact baseSupportPrimeMem2381
  · exact baseSupportPrimeMem2383

theorem extensionSemanticGroup0031
    {p : ℕ}
    (hLower : 2310 ≤ p) (hUpper : p ≤ 2383)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2311
  · exact extensionSemanticPrime2333
  · exact extensionSemanticPrime2339
  · exact extensionSemanticPrime2341
  · exact extensionSemanticPrime2347
  · exact extensionSemanticPrime2351
  · exact extensionSemanticPrime2357
  · exact extensionSemanticPrime2371
  · exact extensionSemanticPrime2377
  · exact extensionSemanticPrime2381
  · exact extensionSemanticPrime2383

end Erdos848.GeneratedTailGlobalPureSupportCoverage
