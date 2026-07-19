import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime409 :
    supportQrMaskWords 409 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        409).take 11 := by
  rfl

theorem baseSupportPrimeMem409 :
    409 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq409 :
    supportExtensionPrime 409 = 419 := by
  rfl

theorem extensionSemanticPrime409 :
    Nat.Prime (supportExtensionPrime 409) ∧
      409 < supportExtensionPrime 409 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        409 < q → supportExtensionPrime 409 ≤ q := by
  rw [extensionPrimeEq409]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 419 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime419 :
    supportQrMaskWords 419 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        419).take 11 := by
  rfl

theorem baseSupportPrimeMem419 :
    419 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq419 :
    supportExtensionPrime 419 = 421 := by
  rfl

theorem extensionSemanticPrime419 :
    Nat.Prime (supportExtensionPrime 419) ∧
      419 < supportExtensionPrime 419 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        419 < q → supportExtensionPrime 419 ≤ q := by
  rw [extensionPrimeEq419]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 421 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime421 :
    supportQrMaskWords 421 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        421).take 11 := by
  rfl

theorem baseSupportPrimeMem421 :
    421 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq421 :
    supportExtensionPrime 421 = 431 := by
  rfl

theorem extensionSemanticPrime421 :
    Nat.Prime (supportExtensionPrime 421) ∧
      421 < supportExtensionPrime 421 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        421 < q → supportExtensionPrime 421 ≤ q := by
  rw [extensionPrimeEq421]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 431 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime431 :
    supportQrMaskWords 431 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        431).take 11 := by
  rfl

theorem baseSupportPrimeMem431 :
    431 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq431 :
    supportExtensionPrime 431 = 433 := by
  rfl

theorem extensionSemanticPrime431 :
    Nat.Prime (supportExtensionPrime 431) ∧
      431 < supportExtensionPrime 431 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        431 < q → supportExtensionPrime 431 ≤ q := by
  rw [extensionPrimeEq431]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 433 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime433 :
    supportQrMaskWords 433 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        433).take 11 := by
  rfl

theorem baseSupportPrimeMem433 :
    433 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq433 :
    supportExtensionPrime 433 = 439 := by
  rfl

theorem extensionSemanticPrime433 :
    Nat.Prime (supportExtensionPrime 433) ∧
      433 < supportExtensionPrime 433 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        433 < q → supportExtensionPrime 433 ≤ q := by
  rw [extensionPrimeEq433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 439 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime439 :
    supportQrMaskWords 439 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        439).take 11 := by
  rfl

theorem baseSupportPrimeMem439 :
    439 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq439 :
    supportExtensionPrime 439 = 443 := by
  rfl

theorem extensionSemanticPrime439 :
    Nat.Prime (supportExtensionPrime 439) ∧
      439 < supportExtensionPrime 439 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        439 < q → supportExtensionPrime 439 ≤ q := by
  rw [extensionPrimeEq439]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 443 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime443 :
    supportQrMaskWords 443 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        443).take 11 := by
  rfl

theorem baseSupportPrimeMem443 :
    443 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq443 :
    supportExtensionPrime 443 = 449 := by
  rfl

theorem extensionSemanticPrime443 :
    Nat.Prime (supportExtensionPrime 443) ∧
      443 < supportExtensionPrime 443 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        443 < q → supportExtensionPrime 443 ≤ q := by
  rw [extensionPrimeEq443]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 449 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime449 :
    supportQrMaskWords 449 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        449).take 11 := by
  rfl

theorem baseSupportPrimeMem449 :
    449 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq449 :
    supportExtensionPrime 449 = 457 := by
  rfl

theorem extensionSemanticPrime449 :
    Nat.Prime (supportExtensionPrime 449) ∧
      449 < supportExtensionPrime 449 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        449 < q → supportExtensionPrime 449 ≤ q := by
  rw [extensionPrimeEq449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 457 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime457 :
    supportQrMaskWords 457 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        457).take 11 := by
  rfl

theorem baseSupportPrimeMem457 :
    457 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq457 :
    supportExtensionPrime 457 = 461 := by
  rfl

theorem extensionSemanticPrime457 :
    Nat.Prime (supportExtensionPrime 457) ∧
      457 < supportExtensionPrime 457 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        457 < q → supportExtensionPrime 457 ≤ q := by
  rw [extensionPrimeEq457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 461 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime461 :
    supportQrMaskWords 461 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        461).take 11 := by
  rfl

theorem baseSupportPrimeMem461 :
    461 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq461 :
    supportExtensionPrime 461 = 463 := by
  rfl

theorem extensionSemanticPrime461 :
    Nat.Prime (supportExtensionPrime 461) ∧
      461 < supportExtensionPrime 461 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        461 < q → supportExtensionPrime 461 ≤ q := by
  rw [extensionPrimeEq461]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 463 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime463 :
    supportQrMaskWords 463 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        463).take 11 := by
  rfl

theorem baseSupportPrimeMem463 :
    463 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq463 :
    supportExtensionPrime 463 = 467 := by
  rfl

theorem extensionSemanticPrime463 :
    Nat.Prime (supportExtensionPrime 463) ∧
      463 < supportExtensionPrime 463 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        463 < q → supportExtensionPrime 463 ≤ q := by
  rw [extensionPrimeEq463]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 467 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0007
    {p : ℕ}
    (hLower : 402 ≤ p) (hUpper : p ≤ 463)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime409
  · exact maskSemanticPrime419
  · exact maskSemanticPrime421
  · exact maskSemanticPrime431
  · exact maskSemanticPrime433
  · exact maskSemanticPrime439
  · exact maskSemanticPrime443
  · exact maskSemanticPrime449
  · exact maskSemanticPrime457
  · exact maskSemanticPrime461
  · exact maskSemanticPrime463

theorem baseSupportPrimeMemGroup0007
    {p : ℕ}
    (hLower : 402 ≤ p) (hUpper : p ≤ 463)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem409
  · exact baseSupportPrimeMem419
  · exact baseSupportPrimeMem421
  · exact baseSupportPrimeMem431
  · exact baseSupportPrimeMem433
  · exact baseSupportPrimeMem439
  · exact baseSupportPrimeMem443
  · exact baseSupportPrimeMem449
  · exact baseSupportPrimeMem457
  · exact baseSupportPrimeMem461
  · exact baseSupportPrimeMem463

theorem extensionSemanticGroup0007
    {p : ℕ}
    (hLower : 402 ≤ p) (hUpper : p ≤ 463)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime409
  · exact extensionSemanticPrime419
  · exact extensionSemanticPrime421
  · exact extensionSemanticPrime431
  · exact extensionSemanticPrime433
  · exact extensionSemanticPrime439
  · exact extensionSemanticPrime443
  · exact extensionSemanticPrime449
  · exact extensionSemanticPrime457
  · exact extensionSemanticPrime461
  · exact extensionSemanticPrime463

end Erdos848.GeneratedTailGlobalPureSupportCoverage
