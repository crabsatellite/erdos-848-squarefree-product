import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime467 :
    supportQrMaskWords 467 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        467).take 11 := by
  rfl

theorem baseSupportPrimeMem467 :
    467 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq467 :
    supportExtensionPrime 467 = 479 := by
  rfl

theorem extensionSemanticPrime467 :
    Nat.Prime (supportExtensionPrime 467) ∧
      467 < supportExtensionPrime 467 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        467 < q → supportExtensionPrime 467 ≤ q := by
  rw [extensionPrimeEq467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 479 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime479 :
    supportQrMaskWords 479 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        479).take 11 := by
  rfl

theorem baseSupportPrimeMem479 :
    479 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq479 :
    supportExtensionPrime 479 = 487 := by
  rfl

theorem extensionSemanticPrime479 :
    Nat.Prime (supportExtensionPrime 479) ∧
      479 < supportExtensionPrime 479 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        479 < q → supportExtensionPrime 479 ≤ q := by
  rw [extensionPrimeEq479]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 487 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime487 :
    supportQrMaskWords 487 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        487).take 11 := by
  rfl

theorem baseSupportPrimeMem487 :
    487 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq487 :
    supportExtensionPrime 487 = 491 := by
  rfl

theorem extensionSemanticPrime487 :
    Nat.Prime (supportExtensionPrime 487) ∧
      487 < supportExtensionPrime 487 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        487 < q → supportExtensionPrime 487 ≤ q := by
  rw [extensionPrimeEq487]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 491 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime491 :
    supportQrMaskWords 491 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        491).take 11 := by
  rfl

theorem baseSupportPrimeMem491 :
    491 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq491 :
    supportExtensionPrime 491 = 499 := by
  rfl

theorem extensionSemanticPrime491 :
    Nat.Prime (supportExtensionPrime 491) ∧
      491 < supportExtensionPrime 491 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        491 < q → supportExtensionPrime 491 ≤ q := by
  rw [extensionPrimeEq491]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 499 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime499 :
    supportQrMaskWords 499 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        499).take 11 := by
  rfl

theorem baseSupportPrimeMem499 :
    499 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq499 :
    supportExtensionPrime 499 = 503 := by
  rfl

theorem extensionSemanticPrime499 :
    Nat.Prime (supportExtensionPrime 499) ∧
      499 < supportExtensionPrime 499 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        499 < q → supportExtensionPrime 499 ≤ q := by
  rw [extensionPrimeEq499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 503 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime503 :
    supportQrMaskWords 503 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        503).take 11 := by
  rfl

theorem baseSupportPrimeMem503 :
    503 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq503 :
    supportExtensionPrime 503 = 509 := by
  rfl

theorem extensionSemanticPrime503 :
    Nat.Prime (supportExtensionPrime 503) ∧
      503 < supportExtensionPrime 503 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        503 < q → supportExtensionPrime 503 ≤ q := by
  rw [extensionPrimeEq503]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 509 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime509 :
    supportQrMaskWords 509 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        509).take 11 := by
  rfl

theorem baseSupportPrimeMem509 :
    509 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq509 :
    supportExtensionPrime 509 = 521 := by
  rfl

theorem extensionSemanticPrime509 :
    Nat.Prime (supportExtensionPrime 509) ∧
      509 < supportExtensionPrime 509 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        509 < q → supportExtensionPrime 509 ≤ q := by
  rw [extensionPrimeEq509]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 521 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime521 :
    supportQrMaskWords 521 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        521).take 11 := by
  rfl

theorem baseSupportPrimeMem521 :
    521 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq521 :
    supportExtensionPrime 521 = 523 := by
  rfl

theorem extensionSemanticPrime521 :
    Nat.Prime (supportExtensionPrime 521) ∧
      521 < supportExtensionPrime 521 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        521 < q → supportExtensionPrime 521 ≤ q := by
  rw [extensionPrimeEq521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 523 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime523 :
    supportQrMaskWords 523 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        523).take 11 := by
  rfl

theorem baseSupportPrimeMem523 :
    523 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq523 :
    supportExtensionPrime 523 = 541 := by
  rfl

theorem extensionSemanticPrime523 :
    Nat.Prime (supportExtensionPrime 523) ∧
      523 < supportExtensionPrime 523 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        523 < q → supportExtensionPrime 523 ≤ q := by
  rw [extensionPrimeEq523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 541 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime541 :
    supportQrMaskWords 541 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        541).take 11 := by
  rfl

theorem baseSupportPrimeMem541 :
    541 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq541 :
    supportExtensionPrime 541 = 547 := by
  rfl

theorem extensionSemanticPrime541 :
    Nat.Prime (supportExtensionPrime 541) ∧
      541 < supportExtensionPrime 541 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        541 < q → supportExtensionPrime 541 ≤ q := by
  rw [extensionPrimeEq541]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 547 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime547 :
    supportQrMaskWords 547 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        547).take 11 := by
  rfl

theorem baseSupportPrimeMem547 :
    547 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq547 :
    supportExtensionPrime 547 = 557 := by
  rfl

theorem extensionSemanticPrime547 :
    Nat.Prime (supportExtensionPrime 547) ∧
      547 < supportExtensionPrime 547 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        547 < q → supportExtensionPrime 547 ≤ q := by
  rw [extensionPrimeEq547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 557 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0008
    {p : ℕ}
    (hLower : 464 ≤ p) (hUpper : p ≤ 547)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime467
  · exact maskSemanticPrime479
  · exact maskSemanticPrime487
  · exact maskSemanticPrime491
  · exact maskSemanticPrime499
  · exact maskSemanticPrime503
  · exact maskSemanticPrime509
  · exact maskSemanticPrime521
  · exact maskSemanticPrime523
  · exact maskSemanticPrime541
  · exact maskSemanticPrime547

theorem baseSupportPrimeMemGroup0008
    {p : ℕ}
    (hLower : 464 ≤ p) (hUpper : p ≤ 547)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem467
  · exact baseSupportPrimeMem479
  · exact baseSupportPrimeMem487
  · exact baseSupportPrimeMem491
  · exact baseSupportPrimeMem499
  · exact baseSupportPrimeMem503
  · exact baseSupportPrimeMem509
  · exact baseSupportPrimeMem521
  · exact baseSupportPrimeMem523
  · exact baseSupportPrimeMem541
  · exact baseSupportPrimeMem547

theorem extensionSemanticGroup0008
    {p : ℕ}
    (hLower : 464 ≤ p) (hUpper : p ≤ 547)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime467
  · exact extensionSemanticPrime479
  · exact extensionSemanticPrime487
  · exact extensionSemanticPrime491
  · exact extensionSemanticPrime499
  · exact extensionSemanticPrime503
  · exact extensionSemanticPrime509
  · exact extensionSemanticPrime521
  · exact extensionSemanticPrime523
  · exact extensionSemanticPrime541
  · exact extensionSemanticPrime547

end Erdos848.GeneratedTailGlobalPureSupportCoverage
