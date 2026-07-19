import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2239 :
    supportQrMaskWords 2239 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2239).take 11 := by
  rfl

theorem baseSupportPrimeMem2239 :
    2239 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2239 :
    supportExtensionPrime 2239 = 2243 := by
  rfl

theorem extensionSemanticPrime2239 :
    Nat.Prime (supportExtensionPrime 2239) ∧
      2239 < supportExtensionPrime 2239 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2239 < q → supportExtensionPrime 2239 ≤ q := by
  rw [extensionPrimeEq2239]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2243 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2243 :
    supportQrMaskWords 2243 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2243).take 11 := by
  rfl

theorem baseSupportPrimeMem2243 :
    2243 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2243 :
    supportExtensionPrime 2243 = 2251 := by
  rfl

theorem extensionSemanticPrime2243 :
    Nat.Prime (supportExtensionPrime 2243) ∧
      2243 < supportExtensionPrime 2243 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2243 < q → supportExtensionPrime 2243 ≤ q := by
  rw [extensionPrimeEq2243]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2251 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2251 :
    supportQrMaskWords 2251 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2251).take 11 := by
  rfl

theorem baseSupportPrimeMem2251 :
    2251 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2251 :
    supportExtensionPrime 2251 = 2267 := by
  rfl

theorem extensionSemanticPrime2251 :
    Nat.Prime (supportExtensionPrime 2251) ∧
      2251 < supportExtensionPrime 2251 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2251 < q → supportExtensionPrime 2251 ≤ q := by
  rw [extensionPrimeEq2251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2267 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2267 :
    supportQrMaskWords 2267 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2267).take 11 := by
  rfl

theorem baseSupportPrimeMem2267 :
    2267 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2267 :
    supportExtensionPrime 2267 = 2269 := by
  rfl

theorem extensionSemanticPrime2267 :
    Nat.Prime (supportExtensionPrime 2267) ∧
      2267 < supportExtensionPrime 2267 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2267 < q → supportExtensionPrime 2267 ≤ q := by
  rw [extensionPrimeEq2267]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2269 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2269 :
    supportQrMaskWords 2269 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2269).take 11 := by
  rfl

theorem baseSupportPrimeMem2269 :
    2269 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2269 :
    supportExtensionPrime 2269 = 2273 := by
  rfl

theorem extensionSemanticPrime2269 :
    Nat.Prime (supportExtensionPrime 2269) ∧
      2269 < supportExtensionPrime 2269 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2269 < q → supportExtensionPrime 2269 ≤ q := by
  rw [extensionPrimeEq2269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2273 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2273 :
    supportQrMaskWords 2273 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2273).take 11 := by
  rfl

theorem baseSupportPrimeMem2273 :
    2273 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2273 :
    supportExtensionPrime 2273 = 2281 := by
  rfl

theorem extensionSemanticPrime2273 :
    Nat.Prime (supportExtensionPrime 2273) ∧
      2273 < supportExtensionPrime 2273 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2273 < q → supportExtensionPrime 2273 ≤ q := by
  rw [extensionPrimeEq2273]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2281 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2281 :
    supportQrMaskWords 2281 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2281).take 11 := by
  rfl

theorem baseSupportPrimeMem2281 :
    2281 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2281 :
    supportExtensionPrime 2281 = 2287 := by
  rfl

theorem extensionSemanticPrime2281 :
    Nat.Prime (supportExtensionPrime 2281) ∧
      2281 < supportExtensionPrime 2281 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2281 < q → supportExtensionPrime 2281 ≤ q := by
  rw [extensionPrimeEq2281]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2287 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2287 :
    supportQrMaskWords 2287 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2287).take 11 := by
  rfl

theorem baseSupportPrimeMem2287 :
    2287 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2287 :
    supportExtensionPrime 2287 = 2293 := by
  rfl

theorem extensionSemanticPrime2287 :
    Nat.Prime (supportExtensionPrime 2287) ∧
      2287 < supportExtensionPrime 2287 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2287 < q → supportExtensionPrime 2287 ≤ q := by
  rw [extensionPrimeEq2287]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2293 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2293 :
    supportQrMaskWords 2293 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2293).take 11 := by
  rfl

theorem baseSupportPrimeMem2293 :
    2293 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2293 :
    supportExtensionPrime 2293 = 2297 := by
  rfl

theorem extensionSemanticPrime2293 :
    Nat.Prime (supportExtensionPrime 2293) ∧
      2293 < supportExtensionPrime 2293 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2293 < q → supportExtensionPrime 2293 ≤ q := by
  rw [extensionPrimeEq2293]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2297 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2297 :
    supportQrMaskWords 2297 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2297).take 11 := by
  rfl

theorem baseSupportPrimeMem2297 :
    2297 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2297 :
    supportExtensionPrime 2297 = 2309 := by
  rfl

theorem extensionSemanticPrime2297 :
    Nat.Prime (supportExtensionPrime 2297) ∧
      2297 < supportExtensionPrime 2297 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2297 < q → supportExtensionPrime 2297 ≤ q := by
  rw [extensionPrimeEq2297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2309 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2309 :
    supportQrMaskWords 2309 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2309).take 11 := by
  rfl

theorem baseSupportPrimeMem2309 :
    2309 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2309 :
    supportExtensionPrime 2309 = 2311 := by
  rfl

theorem extensionSemanticPrime2309 :
    Nat.Prime (supportExtensionPrime 2309) ∧
      2309 < supportExtensionPrime 2309 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2309 < q → supportExtensionPrime 2309 ≤ q := by
  rw [extensionPrimeEq2309]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2311 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0030
    {p : ℕ}
    (hLower : 2238 ≤ p) (hUpper : p ≤ 2309)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2239
  · exact maskSemanticPrime2243
  · exact maskSemanticPrime2251
  · exact maskSemanticPrime2267
  · exact maskSemanticPrime2269
  · exact maskSemanticPrime2273
  · exact maskSemanticPrime2281
  · exact maskSemanticPrime2287
  · exact maskSemanticPrime2293
  · exact maskSemanticPrime2297
  · exact maskSemanticPrime2309

theorem baseSupportPrimeMemGroup0030
    {p : ℕ}
    (hLower : 2238 ≤ p) (hUpper : p ≤ 2309)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2239
  · exact baseSupportPrimeMem2243
  · exact baseSupportPrimeMem2251
  · exact baseSupportPrimeMem2267
  · exact baseSupportPrimeMem2269
  · exact baseSupportPrimeMem2273
  · exact baseSupportPrimeMem2281
  · exact baseSupportPrimeMem2287
  · exact baseSupportPrimeMem2293
  · exact baseSupportPrimeMem2297
  · exact baseSupportPrimeMem2309

theorem extensionSemanticGroup0030
    {p : ℕ}
    (hLower : 2238 ≤ p) (hUpper : p ≤ 2309)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2239
  · exact extensionSemanticPrime2243
  · exact extensionSemanticPrime2251
  · exact extensionSemanticPrime2267
  · exact extensionSemanticPrime2269
  · exact extensionSemanticPrime2273
  · exact extensionSemanticPrime2281
  · exact extensionSemanticPrime2287
  · exact extensionSemanticPrime2293
  · exact extensionSemanticPrime2297
  · exact extensionSemanticPrime2309

end Erdos848.GeneratedTailGlobalPureSupportCoverage
