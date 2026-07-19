import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3307 :
    supportQrMaskWords 3307 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3307).take 11 := by
  rfl

theorem baseSupportPrimeMem3307 :
    3307 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3307 :
    supportExtensionPrime 3307 = 3313 := by
  rfl

theorem extensionSemanticPrime3307 :
    Nat.Prime (supportExtensionPrime 3307) ∧
      3307 < supportExtensionPrime 3307 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3307 < q → supportExtensionPrime 3307 ≤ q := by
  rw [extensionPrimeEq3307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3313 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3313 :
    supportQrMaskWords 3313 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3313).take 11 := by
  rfl

theorem baseSupportPrimeMem3313 :
    3313 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3313 :
    supportExtensionPrime 3313 = 3319 := by
  rfl

theorem extensionSemanticPrime3313 :
    Nat.Prime (supportExtensionPrime 3313) ∧
      3313 < supportExtensionPrime 3313 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3313 < q → supportExtensionPrime 3313 ≤ q := by
  rw [extensionPrimeEq3313]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3319 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3319 :
    supportQrMaskWords 3319 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3319).take 11 := by
  rfl

theorem baseSupportPrimeMem3319 :
    3319 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3319 :
    supportExtensionPrime 3319 = 3323 := by
  rfl

theorem extensionSemanticPrime3319 :
    Nat.Prime (supportExtensionPrime 3319) ∧
      3319 < supportExtensionPrime 3319 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3319 < q → supportExtensionPrime 3319 ≤ q := by
  rw [extensionPrimeEq3319]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3323 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3323 :
    supportQrMaskWords 3323 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3323).take 11 := by
  rfl

theorem baseSupportPrimeMem3323 :
    3323 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3323 :
    supportExtensionPrime 3323 = 3329 := by
  rfl

theorem extensionSemanticPrime3323 :
    Nat.Prime (supportExtensionPrime 3323) ∧
      3323 < supportExtensionPrime 3323 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3323 < q → supportExtensionPrime 3323 ≤ q := by
  rw [extensionPrimeEq3323]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3329 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3329 :
    supportQrMaskWords 3329 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3329).take 11 := by
  rfl

theorem baseSupportPrimeMem3329 :
    3329 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3329 :
    supportExtensionPrime 3329 = 3331 := by
  rfl

theorem extensionSemanticPrime3329 :
    Nat.Prime (supportExtensionPrime 3329) ∧
      3329 < supportExtensionPrime 3329 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3329 < q → supportExtensionPrime 3329 ≤ q := by
  rw [extensionPrimeEq3329]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3331 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3331 :
    supportQrMaskWords 3331 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3331).take 11 := by
  rfl

theorem baseSupportPrimeMem3331 :
    3331 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3331 :
    supportExtensionPrime 3331 = 3343 := by
  rfl

theorem extensionSemanticPrime3331 :
    Nat.Prime (supportExtensionPrime 3331) ∧
      3331 < supportExtensionPrime 3331 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3331 < q → supportExtensionPrime 3331 ≤ q := by
  rw [extensionPrimeEq3331]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3343 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3343 :
    supportQrMaskWords 3343 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3343).take 11 := by
  rfl

theorem baseSupportPrimeMem3343 :
    3343 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3343 :
    supportExtensionPrime 3343 = 3347 := by
  rfl

theorem extensionSemanticPrime3343 :
    Nat.Prime (supportExtensionPrime 3343) ∧
      3343 < supportExtensionPrime 3343 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3343 < q → supportExtensionPrime 3343 ≤ q := by
  rw [extensionPrimeEq3343]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3347 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3347 :
    supportQrMaskWords 3347 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3347).take 11 := by
  rfl

theorem baseSupportPrimeMem3347 :
    3347 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3347 :
    supportExtensionPrime 3347 = 3359 := by
  rfl

theorem extensionSemanticPrime3347 :
    Nat.Prime (supportExtensionPrime 3347) ∧
      3347 < supportExtensionPrime 3347 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3347 < q → supportExtensionPrime 3347 ≤ q := by
  rw [extensionPrimeEq3347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3359 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3359 :
    supportQrMaskWords 3359 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3359).take 11 := by
  rfl

theorem baseSupportPrimeMem3359 :
    3359 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3359 :
    supportExtensionPrime 3359 = 3361 := by
  rfl

theorem extensionSemanticPrime3359 :
    Nat.Prime (supportExtensionPrime 3359) ∧
      3359 < supportExtensionPrime 3359 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3359 < q → supportExtensionPrime 3359 ≤ q := by
  rw [extensionPrimeEq3359]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3361 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3361 :
    supportQrMaskWords 3361 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3361).take 11 := by
  rfl

theorem baseSupportPrimeMem3361 :
    3361 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3361 :
    supportExtensionPrime 3361 = 3371 := by
  rfl

theorem extensionSemanticPrime3361 :
    Nat.Prime (supportExtensionPrime 3361) ∧
      3361 < supportExtensionPrime 3361 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3361 < q → supportExtensionPrime 3361 ≤ q := by
  rw [extensionPrimeEq3361]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3371 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3371 :
    supportQrMaskWords 3371 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3371).take 11 := by
  rfl

theorem baseSupportPrimeMem3371 :
    3371 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3371 :
    supportExtensionPrime 3371 = 3373 := by
  rfl

theorem extensionSemanticPrime3371 :
    Nat.Prime (supportExtensionPrime 3371) ∧
      3371 < supportExtensionPrime 3371 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3371 < q → supportExtensionPrime 3371 ≤ q := by
  rw [extensionPrimeEq3371]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3373 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0042
    {p : ℕ}
    (hLower : 3302 ≤ p) (hUpper : p ≤ 3371)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3307
  · exact maskSemanticPrime3313
  · exact maskSemanticPrime3319
  · exact maskSemanticPrime3323
  · exact maskSemanticPrime3329
  · exact maskSemanticPrime3331
  · exact maskSemanticPrime3343
  · exact maskSemanticPrime3347
  · exact maskSemanticPrime3359
  · exact maskSemanticPrime3361
  · exact maskSemanticPrime3371

theorem baseSupportPrimeMemGroup0042
    {p : ℕ}
    (hLower : 3302 ≤ p) (hUpper : p ≤ 3371)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3307
  · exact baseSupportPrimeMem3313
  · exact baseSupportPrimeMem3319
  · exact baseSupportPrimeMem3323
  · exact baseSupportPrimeMem3329
  · exact baseSupportPrimeMem3331
  · exact baseSupportPrimeMem3343
  · exact baseSupportPrimeMem3347
  · exact baseSupportPrimeMem3359
  · exact baseSupportPrimeMem3361
  · exact baseSupportPrimeMem3371

theorem extensionSemanticGroup0042
    {p : ℕ}
    (hLower : 3302 ≤ p) (hUpper : p ≤ 3371)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3307
  · exact extensionSemanticPrime3313
  · exact extensionSemanticPrime3319
  · exact extensionSemanticPrime3323
  · exact extensionSemanticPrime3329
  · exact extensionSemanticPrime3331
  · exact extensionSemanticPrime3343
  · exact extensionSemanticPrime3347
  · exact extensionSemanticPrime3359
  · exact extensionSemanticPrime3361
  · exact extensionSemanticPrime3371

end Erdos848.GeneratedTailGlobalPureSupportCoverage
