import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3209 :
    supportQrMaskWords 3209 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3209).take 11 := by
  rfl

theorem baseSupportPrimeMem3209 :
    3209 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3209 :
    supportExtensionPrime 3209 = 3217 := by
  rfl

theorem extensionSemanticPrime3209 :
    Nat.Prime (supportExtensionPrime 3209) ∧
      3209 < supportExtensionPrime 3209 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3209 < q → supportExtensionPrime 3209 ≤ q := by
  rw [extensionPrimeEq3209]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3217 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3217 :
    supportQrMaskWords 3217 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3217).take 11 := by
  rfl

theorem baseSupportPrimeMem3217 :
    3217 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3217 :
    supportExtensionPrime 3217 = 3221 := by
  rfl

theorem extensionSemanticPrime3217 :
    Nat.Prime (supportExtensionPrime 3217) ∧
      3217 < supportExtensionPrime 3217 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3217 < q → supportExtensionPrime 3217 ≤ q := by
  rw [extensionPrimeEq3217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3221 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3221 :
    supportQrMaskWords 3221 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3221).take 11 := by
  rfl

theorem baseSupportPrimeMem3221 :
    3221 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3221 :
    supportExtensionPrime 3221 = 3229 := by
  rfl

theorem extensionSemanticPrime3221 :
    Nat.Prime (supportExtensionPrime 3221) ∧
      3221 < supportExtensionPrime 3221 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3221 < q → supportExtensionPrime 3221 ≤ q := by
  rw [extensionPrimeEq3221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3229 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3229 :
    supportQrMaskWords 3229 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3229).take 11 := by
  rfl

theorem baseSupportPrimeMem3229 :
    3229 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3229 :
    supportExtensionPrime 3229 = 3251 := by
  rfl

theorem extensionSemanticPrime3229 :
    Nat.Prime (supportExtensionPrime 3229) ∧
      3229 < supportExtensionPrime 3229 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3229 < q → supportExtensionPrime 3229 ≤ q := by
  rw [extensionPrimeEq3229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3251 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3251 :
    supportQrMaskWords 3251 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3251).take 11 := by
  rfl

theorem baseSupportPrimeMem3251 :
    3251 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3251 :
    supportExtensionPrime 3251 = 3253 := by
  rfl

theorem extensionSemanticPrime3251 :
    Nat.Prime (supportExtensionPrime 3251) ∧
      3251 < supportExtensionPrime 3251 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3251 < q → supportExtensionPrime 3251 ≤ q := by
  rw [extensionPrimeEq3251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3253 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3253 :
    supportQrMaskWords 3253 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3253).take 11 := by
  rfl

theorem baseSupportPrimeMem3253 :
    3253 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3253 :
    supportExtensionPrime 3253 = 3257 := by
  rfl

theorem extensionSemanticPrime3253 :
    Nat.Prime (supportExtensionPrime 3253) ∧
      3253 < supportExtensionPrime 3253 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3253 < q → supportExtensionPrime 3253 ≤ q := by
  rw [extensionPrimeEq3253]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3257 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3257 :
    supportQrMaskWords 3257 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3257).take 11 := by
  rfl

theorem baseSupportPrimeMem3257 :
    3257 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3257 :
    supportExtensionPrime 3257 = 3259 := by
  rfl

theorem extensionSemanticPrime3257 :
    Nat.Prime (supportExtensionPrime 3257) ∧
      3257 < supportExtensionPrime 3257 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3257 < q → supportExtensionPrime 3257 ≤ q := by
  rw [extensionPrimeEq3257]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3259 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3259 :
    supportQrMaskWords 3259 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3259).take 11 := by
  rfl

theorem baseSupportPrimeMem3259 :
    3259 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3259 :
    supportExtensionPrime 3259 = 3271 := by
  rfl

theorem extensionSemanticPrime3259 :
    Nat.Prime (supportExtensionPrime 3259) ∧
      3259 < supportExtensionPrime 3259 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3259 < q → supportExtensionPrime 3259 ≤ q := by
  rw [extensionPrimeEq3259]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3271 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3271 :
    supportQrMaskWords 3271 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3271).take 11 := by
  rfl

theorem baseSupportPrimeMem3271 :
    3271 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3271 :
    supportExtensionPrime 3271 = 3299 := by
  rfl

theorem extensionSemanticPrime3271 :
    Nat.Prime (supportExtensionPrime 3271) ∧
      3271 < supportExtensionPrime 3271 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3271 < q → supportExtensionPrime 3271 ≤ q := by
  rw [extensionPrimeEq3271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3299 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3299 :
    supportQrMaskWords 3299 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3299).take 11 := by
  rfl

theorem baseSupportPrimeMem3299 :
    3299 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3299 :
    supportExtensionPrime 3299 = 3301 := by
  rfl

theorem extensionSemanticPrime3299 :
    Nat.Prime (supportExtensionPrime 3299) ∧
      3299 < supportExtensionPrime 3299 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3299 < q → supportExtensionPrime 3299 ≤ q := by
  rw [extensionPrimeEq3299]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3301 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3301 :
    supportQrMaskWords 3301 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3301).take 11 := by
  rfl

theorem baseSupportPrimeMem3301 :
    3301 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3301 :
    supportExtensionPrime 3301 = 3307 := by
  rfl

theorem extensionSemanticPrime3301 :
    Nat.Prime (supportExtensionPrime 3301) ∧
      3301 < supportExtensionPrime 3301 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3301 < q → supportExtensionPrime 3301 ≤ q := by
  rw [extensionPrimeEq3301]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3307 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0041
    {p : ℕ}
    (hLower : 3204 ≤ p) (hUpper : p ≤ 3301)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3209
  · exact maskSemanticPrime3217
  · exact maskSemanticPrime3221
  · exact maskSemanticPrime3229
  · exact maskSemanticPrime3251
  · exact maskSemanticPrime3253
  · exact maskSemanticPrime3257
  · exact maskSemanticPrime3259
  · exact maskSemanticPrime3271
  · exact maskSemanticPrime3299
  · exact maskSemanticPrime3301

theorem baseSupportPrimeMemGroup0041
    {p : ℕ}
    (hLower : 3204 ≤ p) (hUpper : p ≤ 3301)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3209
  · exact baseSupportPrimeMem3217
  · exact baseSupportPrimeMem3221
  · exact baseSupportPrimeMem3229
  · exact baseSupportPrimeMem3251
  · exact baseSupportPrimeMem3253
  · exact baseSupportPrimeMem3257
  · exact baseSupportPrimeMem3259
  · exact baseSupportPrimeMem3271
  · exact baseSupportPrimeMem3299
  · exact baseSupportPrimeMem3301

theorem extensionSemanticGroup0041
    {p : ℕ}
    (hLower : 3204 ≤ p) (hUpper : p ≤ 3301)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3209
  · exact extensionSemanticPrime3217
  · exact extensionSemanticPrime3221
  · exact extensionSemanticPrime3229
  · exact extensionSemanticPrime3251
  · exact extensionSemanticPrime3253
  · exact extensionSemanticPrime3257
  · exact extensionSemanticPrime3259
  · exact extensionSemanticPrime3271
  · exact extensionSemanticPrime3299
  · exact extensionSemanticPrime3301

end Erdos848.GeneratedTailGlobalPureSupportCoverage
