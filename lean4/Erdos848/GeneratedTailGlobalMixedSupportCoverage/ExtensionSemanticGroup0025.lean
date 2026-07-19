import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0025 : List ℕ :=
  [6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389]

theorem mixedExtensionPrimeEq6151 :
    mixedSupportExtensionPrime 6151 = 6163 := by
  rfl

theorem mixedExtensionSemanticPrime6151 :
    Nat.Prime (mixedSupportExtensionPrime 6151) ∧
      6151 < mixedSupportExtensionPrime 6151 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6151 < candidate →
        mixedSupportExtensionPrime 6151 ≤ candidate := by
  rw [mixedExtensionPrimeEq6151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6163 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6163 :
    mixedSupportExtensionPrime 6163 = 6173 := by
  rfl

theorem mixedExtensionSemanticPrime6163 :
    Nat.Prime (mixedSupportExtensionPrime 6163) ∧
      6163 < mixedSupportExtensionPrime 6163 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6163 < candidate →
        mixedSupportExtensionPrime 6163 ≤ candidate := by
  rw [mixedExtensionPrimeEq6163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6173 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6173 :
    mixedSupportExtensionPrime 6173 = 6197 := by
  rfl

theorem mixedExtensionSemanticPrime6173 :
    Nat.Prime (mixedSupportExtensionPrime 6173) ∧
      6173 < mixedSupportExtensionPrime 6173 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6173 < candidate →
        mixedSupportExtensionPrime 6173 ≤ candidate := by
  rw [mixedExtensionPrimeEq6173]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6197 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6197 :
    mixedSupportExtensionPrime 6197 = 6199 := by
  rfl

theorem mixedExtensionSemanticPrime6197 :
    Nat.Prime (mixedSupportExtensionPrime 6197) ∧
      6197 < mixedSupportExtensionPrime 6197 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6197 < candidate →
        mixedSupportExtensionPrime 6197 ≤ candidate := by
  rw [mixedExtensionPrimeEq6197]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6199 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6199 :
    mixedSupportExtensionPrime 6199 = 6203 := by
  rfl

theorem mixedExtensionSemanticPrime6199 :
    Nat.Prime (mixedSupportExtensionPrime 6199) ∧
      6199 < mixedSupportExtensionPrime 6199 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6199 < candidate →
        mixedSupportExtensionPrime 6199 ≤ candidate := by
  rw [mixedExtensionPrimeEq6199]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6203 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6203 :
    mixedSupportExtensionPrime 6203 = 6211 := by
  rfl

theorem mixedExtensionSemanticPrime6203 :
    Nat.Prime (mixedSupportExtensionPrime 6203) ∧
      6203 < mixedSupportExtensionPrime 6203 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6203 < candidate →
        mixedSupportExtensionPrime 6203 ≤ candidate := by
  rw [mixedExtensionPrimeEq6203]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6211 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6211 :
    mixedSupportExtensionPrime 6211 = 6217 := by
  rfl

theorem mixedExtensionSemanticPrime6211 :
    Nat.Prime (mixedSupportExtensionPrime 6211) ∧
      6211 < mixedSupportExtensionPrime 6211 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6211 < candidate →
        mixedSupportExtensionPrime 6211 ≤ candidate := by
  rw [mixedExtensionPrimeEq6211]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6217 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6217 :
    mixedSupportExtensionPrime 6217 = 6221 := by
  rfl

theorem mixedExtensionSemanticPrime6217 :
    Nat.Prime (mixedSupportExtensionPrime 6217) ∧
      6217 < mixedSupportExtensionPrime 6217 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6217 < candidate →
        mixedSupportExtensionPrime 6217 ≤ candidate := by
  rw [mixedExtensionPrimeEq6217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6221 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6221 :
    mixedSupportExtensionPrime 6221 = 6229 := by
  rfl

theorem mixedExtensionSemanticPrime6221 :
    Nat.Prime (mixedSupportExtensionPrime 6221) ∧
      6221 < mixedSupportExtensionPrime 6221 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6221 < candidate →
        mixedSupportExtensionPrime 6221 ≤ candidate := by
  rw [mixedExtensionPrimeEq6221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6229 :
    mixedSupportExtensionPrime 6229 = 6247 := by
  rfl

theorem mixedExtensionSemanticPrime6229 :
    Nat.Prime (mixedSupportExtensionPrime 6229) ∧
      6229 < mixedSupportExtensionPrime 6229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6229 < candidate →
        mixedSupportExtensionPrime 6229 ≤ candidate := by
  rw [mixedExtensionPrimeEq6229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6247 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6247 :
    mixedSupportExtensionPrime 6247 = 6257 := by
  rfl

theorem mixedExtensionSemanticPrime6247 :
    Nat.Prime (mixedSupportExtensionPrime 6247) ∧
      6247 < mixedSupportExtensionPrime 6247 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6247 < candidate →
        mixedSupportExtensionPrime 6247 ≤ candidate := by
  rw [mixedExtensionPrimeEq6247]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6257 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6257 :
    mixedSupportExtensionPrime 6257 = 6263 := by
  rfl

theorem mixedExtensionSemanticPrime6257 :
    Nat.Prime (mixedSupportExtensionPrime 6257) ∧
      6257 < mixedSupportExtensionPrime 6257 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6257 < candidate →
        mixedSupportExtensionPrime 6257 ≤ candidate := by
  rw [mixedExtensionPrimeEq6257]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6263 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6263 :
    mixedSupportExtensionPrime 6263 = 6269 := by
  rfl

theorem mixedExtensionSemanticPrime6263 :
    Nat.Prime (mixedSupportExtensionPrime 6263) ∧
      6263 < mixedSupportExtensionPrime 6263 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6263 < candidate →
        mixedSupportExtensionPrime 6263 ≤ candidate := by
  rw [mixedExtensionPrimeEq6263]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6269 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6269 :
    mixedSupportExtensionPrime 6269 = 6271 := by
  rfl

theorem mixedExtensionSemanticPrime6269 :
    Nat.Prime (mixedSupportExtensionPrime 6269) ∧
      6269 < mixedSupportExtensionPrime 6269 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6269 < candidate →
        mixedSupportExtensionPrime 6269 ≤ candidate := by
  rw [mixedExtensionPrimeEq6269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6271 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6271 :
    mixedSupportExtensionPrime 6271 = 6277 := by
  rfl

theorem mixedExtensionSemanticPrime6271 :
    Nat.Prime (mixedSupportExtensionPrime 6271) ∧
      6271 < mixedSupportExtensionPrime 6271 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6271 < candidate →
        mixedSupportExtensionPrime 6271 ≤ candidate := by
  rw [mixedExtensionPrimeEq6271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6277 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6277 :
    mixedSupportExtensionPrime 6277 = 6287 := by
  rfl

theorem mixedExtensionSemanticPrime6277 :
    Nat.Prime (mixedSupportExtensionPrime 6277) ∧
      6277 < mixedSupportExtensionPrime 6277 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6277 < candidate →
        mixedSupportExtensionPrime 6277 ≤ candidate := by
  rw [mixedExtensionPrimeEq6277]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6287 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6287 :
    mixedSupportExtensionPrime 6287 = 6299 := by
  rfl

theorem mixedExtensionSemanticPrime6287 :
    Nat.Prime (mixedSupportExtensionPrime 6287) ∧
      6287 < mixedSupportExtensionPrime 6287 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6287 < candidate →
        mixedSupportExtensionPrime 6287 ≤ candidate := by
  rw [mixedExtensionPrimeEq6287]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6299 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6299 :
    mixedSupportExtensionPrime 6299 = 6301 := by
  rfl

theorem mixedExtensionSemanticPrime6299 :
    Nat.Prime (mixedSupportExtensionPrime 6299) ∧
      6299 < mixedSupportExtensionPrime 6299 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6299 < candidate →
        mixedSupportExtensionPrime 6299 ≤ candidate := by
  rw [mixedExtensionPrimeEq6299]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6301 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6301 :
    mixedSupportExtensionPrime 6301 = 6311 := by
  rfl

theorem mixedExtensionSemanticPrime6301 :
    Nat.Prime (mixedSupportExtensionPrime 6301) ∧
      6301 < mixedSupportExtensionPrime 6301 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6301 < candidate →
        mixedSupportExtensionPrime 6301 ≤ candidate := by
  rw [mixedExtensionPrimeEq6301]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6311 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6311 :
    mixedSupportExtensionPrime 6311 = 6317 := by
  rfl

theorem mixedExtensionSemanticPrime6311 :
    Nat.Prime (mixedSupportExtensionPrime 6311) ∧
      6311 < mixedSupportExtensionPrime 6311 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6311 < candidate →
        mixedSupportExtensionPrime 6311 ≤ candidate := by
  rw [mixedExtensionPrimeEq6311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6317 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6317 :
    mixedSupportExtensionPrime 6317 = 6323 := by
  rfl

theorem mixedExtensionSemanticPrime6317 :
    Nat.Prime (mixedSupportExtensionPrime 6317) ∧
      6317 < mixedSupportExtensionPrime 6317 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6317 < candidate →
        mixedSupportExtensionPrime 6317 ≤ candidate := by
  rw [mixedExtensionPrimeEq6317]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6323 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6323 :
    mixedSupportExtensionPrime 6323 = 6329 := by
  rfl

theorem mixedExtensionSemanticPrime6323 :
    Nat.Prime (mixedSupportExtensionPrime 6323) ∧
      6323 < mixedSupportExtensionPrime 6323 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6323 < candidate →
        mixedSupportExtensionPrime 6323 ≤ candidate := by
  rw [mixedExtensionPrimeEq6323]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6329 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6329 :
    mixedSupportExtensionPrime 6329 = 6337 := by
  rfl

theorem mixedExtensionSemanticPrime6329 :
    Nat.Prime (mixedSupportExtensionPrime 6329) ∧
      6329 < mixedSupportExtensionPrime 6329 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6329 < candidate →
        mixedSupportExtensionPrime 6329 ≤ candidate := by
  rw [mixedExtensionPrimeEq6329]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6337 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6337 :
    mixedSupportExtensionPrime 6337 = 6343 := by
  rfl

theorem mixedExtensionSemanticPrime6337 :
    Nat.Prime (mixedSupportExtensionPrime 6337) ∧
      6337 < mixedSupportExtensionPrime 6337 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6337 < candidate →
        mixedSupportExtensionPrime 6337 ≤ candidate := by
  rw [mixedExtensionPrimeEq6337]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6343 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6343 :
    mixedSupportExtensionPrime 6343 = 6353 := by
  rfl

theorem mixedExtensionSemanticPrime6343 :
    Nat.Prime (mixedSupportExtensionPrime 6343) ∧
      6343 < mixedSupportExtensionPrime 6343 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6343 < candidate →
        mixedSupportExtensionPrime 6343 ≤ candidate := by
  rw [mixedExtensionPrimeEq6343]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6353 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6353 :
    mixedSupportExtensionPrime 6353 = 6359 := by
  rfl

theorem mixedExtensionSemanticPrime6353 :
    Nat.Prime (mixedSupportExtensionPrime 6353) ∧
      6353 < mixedSupportExtensionPrime 6353 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6353 < candidate →
        mixedSupportExtensionPrime 6353 ≤ candidate := by
  rw [mixedExtensionPrimeEq6353]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6359 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6359 :
    mixedSupportExtensionPrime 6359 = 6361 := by
  rfl

theorem mixedExtensionSemanticPrime6359 :
    Nat.Prime (mixedSupportExtensionPrime 6359) ∧
      6359 < mixedSupportExtensionPrime 6359 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6359 < candidate →
        mixedSupportExtensionPrime 6359 ≤ candidate := by
  rw [mixedExtensionPrimeEq6359]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6361 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6361 :
    mixedSupportExtensionPrime 6361 = 6367 := by
  rfl

theorem mixedExtensionSemanticPrime6361 :
    Nat.Prime (mixedSupportExtensionPrime 6361) ∧
      6361 < mixedSupportExtensionPrime 6361 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6361 < candidate →
        mixedSupportExtensionPrime 6361 ≤ candidate := by
  rw [mixedExtensionPrimeEq6361]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6367 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6367 :
    mixedSupportExtensionPrime 6367 = 6373 := by
  rfl

theorem mixedExtensionSemanticPrime6367 :
    Nat.Prime (mixedSupportExtensionPrime 6367) ∧
      6367 < mixedSupportExtensionPrime 6367 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6367 < candidate →
        mixedSupportExtensionPrime 6367 ≤ candidate := by
  rw [mixedExtensionPrimeEq6367]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6373 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6373 :
    mixedSupportExtensionPrime 6373 = 6379 := by
  rfl

theorem mixedExtensionSemanticPrime6373 :
    Nat.Prime (mixedSupportExtensionPrime 6373) ∧
      6373 < mixedSupportExtensionPrime 6373 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6373 < candidate →
        mixedSupportExtensionPrime 6373 ≤ candidate := by
  rw [mixedExtensionPrimeEq6373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6379 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6379 :
    mixedSupportExtensionPrime 6379 = 6389 := by
  rfl

theorem mixedExtensionSemanticPrime6379 :
    Nat.Prime (mixedSupportExtensionPrime 6379) ∧
      6379 < mixedSupportExtensionPrime 6379 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6379 < candidate →
        mixedSupportExtensionPrime 6379 ≤ candidate := by
  rw [mixedExtensionPrimeEq6379]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6389 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6389 :
    mixedSupportExtensionPrime 6389 = 6397 := by
  rfl

theorem mixedExtensionSemanticPrime6389 :
    Nat.Prime (mixedSupportExtensionPrime 6389) ∧
      6389 < mixedSupportExtensionPrime 6389 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6389 < candidate →
        mixedSupportExtensionPrime 6389 ≤ candidate := by
  rw [mixedExtensionPrimeEq6389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6397 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0025_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0025) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0025, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime6151
  · exact mixedExtensionSemanticPrime6163
  · exact mixedExtensionSemanticPrime6173
  · exact mixedExtensionSemanticPrime6197
  · exact mixedExtensionSemanticPrime6199
  · exact mixedExtensionSemanticPrime6203
  · exact mixedExtensionSemanticPrime6211
  · exact mixedExtensionSemanticPrime6217
  · exact mixedExtensionSemanticPrime6221
  · exact mixedExtensionSemanticPrime6229
  · exact mixedExtensionSemanticPrime6247
  · exact mixedExtensionSemanticPrime6257
  · exact mixedExtensionSemanticPrime6263
  · exact mixedExtensionSemanticPrime6269
  · exact mixedExtensionSemanticPrime6271
  · exact mixedExtensionSemanticPrime6277
  · exact mixedExtensionSemanticPrime6287
  · exact mixedExtensionSemanticPrime6299
  · exact mixedExtensionSemanticPrime6301
  · exact mixedExtensionSemanticPrime6311
  · exact mixedExtensionSemanticPrime6317
  · exact mixedExtensionSemanticPrime6323
  · exact mixedExtensionSemanticPrime6329
  · exact mixedExtensionSemanticPrime6337
  · exact mixedExtensionSemanticPrime6343
  · exact mixedExtensionSemanticPrime6353
  · exact mixedExtensionSemanticPrime6359
  · exact mixedExtensionSemanticPrime6361
  · exact mixedExtensionSemanticPrime6367
  · exact mixedExtensionSemanticPrime6373
  · exact mixedExtensionSemanticPrime6379
  · exact mixedExtensionSemanticPrime6389

#print axioms mixedExtensionSemanticInputs0025_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
