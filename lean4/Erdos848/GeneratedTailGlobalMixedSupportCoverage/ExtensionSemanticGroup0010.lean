import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0010 : List ℕ :=
  [2137, 2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381]

theorem mixedExtensionPrimeEq2137 :
    mixedSupportExtensionPrime 2137 = 2141 := by
  rfl

theorem mixedExtensionSemanticPrime2137 :
    Nat.Prime (mixedSupportExtensionPrime 2137) ∧
      2137 < mixedSupportExtensionPrime 2137 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2137 < candidate →
        mixedSupportExtensionPrime 2137 ≤ candidate := by
  rw [mixedExtensionPrimeEq2137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2141 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2141 :
    mixedSupportExtensionPrime 2141 = 2143 := by
  rfl

theorem mixedExtensionSemanticPrime2141 :
    Nat.Prime (mixedSupportExtensionPrime 2141) ∧
      2141 < mixedSupportExtensionPrime 2141 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2141 < candidate →
        mixedSupportExtensionPrime 2141 ≤ candidate := by
  rw [mixedExtensionPrimeEq2141]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2143 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2143 :
    mixedSupportExtensionPrime 2143 = 2153 := by
  rfl

theorem mixedExtensionSemanticPrime2143 :
    Nat.Prime (mixedSupportExtensionPrime 2143) ∧
      2143 < mixedSupportExtensionPrime 2143 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2143 < candidate →
        mixedSupportExtensionPrime 2143 ≤ candidate := by
  rw [mixedExtensionPrimeEq2143]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2153 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2153 :
    mixedSupportExtensionPrime 2153 = 2161 := by
  rfl

theorem mixedExtensionSemanticPrime2153 :
    Nat.Prime (mixedSupportExtensionPrime 2153) ∧
      2153 < mixedSupportExtensionPrime 2153 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2153 < candidate →
        mixedSupportExtensionPrime 2153 ≤ candidate := by
  rw [mixedExtensionPrimeEq2153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2161 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2161 :
    mixedSupportExtensionPrime 2161 = 2179 := by
  rfl

theorem mixedExtensionSemanticPrime2161 :
    Nat.Prime (mixedSupportExtensionPrime 2161) ∧
      2161 < mixedSupportExtensionPrime 2161 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2161 < candidate →
        mixedSupportExtensionPrime 2161 ≤ candidate := by
  rw [mixedExtensionPrimeEq2161]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2179 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2179 :
    mixedSupportExtensionPrime 2179 = 2203 := by
  rfl

theorem mixedExtensionSemanticPrime2179 :
    Nat.Prime (mixedSupportExtensionPrime 2179) ∧
      2179 < mixedSupportExtensionPrime 2179 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2179 < candidate →
        mixedSupportExtensionPrime 2179 ≤ candidate := by
  rw [mixedExtensionPrimeEq2179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2203 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2203 :
    mixedSupportExtensionPrime 2203 = 2207 := by
  rfl

theorem mixedExtensionSemanticPrime2203 :
    Nat.Prime (mixedSupportExtensionPrime 2203) ∧
      2203 < mixedSupportExtensionPrime 2203 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2203 < candidate →
        mixedSupportExtensionPrime 2203 ≤ candidate := by
  rw [mixedExtensionPrimeEq2203]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2207 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2207 :
    mixedSupportExtensionPrime 2207 = 2213 := by
  rfl

theorem mixedExtensionSemanticPrime2207 :
    Nat.Prime (mixedSupportExtensionPrime 2207) ∧
      2207 < mixedSupportExtensionPrime 2207 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2207 < candidate →
        mixedSupportExtensionPrime 2207 ≤ candidate := by
  rw [mixedExtensionPrimeEq2207]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2213 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2213 :
    mixedSupportExtensionPrime 2213 = 2221 := by
  rfl

theorem mixedExtensionSemanticPrime2213 :
    Nat.Prime (mixedSupportExtensionPrime 2213) ∧
      2213 < mixedSupportExtensionPrime 2213 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2213 < candidate →
        mixedSupportExtensionPrime 2213 ≤ candidate := by
  rw [mixedExtensionPrimeEq2213]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2221 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2221 :
    mixedSupportExtensionPrime 2221 = 2237 := by
  rfl

theorem mixedExtensionSemanticPrime2221 :
    Nat.Prime (mixedSupportExtensionPrime 2221) ∧
      2221 < mixedSupportExtensionPrime 2221 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2221 < candidate →
        mixedSupportExtensionPrime 2221 ≤ candidate := by
  rw [mixedExtensionPrimeEq2221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2237 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2237 :
    mixedSupportExtensionPrime 2237 = 2239 := by
  rfl

theorem mixedExtensionSemanticPrime2237 :
    Nat.Prime (mixedSupportExtensionPrime 2237) ∧
      2237 < mixedSupportExtensionPrime 2237 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2237 < candidate →
        mixedSupportExtensionPrime 2237 ≤ candidate := by
  rw [mixedExtensionPrimeEq2237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2239 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2239 :
    mixedSupportExtensionPrime 2239 = 2243 := by
  rfl

theorem mixedExtensionSemanticPrime2239 :
    Nat.Prime (mixedSupportExtensionPrime 2239) ∧
      2239 < mixedSupportExtensionPrime 2239 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2239 < candidate →
        mixedSupportExtensionPrime 2239 ≤ candidate := by
  rw [mixedExtensionPrimeEq2239]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2243 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2243 :
    mixedSupportExtensionPrime 2243 = 2251 := by
  rfl

theorem mixedExtensionSemanticPrime2243 :
    Nat.Prime (mixedSupportExtensionPrime 2243) ∧
      2243 < mixedSupportExtensionPrime 2243 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2243 < candidate →
        mixedSupportExtensionPrime 2243 ≤ candidate := by
  rw [mixedExtensionPrimeEq2243]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2251 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2251 :
    mixedSupportExtensionPrime 2251 = 2267 := by
  rfl

theorem mixedExtensionSemanticPrime2251 :
    Nat.Prime (mixedSupportExtensionPrime 2251) ∧
      2251 < mixedSupportExtensionPrime 2251 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2251 < candidate →
        mixedSupportExtensionPrime 2251 ≤ candidate := by
  rw [mixedExtensionPrimeEq2251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2267 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2267 :
    mixedSupportExtensionPrime 2267 = 2269 := by
  rfl

theorem mixedExtensionSemanticPrime2267 :
    Nat.Prime (mixedSupportExtensionPrime 2267) ∧
      2267 < mixedSupportExtensionPrime 2267 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2267 < candidate →
        mixedSupportExtensionPrime 2267 ≤ candidate := by
  rw [mixedExtensionPrimeEq2267]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2269 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2269 :
    mixedSupportExtensionPrime 2269 = 2273 := by
  rfl

theorem mixedExtensionSemanticPrime2269 :
    Nat.Prime (mixedSupportExtensionPrime 2269) ∧
      2269 < mixedSupportExtensionPrime 2269 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2269 < candidate →
        mixedSupportExtensionPrime 2269 ≤ candidate := by
  rw [mixedExtensionPrimeEq2269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2273 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2273 :
    mixedSupportExtensionPrime 2273 = 2281 := by
  rfl

theorem mixedExtensionSemanticPrime2273 :
    Nat.Prime (mixedSupportExtensionPrime 2273) ∧
      2273 < mixedSupportExtensionPrime 2273 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2273 < candidate →
        mixedSupportExtensionPrime 2273 ≤ candidate := by
  rw [mixedExtensionPrimeEq2273]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2281 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2281 :
    mixedSupportExtensionPrime 2281 = 2287 := by
  rfl

theorem mixedExtensionSemanticPrime2281 :
    Nat.Prime (mixedSupportExtensionPrime 2281) ∧
      2281 < mixedSupportExtensionPrime 2281 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2281 < candidate →
        mixedSupportExtensionPrime 2281 ≤ candidate := by
  rw [mixedExtensionPrimeEq2281]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2287 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2287 :
    mixedSupportExtensionPrime 2287 = 2293 := by
  rfl

theorem mixedExtensionSemanticPrime2287 :
    Nat.Prime (mixedSupportExtensionPrime 2287) ∧
      2287 < mixedSupportExtensionPrime 2287 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2287 < candidate →
        mixedSupportExtensionPrime 2287 ≤ candidate := by
  rw [mixedExtensionPrimeEq2287]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2293 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2293 :
    mixedSupportExtensionPrime 2293 = 2297 := by
  rfl

theorem mixedExtensionSemanticPrime2293 :
    Nat.Prime (mixedSupportExtensionPrime 2293) ∧
      2293 < mixedSupportExtensionPrime 2293 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2293 < candidate →
        mixedSupportExtensionPrime 2293 ≤ candidate := by
  rw [mixedExtensionPrimeEq2293]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2297 :
    mixedSupportExtensionPrime 2297 = 2309 := by
  rfl

theorem mixedExtensionSemanticPrime2297 :
    Nat.Prime (mixedSupportExtensionPrime 2297) ∧
      2297 < mixedSupportExtensionPrime 2297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2297 < candidate →
        mixedSupportExtensionPrime 2297 ≤ candidate := by
  rw [mixedExtensionPrimeEq2297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2309 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2309 :
    mixedSupportExtensionPrime 2309 = 2311 := by
  rfl

theorem mixedExtensionSemanticPrime2309 :
    Nat.Prime (mixedSupportExtensionPrime 2309) ∧
      2309 < mixedSupportExtensionPrime 2309 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2309 < candidate →
        mixedSupportExtensionPrime 2309 ≤ candidate := by
  rw [mixedExtensionPrimeEq2309]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2311 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2311 :
    mixedSupportExtensionPrime 2311 = 2333 := by
  rfl

theorem mixedExtensionSemanticPrime2311 :
    Nat.Prime (mixedSupportExtensionPrime 2311) ∧
      2311 < mixedSupportExtensionPrime 2311 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2311 < candidate →
        mixedSupportExtensionPrime 2311 ≤ candidate := by
  rw [mixedExtensionPrimeEq2311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2333 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2333 :
    mixedSupportExtensionPrime 2333 = 2339 := by
  rfl

theorem mixedExtensionSemanticPrime2333 :
    Nat.Prime (mixedSupportExtensionPrime 2333) ∧
      2333 < mixedSupportExtensionPrime 2333 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2333 < candidate →
        mixedSupportExtensionPrime 2333 ≤ candidate := by
  rw [mixedExtensionPrimeEq2333]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2339 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2339 :
    mixedSupportExtensionPrime 2339 = 2341 := by
  rfl

theorem mixedExtensionSemanticPrime2339 :
    Nat.Prime (mixedSupportExtensionPrime 2339) ∧
      2339 < mixedSupportExtensionPrime 2339 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2339 < candidate →
        mixedSupportExtensionPrime 2339 ≤ candidate := by
  rw [mixedExtensionPrimeEq2339]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2341 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2341 :
    mixedSupportExtensionPrime 2341 = 2347 := by
  rfl

theorem mixedExtensionSemanticPrime2341 :
    Nat.Prime (mixedSupportExtensionPrime 2341) ∧
      2341 < mixedSupportExtensionPrime 2341 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2341 < candidate →
        mixedSupportExtensionPrime 2341 ≤ candidate := by
  rw [mixedExtensionPrimeEq2341]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2347 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2347 :
    mixedSupportExtensionPrime 2347 = 2351 := by
  rfl

theorem mixedExtensionSemanticPrime2347 :
    Nat.Prime (mixedSupportExtensionPrime 2347) ∧
      2347 < mixedSupportExtensionPrime 2347 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2347 < candidate →
        mixedSupportExtensionPrime 2347 ≤ candidate := by
  rw [mixedExtensionPrimeEq2347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2351 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2351 :
    mixedSupportExtensionPrime 2351 = 2357 := by
  rfl

theorem mixedExtensionSemanticPrime2351 :
    Nat.Prime (mixedSupportExtensionPrime 2351) ∧
      2351 < mixedSupportExtensionPrime 2351 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2351 < candidate →
        mixedSupportExtensionPrime 2351 ≤ candidate := by
  rw [mixedExtensionPrimeEq2351]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2357 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2357 :
    mixedSupportExtensionPrime 2357 = 2371 := by
  rfl

theorem mixedExtensionSemanticPrime2357 :
    Nat.Prime (mixedSupportExtensionPrime 2357) ∧
      2357 < mixedSupportExtensionPrime 2357 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2357 < candidate →
        mixedSupportExtensionPrime 2357 ≤ candidate := by
  rw [mixedExtensionPrimeEq2357]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2371 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2371 :
    mixedSupportExtensionPrime 2371 = 2377 := by
  rfl

theorem mixedExtensionSemanticPrime2371 :
    Nat.Prime (mixedSupportExtensionPrime 2371) ∧
      2371 < mixedSupportExtensionPrime 2371 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2371 < candidate →
        mixedSupportExtensionPrime 2371 ≤ candidate := by
  rw [mixedExtensionPrimeEq2371]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2377 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2377 :
    mixedSupportExtensionPrime 2377 = 2381 := by
  rfl

theorem mixedExtensionSemanticPrime2377 :
    Nat.Prime (mixedSupportExtensionPrime 2377) ∧
      2377 < mixedSupportExtensionPrime 2377 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2377 < candidate →
        mixedSupportExtensionPrime 2377 ≤ candidate := by
  rw [mixedExtensionPrimeEq2377]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2381 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2381 :
    mixedSupportExtensionPrime 2381 = 2383 := by
  rfl

theorem mixedExtensionSemanticPrime2381 :
    Nat.Prime (mixedSupportExtensionPrime 2381) ∧
      2381 < mixedSupportExtensionPrime 2381 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2381 < candidate →
        mixedSupportExtensionPrime 2381 ≤ candidate := by
  rw [mixedExtensionPrimeEq2381]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2383 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0010_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0010) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0010, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime2137
  · exact mixedExtensionSemanticPrime2141
  · exact mixedExtensionSemanticPrime2143
  · exact mixedExtensionSemanticPrime2153
  · exact mixedExtensionSemanticPrime2161
  · exact mixedExtensionSemanticPrime2179
  · exact mixedExtensionSemanticPrime2203
  · exact mixedExtensionSemanticPrime2207
  · exact mixedExtensionSemanticPrime2213
  · exact mixedExtensionSemanticPrime2221
  · exact mixedExtensionSemanticPrime2237
  · exact mixedExtensionSemanticPrime2239
  · exact mixedExtensionSemanticPrime2243
  · exact mixedExtensionSemanticPrime2251
  · exact mixedExtensionSemanticPrime2267
  · exact mixedExtensionSemanticPrime2269
  · exact mixedExtensionSemanticPrime2273
  · exact mixedExtensionSemanticPrime2281
  · exact mixedExtensionSemanticPrime2287
  · exact mixedExtensionSemanticPrime2293
  · exact mixedExtensionSemanticPrime2297
  · exact mixedExtensionSemanticPrime2309
  · exact mixedExtensionSemanticPrime2311
  · exact mixedExtensionSemanticPrime2333
  · exact mixedExtensionSemanticPrime2339
  · exact mixedExtensionSemanticPrime2341
  · exact mixedExtensionSemanticPrime2347
  · exact mixedExtensionSemanticPrime2351
  · exact mixedExtensionSemanticPrime2357
  · exact mixedExtensionSemanticPrime2371
  · exact mixedExtensionSemanticPrime2377
  · exact mixedExtensionSemanticPrime2381

#print axioms mixedExtensionSemanticInputs0010_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
