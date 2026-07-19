import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime271 :
    supportQrMaskWords 271 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        271).take 11 := by
  rfl

theorem baseSupportPrimeMem271 :
    271 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq271 :
    supportExtensionPrime 271 = 277 := by
  rfl

theorem extensionSemanticPrime271 :
    Nat.Prime (supportExtensionPrime 271) ∧
      271 < supportExtensionPrime 271 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        271 < q → supportExtensionPrime 271 ≤ q := by
  rw [extensionPrimeEq271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 277 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime277 :
    supportQrMaskWords 277 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        277).take 11 := by
  rfl

theorem baseSupportPrimeMem277 :
    277 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq277 :
    supportExtensionPrime 277 = 281 := by
  rfl

theorem extensionSemanticPrime277 :
    Nat.Prime (supportExtensionPrime 277) ∧
      277 < supportExtensionPrime 277 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        277 < q → supportExtensionPrime 277 ≤ q := by
  rw [extensionPrimeEq277]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 281 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime281 :
    supportQrMaskWords 281 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        281).take 11 := by
  rfl

theorem baseSupportPrimeMem281 :
    281 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq281 :
    supportExtensionPrime 281 = 283 := by
  rfl

theorem extensionSemanticPrime281 :
    Nat.Prime (supportExtensionPrime 281) ∧
      281 < supportExtensionPrime 281 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        281 < q → supportExtensionPrime 281 ≤ q := by
  rw [extensionPrimeEq281]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 283 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime283 :
    supportQrMaskWords 283 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        283).take 11 := by
  rfl

theorem baseSupportPrimeMem283 :
    283 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq283 :
    supportExtensionPrime 283 = 293 := by
  rfl

theorem extensionSemanticPrime283 :
    Nat.Prime (supportExtensionPrime 283) ∧
      283 < supportExtensionPrime 283 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        283 < q → supportExtensionPrime 283 ≤ q := by
  rw [extensionPrimeEq283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 293 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime293 :
    supportQrMaskWords 293 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        293).take 11 := by
  rfl

theorem baseSupportPrimeMem293 :
    293 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq293 :
    supportExtensionPrime 293 = 307 := by
  rfl

theorem extensionSemanticPrime293 :
    Nat.Prime (supportExtensionPrime 293) ∧
      293 < supportExtensionPrime 293 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        293 < q → supportExtensionPrime 293 ≤ q := by
  rw [extensionPrimeEq293]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 307 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime307 :
    supportQrMaskWords 307 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        307).take 11 := by
  rfl

theorem baseSupportPrimeMem307 :
    307 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq307 :
    supportExtensionPrime 307 = 311 := by
  rfl

theorem extensionSemanticPrime307 :
    Nat.Prime (supportExtensionPrime 307) ∧
      307 < supportExtensionPrime 307 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        307 < q → supportExtensionPrime 307 ≤ q := by
  rw [extensionPrimeEq307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 311 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime311 :
    supportQrMaskWords 311 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        311).take 11 := by
  rfl

theorem baseSupportPrimeMem311 :
    311 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq311 :
    supportExtensionPrime 311 = 313 := by
  rfl

theorem extensionSemanticPrime311 :
    Nat.Prime (supportExtensionPrime 311) ∧
      311 < supportExtensionPrime 311 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        311 < q → supportExtensionPrime 311 ≤ q := by
  rw [extensionPrimeEq311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 313 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime313 :
    supportQrMaskWords 313 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        313).take 11 := by
  rfl

theorem baseSupportPrimeMem313 :
    313 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq313 :
    supportExtensionPrime 313 = 317 := by
  rfl

theorem extensionSemanticPrime313 :
    Nat.Prime (supportExtensionPrime 313) ∧
      313 < supportExtensionPrime 313 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        313 < q → supportExtensionPrime 313 ≤ q := by
  rw [extensionPrimeEq313]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 317 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime317 :
    supportQrMaskWords 317 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        317).take 11 := by
  rfl

theorem baseSupportPrimeMem317 :
    317 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq317 :
    supportExtensionPrime 317 = 331 := by
  rfl

theorem extensionSemanticPrime317 :
    Nat.Prime (supportExtensionPrime 317) ∧
      317 < supportExtensionPrime 317 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        317 < q → supportExtensionPrime 317 ≤ q := by
  rw [extensionPrimeEq317]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 331 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime331 :
    supportQrMaskWords 331 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        331).take 11 := by
  rfl

theorem baseSupportPrimeMem331 :
    331 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq331 :
    supportExtensionPrime 331 = 337 := by
  rfl

theorem extensionSemanticPrime331 :
    Nat.Prime (supportExtensionPrime 331) ∧
      331 < supportExtensionPrime 331 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        331 < q → supportExtensionPrime 331 ≤ q := by
  rw [extensionPrimeEq331]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 337 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime337 :
    supportQrMaskWords 337 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        337).take 11 := by
  rfl

theorem baseSupportPrimeMem337 :
    337 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq337 :
    supportExtensionPrime 337 = 347 := by
  rfl

theorem extensionSemanticPrime337 :
    Nat.Prime (supportExtensionPrime 337) ∧
      337 < supportExtensionPrime 337 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        337 < q → supportExtensionPrime 337 ≤ q := by
  rw [extensionPrimeEq337]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 347 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0005
    {p : ℕ}
    (hLower : 270 ≤ p) (hUpper : p ≤ 337)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime271
  · exact maskSemanticPrime277
  · exact maskSemanticPrime281
  · exact maskSemanticPrime283
  · exact maskSemanticPrime293
  · exact maskSemanticPrime307
  · exact maskSemanticPrime311
  · exact maskSemanticPrime313
  · exact maskSemanticPrime317
  · exact maskSemanticPrime331
  · exact maskSemanticPrime337

theorem baseSupportPrimeMemGroup0005
    {p : ℕ}
    (hLower : 270 ≤ p) (hUpper : p ≤ 337)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem271
  · exact baseSupportPrimeMem277
  · exact baseSupportPrimeMem281
  · exact baseSupportPrimeMem283
  · exact baseSupportPrimeMem293
  · exact baseSupportPrimeMem307
  · exact baseSupportPrimeMem311
  · exact baseSupportPrimeMem313
  · exact baseSupportPrimeMem317
  · exact baseSupportPrimeMem331
  · exact baseSupportPrimeMem337

theorem extensionSemanticGroup0005
    {p : ℕ}
    (hLower : 270 ≤ p) (hUpper : p ≤ 337)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime271
  · exact extensionSemanticPrime277
  · exact extensionSemanticPrime281
  · exact extensionSemanticPrime283
  · exact extensionSemanticPrime293
  · exact extensionSemanticPrime307
  · exact extensionSemanticPrime311
  · exact extensionSemanticPrime313
  · exact extensionSemanticPrime317
  · exact extensionSemanticPrime331
  · exact extensionSemanticPrime337

end Erdos848.GeneratedTailGlobalPureSupportCoverage
