import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0032 : List ℕ :=
  [8171, 8179, 8191, 8209, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447]

theorem mixedExtensionPrimeEq8171 :
    mixedSupportExtensionPrime 8171 = 8179 := by
  rfl

theorem mixedExtensionSemanticPrime8171 :
    Nat.Prime (mixedSupportExtensionPrime 8171) ∧
      8171 < mixedSupportExtensionPrime 8171 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8171 < candidate →
        mixedSupportExtensionPrime 8171 ≤ candidate := by
  rw [mixedExtensionPrimeEq8171]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8179 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8179 :
    mixedSupportExtensionPrime 8179 = 8191 := by
  rfl

theorem mixedExtensionSemanticPrime8179 :
    Nat.Prime (mixedSupportExtensionPrime 8179) ∧
      8179 < mixedSupportExtensionPrime 8179 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8179 < candidate →
        mixedSupportExtensionPrime 8179 ≤ candidate := by
  rw [mixedExtensionPrimeEq8179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8191 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8191 :
    mixedSupportExtensionPrime 8191 = 8209 := by
  rfl

theorem mixedExtensionSemanticPrime8191 :
    Nat.Prime (mixedSupportExtensionPrime 8191) ∧
      8191 < mixedSupportExtensionPrime 8191 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8191 < candidate →
        mixedSupportExtensionPrime 8191 ≤ candidate := by
  rw [mixedExtensionPrimeEq8191]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8209 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8209 :
    mixedSupportExtensionPrime 8209 = 8219 := by
  rfl

theorem mixedExtensionSemanticPrime8209 :
    Nat.Prime (mixedSupportExtensionPrime 8209) ∧
      8209 < mixedSupportExtensionPrime 8209 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8209 < candidate →
        mixedSupportExtensionPrime 8209 ≤ candidate := by
  rw [mixedExtensionPrimeEq8209]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8219 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8219 :
    mixedSupportExtensionPrime 8219 = 8221 := by
  rfl

theorem mixedExtensionSemanticPrime8219 :
    Nat.Prime (mixedSupportExtensionPrime 8219) ∧
      8219 < mixedSupportExtensionPrime 8219 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8219 < candidate →
        mixedSupportExtensionPrime 8219 ≤ candidate := by
  rw [mixedExtensionPrimeEq8219]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8221 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8221 :
    mixedSupportExtensionPrime 8221 = 8231 := by
  rfl

theorem mixedExtensionSemanticPrime8221 :
    Nat.Prime (mixedSupportExtensionPrime 8221) ∧
      8221 < mixedSupportExtensionPrime 8221 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8221 < candidate →
        mixedSupportExtensionPrime 8221 ≤ candidate := by
  rw [mixedExtensionPrimeEq8221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8231 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8231 :
    mixedSupportExtensionPrime 8231 = 8233 := by
  rfl

theorem mixedExtensionSemanticPrime8231 :
    Nat.Prime (mixedSupportExtensionPrime 8231) ∧
      8231 < mixedSupportExtensionPrime 8231 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8231 < candidate →
        mixedSupportExtensionPrime 8231 ≤ candidate := by
  rw [mixedExtensionPrimeEq8231]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8233 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8233 :
    mixedSupportExtensionPrime 8233 = 8237 := by
  rfl

theorem mixedExtensionSemanticPrime8233 :
    Nat.Prime (mixedSupportExtensionPrime 8233) ∧
      8233 < mixedSupportExtensionPrime 8233 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8233 < candidate →
        mixedSupportExtensionPrime 8233 ≤ candidate := by
  rw [mixedExtensionPrimeEq8233]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8237 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8237 :
    mixedSupportExtensionPrime 8237 = 8243 := by
  rfl

theorem mixedExtensionSemanticPrime8237 :
    Nat.Prime (mixedSupportExtensionPrime 8237) ∧
      8237 < mixedSupportExtensionPrime 8237 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8237 < candidate →
        mixedSupportExtensionPrime 8237 ≤ candidate := by
  rw [mixedExtensionPrimeEq8237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8243 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8243 :
    mixedSupportExtensionPrime 8243 = 8263 := by
  rfl

theorem mixedExtensionSemanticPrime8243 :
    Nat.Prime (mixedSupportExtensionPrime 8243) ∧
      8243 < mixedSupportExtensionPrime 8243 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8243 < candidate →
        mixedSupportExtensionPrime 8243 ≤ candidate := by
  rw [mixedExtensionPrimeEq8243]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8263 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8263 :
    mixedSupportExtensionPrime 8263 = 8269 := by
  rfl

theorem mixedExtensionSemanticPrime8263 :
    Nat.Prime (mixedSupportExtensionPrime 8263) ∧
      8263 < mixedSupportExtensionPrime 8263 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8263 < candidate →
        mixedSupportExtensionPrime 8263 ≤ candidate := by
  rw [mixedExtensionPrimeEq8263]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8269 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8269 :
    mixedSupportExtensionPrime 8269 = 8273 := by
  rfl

theorem mixedExtensionSemanticPrime8269 :
    Nat.Prime (mixedSupportExtensionPrime 8269) ∧
      8269 < mixedSupportExtensionPrime 8269 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8269 < candidate →
        mixedSupportExtensionPrime 8269 ≤ candidate := by
  rw [mixedExtensionPrimeEq8269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8273 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8273 :
    mixedSupportExtensionPrime 8273 = 8287 := by
  rfl

theorem mixedExtensionSemanticPrime8273 :
    Nat.Prime (mixedSupportExtensionPrime 8273) ∧
      8273 < mixedSupportExtensionPrime 8273 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8273 < candidate →
        mixedSupportExtensionPrime 8273 ≤ candidate := by
  rw [mixedExtensionPrimeEq8273]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8287 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8287 :
    mixedSupportExtensionPrime 8287 = 8291 := by
  rfl

theorem mixedExtensionSemanticPrime8287 :
    Nat.Prime (mixedSupportExtensionPrime 8287) ∧
      8287 < mixedSupportExtensionPrime 8287 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8287 < candidate →
        mixedSupportExtensionPrime 8287 ≤ candidate := by
  rw [mixedExtensionPrimeEq8287]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8291 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8291 :
    mixedSupportExtensionPrime 8291 = 8293 := by
  rfl

theorem mixedExtensionSemanticPrime8291 :
    Nat.Prime (mixedSupportExtensionPrime 8291) ∧
      8291 < mixedSupportExtensionPrime 8291 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8291 < candidate →
        mixedSupportExtensionPrime 8291 ≤ candidate := by
  rw [mixedExtensionPrimeEq8291]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8293 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8293 :
    mixedSupportExtensionPrime 8293 = 8297 := by
  rfl

theorem mixedExtensionSemanticPrime8293 :
    Nat.Prime (mixedSupportExtensionPrime 8293) ∧
      8293 < mixedSupportExtensionPrime 8293 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8293 < candidate →
        mixedSupportExtensionPrime 8293 ≤ candidate := by
  rw [mixedExtensionPrimeEq8293]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8297 :
    mixedSupportExtensionPrime 8297 = 8311 := by
  rfl

theorem mixedExtensionSemanticPrime8297 :
    Nat.Prime (mixedSupportExtensionPrime 8297) ∧
      8297 < mixedSupportExtensionPrime 8297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8297 < candidate →
        mixedSupportExtensionPrime 8297 ≤ candidate := by
  rw [mixedExtensionPrimeEq8297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8311 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8311 :
    mixedSupportExtensionPrime 8311 = 8317 := by
  rfl

theorem mixedExtensionSemanticPrime8311 :
    Nat.Prime (mixedSupportExtensionPrime 8311) ∧
      8311 < mixedSupportExtensionPrime 8311 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8311 < candidate →
        mixedSupportExtensionPrime 8311 ≤ candidate := by
  rw [mixedExtensionPrimeEq8311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8317 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8317 :
    mixedSupportExtensionPrime 8317 = 8329 := by
  rfl

theorem mixedExtensionSemanticPrime8317 :
    Nat.Prime (mixedSupportExtensionPrime 8317) ∧
      8317 < mixedSupportExtensionPrime 8317 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8317 < candidate →
        mixedSupportExtensionPrime 8317 ≤ candidate := by
  rw [mixedExtensionPrimeEq8317]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8329 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8329 :
    mixedSupportExtensionPrime 8329 = 8353 := by
  rfl

theorem mixedExtensionSemanticPrime8329 :
    Nat.Prime (mixedSupportExtensionPrime 8329) ∧
      8329 < mixedSupportExtensionPrime 8329 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8329 < candidate →
        mixedSupportExtensionPrime 8329 ≤ candidate := by
  rw [mixedExtensionPrimeEq8329]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8353 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8353 :
    mixedSupportExtensionPrime 8353 = 8363 := by
  rfl

theorem mixedExtensionSemanticPrime8353 :
    Nat.Prime (mixedSupportExtensionPrime 8353) ∧
      8353 < mixedSupportExtensionPrime 8353 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8353 < candidate →
        mixedSupportExtensionPrime 8353 ≤ candidate := by
  rw [mixedExtensionPrimeEq8353]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8363 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8363 :
    mixedSupportExtensionPrime 8363 = 8369 := by
  rfl

theorem mixedExtensionSemanticPrime8363 :
    Nat.Prime (mixedSupportExtensionPrime 8363) ∧
      8363 < mixedSupportExtensionPrime 8363 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8363 < candidate →
        mixedSupportExtensionPrime 8363 ≤ candidate := by
  rw [mixedExtensionPrimeEq8363]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8369 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8369 :
    mixedSupportExtensionPrime 8369 = 8377 := by
  rfl

theorem mixedExtensionSemanticPrime8369 :
    Nat.Prime (mixedSupportExtensionPrime 8369) ∧
      8369 < mixedSupportExtensionPrime 8369 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8369 < candidate →
        mixedSupportExtensionPrime 8369 ≤ candidate := by
  rw [mixedExtensionPrimeEq8369]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8377 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8377 :
    mixedSupportExtensionPrime 8377 = 8387 := by
  rfl

theorem mixedExtensionSemanticPrime8377 :
    Nat.Prime (mixedSupportExtensionPrime 8377) ∧
      8377 < mixedSupportExtensionPrime 8377 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8377 < candidate →
        mixedSupportExtensionPrime 8377 ≤ candidate := by
  rw [mixedExtensionPrimeEq8377]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8387 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8387 :
    mixedSupportExtensionPrime 8387 = 8389 := by
  rfl

theorem mixedExtensionSemanticPrime8387 :
    Nat.Prime (mixedSupportExtensionPrime 8387) ∧
      8387 < mixedSupportExtensionPrime 8387 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8387 < candidate →
        mixedSupportExtensionPrime 8387 ≤ candidate := by
  rw [mixedExtensionPrimeEq8387]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8389 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8389 :
    mixedSupportExtensionPrime 8389 = 8419 := by
  rfl

theorem mixedExtensionSemanticPrime8389 :
    Nat.Prime (mixedSupportExtensionPrime 8389) ∧
      8389 < mixedSupportExtensionPrime 8389 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8389 < candidate →
        mixedSupportExtensionPrime 8389 ≤ candidate := by
  rw [mixedExtensionPrimeEq8389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8419 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8419 :
    mixedSupportExtensionPrime 8419 = 8423 := by
  rfl

theorem mixedExtensionSemanticPrime8419 :
    Nat.Prime (mixedSupportExtensionPrime 8419) ∧
      8419 < mixedSupportExtensionPrime 8419 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8419 < candidate →
        mixedSupportExtensionPrime 8419 ≤ candidate := by
  rw [mixedExtensionPrimeEq8419]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8423 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8423 :
    mixedSupportExtensionPrime 8423 = 8429 := by
  rfl

theorem mixedExtensionSemanticPrime8423 :
    Nat.Prime (mixedSupportExtensionPrime 8423) ∧
      8423 < mixedSupportExtensionPrime 8423 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8423 < candidate →
        mixedSupportExtensionPrime 8423 ≤ candidate := by
  rw [mixedExtensionPrimeEq8423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8429 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8429 :
    mixedSupportExtensionPrime 8429 = 8431 := by
  rfl

theorem mixedExtensionSemanticPrime8429 :
    Nat.Prime (mixedSupportExtensionPrime 8429) ∧
      8429 < mixedSupportExtensionPrime 8429 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8429 < candidate →
        mixedSupportExtensionPrime 8429 ≤ candidate := by
  rw [mixedExtensionPrimeEq8429]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8431 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8431 :
    mixedSupportExtensionPrime 8431 = 8443 := by
  rfl

theorem mixedExtensionSemanticPrime8431 :
    Nat.Prime (mixedSupportExtensionPrime 8431) ∧
      8431 < mixedSupportExtensionPrime 8431 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8431 < candidate →
        mixedSupportExtensionPrime 8431 ≤ candidate := by
  rw [mixedExtensionPrimeEq8431]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8443 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8443 :
    mixedSupportExtensionPrime 8443 = 8447 := by
  rfl

theorem mixedExtensionSemanticPrime8443 :
    Nat.Prime (mixedSupportExtensionPrime 8443) ∧
      8443 < mixedSupportExtensionPrime 8443 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8443 < candidate →
        mixedSupportExtensionPrime 8443 ≤ candidate := by
  rw [mixedExtensionPrimeEq8443]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8447 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8447 :
    mixedSupportExtensionPrime 8447 = 8461 := by
  rfl

theorem mixedExtensionSemanticPrime8447 :
    Nat.Prime (mixedSupportExtensionPrime 8447) ∧
      8447 < mixedSupportExtensionPrime 8447 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8447 < candidate →
        mixedSupportExtensionPrime 8447 ≤ candidate := by
  rw [mixedExtensionPrimeEq8447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8461 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0032_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0032) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0032, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime8171
  · exact mixedExtensionSemanticPrime8179
  · exact mixedExtensionSemanticPrime8191
  · exact mixedExtensionSemanticPrime8209
  · exact mixedExtensionSemanticPrime8219
  · exact mixedExtensionSemanticPrime8221
  · exact mixedExtensionSemanticPrime8231
  · exact mixedExtensionSemanticPrime8233
  · exact mixedExtensionSemanticPrime8237
  · exact mixedExtensionSemanticPrime8243
  · exact mixedExtensionSemanticPrime8263
  · exact mixedExtensionSemanticPrime8269
  · exact mixedExtensionSemanticPrime8273
  · exact mixedExtensionSemanticPrime8287
  · exact mixedExtensionSemanticPrime8291
  · exact mixedExtensionSemanticPrime8293
  · exact mixedExtensionSemanticPrime8297
  · exact mixedExtensionSemanticPrime8311
  · exact mixedExtensionSemanticPrime8317
  · exact mixedExtensionSemanticPrime8329
  · exact mixedExtensionSemanticPrime8353
  · exact mixedExtensionSemanticPrime8363
  · exact mixedExtensionSemanticPrime8369
  · exact mixedExtensionSemanticPrime8377
  · exact mixedExtensionSemanticPrime8387
  · exact mixedExtensionSemanticPrime8389
  · exact mixedExtensionSemanticPrime8419
  · exact mixedExtensionSemanticPrime8423
  · exact mixedExtensionSemanticPrime8429
  · exact mixedExtensionSemanticPrime8431
  · exact mixedExtensionSemanticPrime8443
  · exact mixedExtensionSemanticPrime8447

#print axioms mixedExtensionSemanticInputs0032_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
