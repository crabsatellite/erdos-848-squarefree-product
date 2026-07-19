import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0022 : List ℕ :=
  [5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581]

theorem mixedExtensionPrimeEq5333 :
    mixedSupportExtensionPrime 5333 = 5347 := by
  rfl

theorem mixedExtensionSemanticPrime5333 :
    Nat.Prime (mixedSupportExtensionPrime 5333) ∧
      5333 < mixedSupportExtensionPrime 5333 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5333 < candidate →
        mixedSupportExtensionPrime 5333 ≤ candidate := by
  rw [mixedExtensionPrimeEq5333]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5347 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5347 :
    mixedSupportExtensionPrime 5347 = 5351 := by
  rfl

theorem mixedExtensionSemanticPrime5347 :
    Nat.Prime (mixedSupportExtensionPrime 5347) ∧
      5347 < mixedSupportExtensionPrime 5347 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5347 < candidate →
        mixedSupportExtensionPrime 5347 ≤ candidate := by
  rw [mixedExtensionPrimeEq5347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5351 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5351 :
    mixedSupportExtensionPrime 5351 = 5381 := by
  rfl

theorem mixedExtensionSemanticPrime5351 :
    Nat.Prime (mixedSupportExtensionPrime 5351) ∧
      5351 < mixedSupportExtensionPrime 5351 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5351 < candidate →
        mixedSupportExtensionPrime 5351 ≤ candidate := by
  rw [mixedExtensionPrimeEq5351]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5381 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5381 :
    mixedSupportExtensionPrime 5381 = 5387 := by
  rfl

theorem mixedExtensionSemanticPrime5381 :
    Nat.Prime (mixedSupportExtensionPrime 5381) ∧
      5381 < mixedSupportExtensionPrime 5381 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5381 < candidate →
        mixedSupportExtensionPrime 5381 ≤ candidate := by
  rw [mixedExtensionPrimeEq5381]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5387 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5387 :
    mixedSupportExtensionPrime 5387 = 5393 := by
  rfl

theorem mixedExtensionSemanticPrime5387 :
    Nat.Prime (mixedSupportExtensionPrime 5387) ∧
      5387 < mixedSupportExtensionPrime 5387 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5387 < candidate →
        mixedSupportExtensionPrime 5387 ≤ candidate := by
  rw [mixedExtensionPrimeEq5387]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5393 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5393 :
    mixedSupportExtensionPrime 5393 = 5399 := by
  rfl

theorem mixedExtensionSemanticPrime5393 :
    Nat.Prime (mixedSupportExtensionPrime 5393) ∧
      5393 < mixedSupportExtensionPrime 5393 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5393 < candidate →
        mixedSupportExtensionPrime 5393 ≤ candidate := by
  rw [mixedExtensionPrimeEq5393]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5399 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5399 :
    mixedSupportExtensionPrime 5399 = 5407 := by
  rfl

theorem mixedExtensionSemanticPrime5399 :
    Nat.Prime (mixedSupportExtensionPrime 5399) ∧
      5399 < mixedSupportExtensionPrime 5399 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5399 < candidate →
        mixedSupportExtensionPrime 5399 ≤ candidate := by
  rw [mixedExtensionPrimeEq5399]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5407 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5407 :
    mixedSupportExtensionPrime 5407 = 5413 := by
  rfl

theorem mixedExtensionSemanticPrime5407 :
    Nat.Prime (mixedSupportExtensionPrime 5407) ∧
      5407 < mixedSupportExtensionPrime 5407 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5407 < candidate →
        mixedSupportExtensionPrime 5407 ≤ candidate := by
  rw [mixedExtensionPrimeEq5407]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5413 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5413 :
    mixedSupportExtensionPrime 5413 = 5417 := by
  rfl

theorem mixedExtensionSemanticPrime5413 :
    Nat.Prime (mixedSupportExtensionPrime 5413) ∧
      5413 < mixedSupportExtensionPrime 5413 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5413 < candidate →
        mixedSupportExtensionPrime 5413 ≤ candidate := by
  rw [mixedExtensionPrimeEq5413]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5417 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5417 :
    mixedSupportExtensionPrime 5417 = 5419 := by
  rfl

theorem mixedExtensionSemanticPrime5417 :
    Nat.Prime (mixedSupportExtensionPrime 5417) ∧
      5417 < mixedSupportExtensionPrime 5417 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5417 < candidate →
        mixedSupportExtensionPrime 5417 ≤ candidate := by
  rw [mixedExtensionPrimeEq5417]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5419 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5419 :
    mixedSupportExtensionPrime 5419 = 5431 := by
  rfl

theorem mixedExtensionSemanticPrime5419 :
    Nat.Prime (mixedSupportExtensionPrime 5419) ∧
      5419 < mixedSupportExtensionPrime 5419 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5419 < candidate →
        mixedSupportExtensionPrime 5419 ≤ candidate := by
  rw [mixedExtensionPrimeEq5419]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5431 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5431 :
    mixedSupportExtensionPrime 5431 = 5437 := by
  rfl

theorem mixedExtensionSemanticPrime5431 :
    Nat.Prime (mixedSupportExtensionPrime 5431) ∧
      5431 < mixedSupportExtensionPrime 5431 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5431 < candidate →
        mixedSupportExtensionPrime 5431 ≤ candidate := by
  rw [mixedExtensionPrimeEq5431]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5437 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5437 :
    mixedSupportExtensionPrime 5437 = 5441 := by
  rfl

theorem mixedExtensionSemanticPrime5437 :
    Nat.Prime (mixedSupportExtensionPrime 5437) ∧
      5437 < mixedSupportExtensionPrime 5437 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5437 < candidate →
        mixedSupportExtensionPrime 5437 ≤ candidate := by
  rw [mixedExtensionPrimeEq5437]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5441 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5441 :
    mixedSupportExtensionPrime 5441 = 5443 := by
  rfl

theorem mixedExtensionSemanticPrime5441 :
    Nat.Prime (mixedSupportExtensionPrime 5441) ∧
      5441 < mixedSupportExtensionPrime 5441 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5441 < candidate →
        mixedSupportExtensionPrime 5441 ≤ candidate := by
  rw [mixedExtensionPrimeEq5441]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5443 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5443 :
    mixedSupportExtensionPrime 5443 = 5449 := by
  rfl

theorem mixedExtensionSemanticPrime5443 :
    Nat.Prime (mixedSupportExtensionPrime 5443) ∧
      5443 < mixedSupportExtensionPrime 5443 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5443 < candidate →
        mixedSupportExtensionPrime 5443 ≤ candidate := by
  rw [mixedExtensionPrimeEq5443]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5449 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5449 :
    mixedSupportExtensionPrime 5449 = 5471 := by
  rfl

theorem mixedExtensionSemanticPrime5449 :
    Nat.Prime (mixedSupportExtensionPrime 5449) ∧
      5449 < mixedSupportExtensionPrime 5449 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5449 < candidate →
        mixedSupportExtensionPrime 5449 ≤ candidate := by
  rw [mixedExtensionPrimeEq5449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5471 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5471 :
    mixedSupportExtensionPrime 5471 = 5477 := by
  rfl

theorem mixedExtensionSemanticPrime5471 :
    Nat.Prime (mixedSupportExtensionPrime 5471) ∧
      5471 < mixedSupportExtensionPrime 5471 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5471 < candidate →
        mixedSupportExtensionPrime 5471 ≤ candidate := by
  rw [mixedExtensionPrimeEq5471]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5477 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5477 :
    mixedSupportExtensionPrime 5477 = 5479 := by
  rfl

theorem mixedExtensionSemanticPrime5477 :
    Nat.Prime (mixedSupportExtensionPrime 5477) ∧
      5477 < mixedSupportExtensionPrime 5477 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5477 < candidate →
        mixedSupportExtensionPrime 5477 ≤ candidate := by
  rw [mixedExtensionPrimeEq5477]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5479 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5479 :
    mixedSupportExtensionPrime 5479 = 5483 := by
  rfl

theorem mixedExtensionSemanticPrime5479 :
    Nat.Prime (mixedSupportExtensionPrime 5479) ∧
      5479 < mixedSupportExtensionPrime 5479 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5479 < candidate →
        mixedSupportExtensionPrime 5479 ≤ candidate := by
  rw [mixedExtensionPrimeEq5479]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5483 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5483 :
    mixedSupportExtensionPrime 5483 = 5501 := by
  rfl

theorem mixedExtensionSemanticPrime5483 :
    Nat.Prime (mixedSupportExtensionPrime 5483) ∧
      5483 < mixedSupportExtensionPrime 5483 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5483 < candidate →
        mixedSupportExtensionPrime 5483 ≤ candidate := by
  rw [mixedExtensionPrimeEq5483]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5501 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5501 :
    mixedSupportExtensionPrime 5501 = 5503 := by
  rfl

theorem mixedExtensionSemanticPrime5501 :
    Nat.Prime (mixedSupportExtensionPrime 5501) ∧
      5501 < mixedSupportExtensionPrime 5501 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5501 < candidate →
        mixedSupportExtensionPrime 5501 ≤ candidate := by
  rw [mixedExtensionPrimeEq5501]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5503 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5503 :
    mixedSupportExtensionPrime 5503 = 5507 := by
  rfl

theorem mixedExtensionSemanticPrime5503 :
    Nat.Prime (mixedSupportExtensionPrime 5503) ∧
      5503 < mixedSupportExtensionPrime 5503 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5503 < candidate →
        mixedSupportExtensionPrime 5503 ≤ candidate := by
  rw [mixedExtensionPrimeEq5503]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5507 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5507 :
    mixedSupportExtensionPrime 5507 = 5519 := by
  rfl

theorem mixedExtensionSemanticPrime5507 :
    Nat.Prime (mixedSupportExtensionPrime 5507) ∧
      5507 < mixedSupportExtensionPrime 5507 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5507 < candidate →
        mixedSupportExtensionPrime 5507 ≤ candidate := by
  rw [mixedExtensionPrimeEq5507]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5519 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5519 :
    mixedSupportExtensionPrime 5519 = 5521 := by
  rfl

theorem mixedExtensionSemanticPrime5519 :
    Nat.Prime (mixedSupportExtensionPrime 5519) ∧
      5519 < mixedSupportExtensionPrime 5519 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5519 < candidate →
        mixedSupportExtensionPrime 5519 ≤ candidate := by
  rw [mixedExtensionPrimeEq5519]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5521 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5521 :
    mixedSupportExtensionPrime 5521 = 5527 := by
  rfl

theorem mixedExtensionSemanticPrime5521 :
    Nat.Prime (mixedSupportExtensionPrime 5521) ∧
      5521 < mixedSupportExtensionPrime 5521 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5521 < candidate →
        mixedSupportExtensionPrime 5521 ≤ candidate := by
  rw [mixedExtensionPrimeEq5521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5527 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5527 :
    mixedSupportExtensionPrime 5527 = 5531 := by
  rfl

theorem mixedExtensionSemanticPrime5527 :
    Nat.Prime (mixedSupportExtensionPrime 5527) ∧
      5527 < mixedSupportExtensionPrime 5527 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5527 < candidate →
        mixedSupportExtensionPrime 5527 ≤ candidate := by
  rw [mixedExtensionPrimeEq5527]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5531 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5531 :
    mixedSupportExtensionPrime 5531 = 5557 := by
  rfl

theorem mixedExtensionSemanticPrime5531 :
    Nat.Prime (mixedSupportExtensionPrime 5531) ∧
      5531 < mixedSupportExtensionPrime 5531 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5531 < candidate →
        mixedSupportExtensionPrime 5531 ≤ candidate := by
  rw [mixedExtensionPrimeEq5531]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5557 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5557 :
    mixedSupportExtensionPrime 5557 = 5563 := by
  rfl

theorem mixedExtensionSemanticPrime5557 :
    Nat.Prime (mixedSupportExtensionPrime 5557) ∧
      5557 < mixedSupportExtensionPrime 5557 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5557 < candidate →
        mixedSupportExtensionPrime 5557 ≤ candidate := by
  rw [mixedExtensionPrimeEq5557]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5563 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5563 :
    mixedSupportExtensionPrime 5563 = 5569 := by
  rfl

theorem mixedExtensionSemanticPrime5563 :
    Nat.Prime (mixedSupportExtensionPrime 5563) ∧
      5563 < mixedSupportExtensionPrime 5563 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5563 < candidate →
        mixedSupportExtensionPrime 5563 ≤ candidate := by
  rw [mixedExtensionPrimeEq5563]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5569 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5569 :
    mixedSupportExtensionPrime 5569 = 5573 := by
  rfl

theorem mixedExtensionSemanticPrime5569 :
    Nat.Prime (mixedSupportExtensionPrime 5569) ∧
      5569 < mixedSupportExtensionPrime 5569 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5569 < candidate →
        mixedSupportExtensionPrime 5569 ≤ candidate := by
  rw [mixedExtensionPrimeEq5569]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5573 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5573 :
    mixedSupportExtensionPrime 5573 = 5581 := by
  rfl

theorem mixedExtensionSemanticPrime5573 :
    Nat.Prime (mixedSupportExtensionPrime 5573) ∧
      5573 < mixedSupportExtensionPrime 5573 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5573 < candidate →
        mixedSupportExtensionPrime 5573 ≤ candidate := by
  rw [mixedExtensionPrimeEq5573]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5581 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5581 :
    mixedSupportExtensionPrime 5581 = 5591 := by
  rfl

theorem mixedExtensionSemanticPrime5581 :
    Nat.Prime (mixedSupportExtensionPrime 5581) ∧
      5581 < mixedSupportExtensionPrime 5581 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5581 < candidate →
        mixedSupportExtensionPrime 5581 ≤ candidate := by
  rw [mixedExtensionPrimeEq5581]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5591 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0022_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0022) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0022, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime5333
  · exact mixedExtensionSemanticPrime5347
  · exact mixedExtensionSemanticPrime5351
  · exact mixedExtensionSemanticPrime5381
  · exact mixedExtensionSemanticPrime5387
  · exact mixedExtensionSemanticPrime5393
  · exact mixedExtensionSemanticPrime5399
  · exact mixedExtensionSemanticPrime5407
  · exact mixedExtensionSemanticPrime5413
  · exact mixedExtensionSemanticPrime5417
  · exact mixedExtensionSemanticPrime5419
  · exact mixedExtensionSemanticPrime5431
  · exact mixedExtensionSemanticPrime5437
  · exact mixedExtensionSemanticPrime5441
  · exact mixedExtensionSemanticPrime5443
  · exact mixedExtensionSemanticPrime5449
  · exact mixedExtensionSemanticPrime5471
  · exact mixedExtensionSemanticPrime5477
  · exact mixedExtensionSemanticPrime5479
  · exact mixedExtensionSemanticPrime5483
  · exact mixedExtensionSemanticPrime5501
  · exact mixedExtensionSemanticPrime5503
  · exact mixedExtensionSemanticPrime5507
  · exact mixedExtensionSemanticPrime5519
  · exact mixedExtensionSemanticPrime5521
  · exact mixedExtensionSemanticPrime5527
  · exact mixedExtensionSemanticPrime5531
  · exact mixedExtensionSemanticPrime5557
  · exact mixedExtensionSemanticPrime5563
  · exact mixedExtensionSemanticPrime5569
  · exact mixedExtensionSemanticPrime5573
  · exact mixedExtensionSemanticPrime5581

#print axioms mixedExtensionSemanticInputs0022_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
