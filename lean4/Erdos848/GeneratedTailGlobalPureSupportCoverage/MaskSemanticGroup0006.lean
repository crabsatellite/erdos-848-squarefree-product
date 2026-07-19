import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime347 :
    supportQrMaskWords 347 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        347).take 11 := by
  rfl

theorem baseSupportPrimeMem347 :
    347 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq347 :
    supportExtensionPrime 347 = 349 := by
  rfl

theorem extensionSemanticPrime347 :
    Nat.Prime (supportExtensionPrime 347) ∧
      347 < supportExtensionPrime 347 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        347 < q → supportExtensionPrime 347 ≤ q := by
  rw [extensionPrimeEq347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 349 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime349 :
    supportQrMaskWords 349 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        349).take 11 := by
  rfl

theorem baseSupportPrimeMem349 :
    349 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq349 :
    supportExtensionPrime 349 = 353 := by
  rfl

theorem extensionSemanticPrime349 :
    Nat.Prime (supportExtensionPrime 349) ∧
      349 < supportExtensionPrime 349 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        349 < q → supportExtensionPrime 349 ≤ q := by
  rw [extensionPrimeEq349]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 353 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime353 :
    supportQrMaskWords 353 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        353).take 11 := by
  rfl

theorem baseSupportPrimeMem353 :
    353 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq353 :
    supportExtensionPrime 353 = 359 := by
  rfl

theorem extensionSemanticPrime353 :
    Nat.Prime (supportExtensionPrime 353) ∧
      353 < supportExtensionPrime 353 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        353 < q → supportExtensionPrime 353 ≤ q := by
  rw [extensionPrimeEq353]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 359 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime359 :
    supportQrMaskWords 359 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        359).take 11 := by
  rfl

theorem baseSupportPrimeMem359 :
    359 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq359 :
    supportExtensionPrime 359 = 367 := by
  rfl

theorem extensionSemanticPrime359 :
    Nat.Prime (supportExtensionPrime 359) ∧
      359 < supportExtensionPrime 359 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        359 < q → supportExtensionPrime 359 ≤ q := by
  rw [extensionPrimeEq359]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 367 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime367 :
    supportQrMaskWords 367 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        367).take 11 := by
  rfl

theorem baseSupportPrimeMem367 :
    367 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq367 :
    supportExtensionPrime 367 = 373 := by
  rfl

theorem extensionSemanticPrime367 :
    Nat.Prime (supportExtensionPrime 367) ∧
      367 < supportExtensionPrime 367 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        367 < q → supportExtensionPrime 367 ≤ q := by
  rw [extensionPrimeEq367]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 373 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime373 :
    supportQrMaskWords 373 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        373).take 11 := by
  rfl

theorem baseSupportPrimeMem373 :
    373 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq373 :
    supportExtensionPrime 373 = 379 := by
  rfl

theorem extensionSemanticPrime373 :
    Nat.Prime (supportExtensionPrime 373) ∧
      373 < supportExtensionPrime 373 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        373 < q → supportExtensionPrime 373 ≤ q := by
  rw [extensionPrimeEq373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 379 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime379 :
    supportQrMaskWords 379 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        379).take 11 := by
  rfl

theorem baseSupportPrimeMem379 :
    379 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq379 :
    supportExtensionPrime 379 = 383 := by
  rfl

theorem extensionSemanticPrime379 :
    Nat.Prime (supportExtensionPrime 379) ∧
      379 < supportExtensionPrime 379 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        379 < q → supportExtensionPrime 379 ≤ q := by
  rw [extensionPrimeEq379]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 383 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime383 :
    supportQrMaskWords 383 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        383).take 11 := by
  rfl

theorem baseSupportPrimeMem383 :
    383 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq383 :
    supportExtensionPrime 383 = 389 := by
  rfl

theorem extensionSemanticPrime383 :
    Nat.Prime (supportExtensionPrime 383) ∧
      383 < supportExtensionPrime 383 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        383 < q → supportExtensionPrime 383 ≤ q := by
  rw [extensionPrimeEq383]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 389 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime389 :
    supportQrMaskWords 389 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        389).take 11 := by
  rfl

theorem baseSupportPrimeMem389 :
    389 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq389 :
    supportExtensionPrime 389 = 397 := by
  rfl

theorem extensionSemanticPrime389 :
    Nat.Prime (supportExtensionPrime 389) ∧
      389 < supportExtensionPrime 389 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        389 < q → supportExtensionPrime 389 ≤ q := by
  rw [extensionPrimeEq389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 397 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime397 :
    supportQrMaskWords 397 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        397).take 11 := by
  rfl

theorem baseSupportPrimeMem397 :
    397 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq397 :
    supportExtensionPrime 397 = 401 := by
  rfl

theorem extensionSemanticPrime397 :
    Nat.Prime (supportExtensionPrime 397) ∧
      397 < supportExtensionPrime 397 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        397 < q → supportExtensionPrime 397 ≤ q := by
  rw [extensionPrimeEq397]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 401 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime401 :
    supportQrMaskWords 401 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        401).take 11 := by
  rfl

theorem baseSupportPrimeMem401 :
    401 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq401 :
    supportExtensionPrime 401 = 409 := by
  rfl

theorem extensionSemanticPrime401 :
    Nat.Prime (supportExtensionPrime 401) ∧
      401 < supportExtensionPrime 401 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        401 < q → supportExtensionPrime 401 ≤ q := by
  rw [extensionPrimeEq401]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 409 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0006
    {p : ℕ}
    (hLower : 338 ≤ p) (hUpper : p ≤ 401)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime347
  · exact maskSemanticPrime349
  · exact maskSemanticPrime353
  · exact maskSemanticPrime359
  · exact maskSemanticPrime367
  · exact maskSemanticPrime373
  · exact maskSemanticPrime379
  · exact maskSemanticPrime383
  · exact maskSemanticPrime389
  · exact maskSemanticPrime397
  · exact maskSemanticPrime401

theorem baseSupportPrimeMemGroup0006
    {p : ℕ}
    (hLower : 338 ≤ p) (hUpper : p ≤ 401)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem347
  · exact baseSupportPrimeMem349
  · exact baseSupportPrimeMem353
  · exact baseSupportPrimeMem359
  · exact baseSupportPrimeMem367
  · exact baseSupportPrimeMem373
  · exact baseSupportPrimeMem379
  · exact baseSupportPrimeMem383
  · exact baseSupportPrimeMem389
  · exact baseSupportPrimeMem397
  · exact baseSupportPrimeMem401

theorem extensionSemanticGroup0006
    {p : ℕ}
    (hLower : 338 ≤ p) (hUpper : p ≤ 401)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime347
  · exact extensionSemanticPrime349
  · exact extensionSemanticPrime353
  · exact extensionSemanticPrime359
  · exact extensionSemanticPrime367
  · exact extensionSemanticPrime373
  · exact extensionSemanticPrime379
  · exact extensionSemanticPrime383
  · exact extensionSemanticPrime389
  · exact extensionSemanticPrime397
  · exact extensionSemanticPrime401

end Erdos848.GeneratedTailGlobalPureSupportCoverage
