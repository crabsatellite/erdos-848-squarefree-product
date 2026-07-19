import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0014 : List ℕ :=
  [3181, 3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313, 3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433]

theorem mixedExtensionPrimeEq3181 :
    mixedSupportExtensionPrime 3181 = 3187 := by
  rfl

theorem mixedExtensionSemanticPrime3181 :
    Nat.Prime (mixedSupportExtensionPrime 3181) ∧
      3181 < mixedSupportExtensionPrime 3181 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3181 < candidate →
        mixedSupportExtensionPrime 3181 ≤ candidate := by
  rw [mixedExtensionPrimeEq3181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3187 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3187 :
    mixedSupportExtensionPrime 3187 = 3191 := by
  rfl

theorem mixedExtensionSemanticPrime3187 :
    Nat.Prime (mixedSupportExtensionPrime 3187) ∧
      3187 < mixedSupportExtensionPrime 3187 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3187 < candidate →
        mixedSupportExtensionPrime 3187 ≤ candidate := by
  rw [mixedExtensionPrimeEq3187]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3191 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3191 :
    mixedSupportExtensionPrime 3191 = 3203 := by
  rfl

theorem mixedExtensionSemanticPrime3191 :
    Nat.Prime (mixedSupportExtensionPrime 3191) ∧
      3191 < mixedSupportExtensionPrime 3191 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3191 < candidate →
        mixedSupportExtensionPrime 3191 ≤ candidate := by
  rw [mixedExtensionPrimeEq3191]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3203 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3203 :
    mixedSupportExtensionPrime 3203 = 3209 := by
  rfl

theorem mixedExtensionSemanticPrime3203 :
    Nat.Prime (mixedSupportExtensionPrime 3203) ∧
      3203 < mixedSupportExtensionPrime 3203 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3203 < candidate →
        mixedSupportExtensionPrime 3203 ≤ candidate := by
  rw [mixedExtensionPrimeEq3203]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3209 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3209 :
    mixedSupportExtensionPrime 3209 = 3217 := by
  rfl

theorem mixedExtensionSemanticPrime3209 :
    Nat.Prime (mixedSupportExtensionPrime 3209) ∧
      3209 < mixedSupportExtensionPrime 3209 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3209 < candidate →
        mixedSupportExtensionPrime 3209 ≤ candidate := by
  rw [mixedExtensionPrimeEq3209]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3217 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3217 :
    mixedSupportExtensionPrime 3217 = 3221 := by
  rfl

theorem mixedExtensionSemanticPrime3217 :
    Nat.Prime (mixedSupportExtensionPrime 3217) ∧
      3217 < mixedSupportExtensionPrime 3217 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3217 < candidate →
        mixedSupportExtensionPrime 3217 ≤ candidate := by
  rw [mixedExtensionPrimeEq3217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3221 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3221 :
    mixedSupportExtensionPrime 3221 = 3229 := by
  rfl

theorem mixedExtensionSemanticPrime3221 :
    Nat.Prime (mixedSupportExtensionPrime 3221) ∧
      3221 < mixedSupportExtensionPrime 3221 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3221 < candidate →
        mixedSupportExtensionPrime 3221 ≤ candidate := by
  rw [mixedExtensionPrimeEq3221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3229 :
    mixedSupportExtensionPrime 3229 = 3251 := by
  rfl

theorem mixedExtensionSemanticPrime3229 :
    Nat.Prime (mixedSupportExtensionPrime 3229) ∧
      3229 < mixedSupportExtensionPrime 3229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3229 < candidate →
        mixedSupportExtensionPrime 3229 ≤ candidate := by
  rw [mixedExtensionPrimeEq3229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3251 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3251 :
    mixedSupportExtensionPrime 3251 = 3253 := by
  rfl

theorem mixedExtensionSemanticPrime3251 :
    Nat.Prime (mixedSupportExtensionPrime 3251) ∧
      3251 < mixedSupportExtensionPrime 3251 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3251 < candidate →
        mixedSupportExtensionPrime 3251 ≤ candidate := by
  rw [mixedExtensionPrimeEq3251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3253 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3253 :
    mixedSupportExtensionPrime 3253 = 3257 := by
  rfl

theorem mixedExtensionSemanticPrime3253 :
    Nat.Prime (mixedSupportExtensionPrime 3253) ∧
      3253 < mixedSupportExtensionPrime 3253 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3253 < candidate →
        mixedSupportExtensionPrime 3253 ≤ candidate := by
  rw [mixedExtensionPrimeEq3253]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3257 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3257 :
    mixedSupportExtensionPrime 3257 = 3259 := by
  rfl

theorem mixedExtensionSemanticPrime3257 :
    Nat.Prime (mixedSupportExtensionPrime 3257) ∧
      3257 < mixedSupportExtensionPrime 3257 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3257 < candidate →
        mixedSupportExtensionPrime 3257 ≤ candidate := by
  rw [mixedExtensionPrimeEq3257]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3259 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3259 :
    mixedSupportExtensionPrime 3259 = 3271 := by
  rfl

theorem mixedExtensionSemanticPrime3259 :
    Nat.Prime (mixedSupportExtensionPrime 3259) ∧
      3259 < mixedSupportExtensionPrime 3259 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3259 < candidate →
        mixedSupportExtensionPrime 3259 ≤ candidate := by
  rw [mixedExtensionPrimeEq3259]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3271 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3271 :
    mixedSupportExtensionPrime 3271 = 3299 := by
  rfl

theorem mixedExtensionSemanticPrime3271 :
    Nat.Prime (mixedSupportExtensionPrime 3271) ∧
      3271 < mixedSupportExtensionPrime 3271 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3271 < candidate →
        mixedSupportExtensionPrime 3271 ≤ candidate := by
  rw [mixedExtensionPrimeEq3271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3299 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3299 :
    mixedSupportExtensionPrime 3299 = 3301 := by
  rfl

theorem mixedExtensionSemanticPrime3299 :
    Nat.Prime (mixedSupportExtensionPrime 3299) ∧
      3299 < mixedSupportExtensionPrime 3299 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3299 < candidate →
        mixedSupportExtensionPrime 3299 ≤ candidate := by
  rw [mixedExtensionPrimeEq3299]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3301 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3301 :
    mixedSupportExtensionPrime 3301 = 3307 := by
  rfl

theorem mixedExtensionSemanticPrime3301 :
    Nat.Prime (mixedSupportExtensionPrime 3301) ∧
      3301 < mixedSupportExtensionPrime 3301 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3301 < candidate →
        mixedSupportExtensionPrime 3301 ≤ candidate := by
  rw [mixedExtensionPrimeEq3301]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3307 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3307 :
    mixedSupportExtensionPrime 3307 = 3313 := by
  rfl

theorem mixedExtensionSemanticPrime3307 :
    Nat.Prime (mixedSupportExtensionPrime 3307) ∧
      3307 < mixedSupportExtensionPrime 3307 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3307 < candidate →
        mixedSupportExtensionPrime 3307 ≤ candidate := by
  rw [mixedExtensionPrimeEq3307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3313 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3313 :
    mixedSupportExtensionPrime 3313 = 3319 := by
  rfl

theorem mixedExtensionSemanticPrime3313 :
    Nat.Prime (mixedSupportExtensionPrime 3313) ∧
      3313 < mixedSupportExtensionPrime 3313 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3313 < candidate →
        mixedSupportExtensionPrime 3313 ≤ candidate := by
  rw [mixedExtensionPrimeEq3313]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3319 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3319 :
    mixedSupportExtensionPrime 3319 = 3323 := by
  rfl

theorem mixedExtensionSemanticPrime3319 :
    Nat.Prime (mixedSupportExtensionPrime 3319) ∧
      3319 < mixedSupportExtensionPrime 3319 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3319 < candidate →
        mixedSupportExtensionPrime 3319 ≤ candidate := by
  rw [mixedExtensionPrimeEq3319]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3323 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3323 :
    mixedSupportExtensionPrime 3323 = 3329 := by
  rfl

theorem mixedExtensionSemanticPrime3323 :
    Nat.Prime (mixedSupportExtensionPrime 3323) ∧
      3323 < mixedSupportExtensionPrime 3323 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3323 < candidate →
        mixedSupportExtensionPrime 3323 ≤ candidate := by
  rw [mixedExtensionPrimeEq3323]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3329 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3329 :
    mixedSupportExtensionPrime 3329 = 3331 := by
  rfl

theorem mixedExtensionSemanticPrime3329 :
    Nat.Prime (mixedSupportExtensionPrime 3329) ∧
      3329 < mixedSupportExtensionPrime 3329 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3329 < candidate →
        mixedSupportExtensionPrime 3329 ≤ candidate := by
  rw [mixedExtensionPrimeEq3329]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3331 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3331 :
    mixedSupportExtensionPrime 3331 = 3343 := by
  rfl

theorem mixedExtensionSemanticPrime3331 :
    Nat.Prime (mixedSupportExtensionPrime 3331) ∧
      3331 < mixedSupportExtensionPrime 3331 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3331 < candidate →
        mixedSupportExtensionPrime 3331 ≤ candidate := by
  rw [mixedExtensionPrimeEq3331]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3343 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3343 :
    mixedSupportExtensionPrime 3343 = 3347 := by
  rfl

theorem mixedExtensionSemanticPrime3343 :
    Nat.Prime (mixedSupportExtensionPrime 3343) ∧
      3343 < mixedSupportExtensionPrime 3343 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3343 < candidate →
        mixedSupportExtensionPrime 3343 ≤ candidate := by
  rw [mixedExtensionPrimeEq3343]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3347 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3347 :
    mixedSupportExtensionPrime 3347 = 3359 := by
  rfl

theorem mixedExtensionSemanticPrime3347 :
    Nat.Prime (mixedSupportExtensionPrime 3347) ∧
      3347 < mixedSupportExtensionPrime 3347 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3347 < candidate →
        mixedSupportExtensionPrime 3347 ≤ candidate := by
  rw [mixedExtensionPrimeEq3347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3359 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3359 :
    mixedSupportExtensionPrime 3359 = 3361 := by
  rfl

theorem mixedExtensionSemanticPrime3359 :
    Nat.Prime (mixedSupportExtensionPrime 3359) ∧
      3359 < mixedSupportExtensionPrime 3359 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3359 < candidate →
        mixedSupportExtensionPrime 3359 ≤ candidate := by
  rw [mixedExtensionPrimeEq3359]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3361 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3361 :
    mixedSupportExtensionPrime 3361 = 3371 := by
  rfl

theorem mixedExtensionSemanticPrime3361 :
    Nat.Prime (mixedSupportExtensionPrime 3361) ∧
      3361 < mixedSupportExtensionPrime 3361 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3361 < candidate →
        mixedSupportExtensionPrime 3361 ≤ candidate := by
  rw [mixedExtensionPrimeEq3361]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3371 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3371 :
    mixedSupportExtensionPrime 3371 = 3373 := by
  rfl

theorem mixedExtensionSemanticPrime3371 :
    Nat.Prime (mixedSupportExtensionPrime 3371) ∧
      3371 < mixedSupportExtensionPrime 3371 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3371 < candidate →
        mixedSupportExtensionPrime 3371 ≤ candidate := by
  rw [mixedExtensionPrimeEq3371]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3373 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3373 :
    mixedSupportExtensionPrime 3373 = 3389 := by
  rfl

theorem mixedExtensionSemanticPrime3373 :
    Nat.Prime (mixedSupportExtensionPrime 3373) ∧
      3373 < mixedSupportExtensionPrime 3373 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3373 < candidate →
        mixedSupportExtensionPrime 3373 ≤ candidate := by
  rw [mixedExtensionPrimeEq3373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3389 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3389 :
    mixedSupportExtensionPrime 3389 = 3391 := by
  rfl

theorem mixedExtensionSemanticPrime3389 :
    Nat.Prime (mixedSupportExtensionPrime 3389) ∧
      3389 < mixedSupportExtensionPrime 3389 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3389 < candidate →
        mixedSupportExtensionPrime 3389 ≤ candidate := by
  rw [mixedExtensionPrimeEq3389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3391 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3391 :
    mixedSupportExtensionPrime 3391 = 3407 := by
  rfl

theorem mixedExtensionSemanticPrime3391 :
    Nat.Prime (mixedSupportExtensionPrime 3391) ∧
      3391 < mixedSupportExtensionPrime 3391 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3391 < candidate →
        mixedSupportExtensionPrime 3391 ≤ candidate := by
  rw [mixedExtensionPrimeEq3391]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3407 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3407 :
    mixedSupportExtensionPrime 3407 = 3413 := by
  rfl

theorem mixedExtensionSemanticPrime3407 :
    Nat.Prime (mixedSupportExtensionPrime 3407) ∧
      3407 < mixedSupportExtensionPrime 3407 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3407 < candidate →
        mixedSupportExtensionPrime 3407 ≤ candidate := by
  rw [mixedExtensionPrimeEq3407]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3413 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3413 :
    mixedSupportExtensionPrime 3413 = 3433 := by
  rfl

theorem mixedExtensionSemanticPrime3413 :
    Nat.Prime (mixedSupportExtensionPrime 3413) ∧
      3413 < mixedSupportExtensionPrime 3413 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3413 < candidate →
        mixedSupportExtensionPrime 3413 ≤ candidate := by
  rw [mixedExtensionPrimeEq3413]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3433 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3433 :
    mixedSupportExtensionPrime 3433 = 3449 := by
  rfl

theorem mixedExtensionSemanticPrime3433 :
    Nat.Prime (mixedSupportExtensionPrime 3433) ∧
      3433 < mixedSupportExtensionPrime 3433 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3433 < candidate →
        mixedSupportExtensionPrime 3433 ≤ candidate := by
  rw [mixedExtensionPrimeEq3433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3449 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0014_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0014) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0014, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime3181
  · exact mixedExtensionSemanticPrime3187
  · exact mixedExtensionSemanticPrime3191
  · exact mixedExtensionSemanticPrime3203
  · exact mixedExtensionSemanticPrime3209
  · exact mixedExtensionSemanticPrime3217
  · exact mixedExtensionSemanticPrime3221
  · exact mixedExtensionSemanticPrime3229
  · exact mixedExtensionSemanticPrime3251
  · exact mixedExtensionSemanticPrime3253
  · exact mixedExtensionSemanticPrime3257
  · exact mixedExtensionSemanticPrime3259
  · exact mixedExtensionSemanticPrime3271
  · exact mixedExtensionSemanticPrime3299
  · exact mixedExtensionSemanticPrime3301
  · exact mixedExtensionSemanticPrime3307
  · exact mixedExtensionSemanticPrime3313
  · exact mixedExtensionSemanticPrime3319
  · exact mixedExtensionSemanticPrime3323
  · exact mixedExtensionSemanticPrime3329
  · exact mixedExtensionSemanticPrime3331
  · exact mixedExtensionSemanticPrime3343
  · exact mixedExtensionSemanticPrime3347
  · exact mixedExtensionSemanticPrime3359
  · exact mixedExtensionSemanticPrime3361
  · exact mixedExtensionSemanticPrime3371
  · exact mixedExtensionSemanticPrime3373
  · exact mixedExtensionSemanticPrime3389
  · exact mixedExtensionSemanticPrime3391
  · exact mixedExtensionSemanticPrime3407
  · exact mixedExtensionSemanticPrime3413
  · exact mixedExtensionSemanticPrime3433

#print axioms mixedExtensionSemanticInputs0014_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
