import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0011 : List ℕ :=
  [2383, 2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531, 2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659]

theorem mixedExtensionPrimeEq2383 :
    mixedSupportExtensionPrime 2383 = 2389 := by
  rfl

theorem mixedExtensionSemanticPrime2383 :
    Nat.Prime (mixedSupportExtensionPrime 2383) ∧
      2383 < mixedSupportExtensionPrime 2383 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2383 < candidate →
        mixedSupportExtensionPrime 2383 ≤ candidate := by
  rw [mixedExtensionPrimeEq2383]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2389 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2389 :
    mixedSupportExtensionPrime 2389 = 2393 := by
  rfl

theorem mixedExtensionSemanticPrime2389 :
    Nat.Prime (mixedSupportExtensionPrime 2389) ∧
      2389 < mixedSupportExtensionPrime 2389 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2389 < candidate →
        mixedSupportExtensionPrime 2389 ≤ candidate := by
  rw [mixedExtensionPrimeEq2389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2393 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2393 :
    mixedSupportExtensionPrime 2393 = 2399 := by
  rfl

theorem mixedExtensionSemanticPrime2393 :
    Nat.Prime (mixedSupportExtensionPrime 2393) ∧
      2393 < mixedSupportExtensionPrime 2393 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2393 < candidate →
        mixedSupportExtensionPrime 2393 ≤ candidate := by
  rw [mixedExtensionPrimeEq2393]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2399 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2399 :
    mixedSupportExtensionPrime 2399 = 2411 := by
  rfl

theorem mixedExtensionSemanticPrime2399 :
    Nat.Prime (mixedSupportExtensionPrime 2399) ∧
      2399 < mixedSupportExtensionPrime 2399 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2399 < candidate →
        mixedSupportExtensionPrime 2399 ≤ candidate := by
  rw [mixedExtensionPrimeEq2399]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2411 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2411 :
    mixedSupportExtensionPrime 2411 = 2417 := by
  rfl

theorem mixedExtensionSemanticPrime2411 :
    Nat.Prime (mixedSupportExtensionPrime 2411) ∧
      2411 < mixedSupportExtensionPrime 2411 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2411 < candidate →
        mixedSupportExtensionPrime 2411 ≤ candidate := by
  rw [mixedExtensionPrimeEq2411]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2417 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2417 :
    mixedSupportExtensionPrime 2417 = 2423 := by
  rfl

theorem mixedExtensionSemanticPrime2417 :
    Nat.Prime (mixedSupportExtensionPrime 2417) ∧
      2417 < mixedSupportExtensionPrime 2417 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2417 < candidate →
        mixedSupportExtensionPrime 2417 ≤ candidate := by
  rw [mixedExtensionPrimeEq2417]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2423 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2423 :
    mixedSupportExtensionPrime 2423 = 2437 := by
  rfl

theorem mixedExtensionSemanticPrime2423 :
    Nat.Prime (mixedSupportExtensionPrime 2423) ∧
      2423 < mixedSupportExtensionPrime 2423 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2423 < candidate →
        mixedSupportExtensionPrime 2423 ≤ candidate := by
  rw [mixedExtensionPrimeEq2423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2437 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2437 :
    mixedSupportExtensionPrime 2437 = 2441 := by
  rfl

theorem mixedExtensionSemanticPrime2437 :
    Nat.Prime (mixedSupportExtensionPrime 2437) ∧
      2437 < mixedSupportExtensionPrime 2437 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2437 < candidate →
        mixedSupportExtensionPrime 2437 ≤ candidate := by
  rw [mixedExtensionPrimeEq2437]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2441 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2441 :
    mixedSupportExtensionPrime 2441 = 2447 := by
  rfl

theorem mixedExtensionSemanticPrime2441 :
    Nat.Prime (mixedSupportExtensionPrime 2441) ∧
      2441 < mixedSupportExtensionPrime 2441 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2441 < candidate →
        mixedSupportExtensionPrime 2441 ≤ candidate := by
  rw [mixedExtensionPrimeEq2441]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2447 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2447 :
    mixedSupportExtensionPrime 2447 = 2459 := by
  rfl

theorem mixedExtensionSemanticPrime2447 :
    Nat.Prime (mixedSupportExtensionPrime 2447) ∧
      2447 < mixedSupportExtensionPrime 2447 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2447 < candidate →
        mixedSupportExtensionPrime 2447 ≤ candidate := by
  rw [mixedExtensionPrimeEq2447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2459 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2459 :
    mixedSupportExtensionPrime 2459 = 2467 := by
  rfl

theorem mixedExtensionSemanticPrime2459 :
    Nat.Prime (mixedSupportExtensionPrime 2459) ∧
      2459 < mixedSupportExtensionPrime 2459 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2459 < candidate →
        mixedSupportExtensionPrime 2459 ≤ candidate := by
  rw [mixedExtensionPrimeEq2459]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2467 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2467 :
    mixedSupportExtensionPrime 2467 = 2473 := by
  rfl

theorem mixedExtensionSemanticPrime2467 :
    Nat.Prime (mixedSupportExtensionPrime 2467) ∧
      2467 < mixedSupportExtensionPrime 2467 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2467 < candidate →
        mixedSupportExtensionPrime 2467 ≤ candidate := by
  rw [mixedExtensionPrimeEq2467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2473 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2473 :
    mixedSupportExtensionPrime 2473 = 2477 := by
  rfl

theorem mixedExtensionSemanticPrime2473 :
    Nat.Prime (mixedSupportExtensionPrime 2473) ∧
      2473 < mixedSupportExtensionPrime 2473 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2473 < candidate →
        mixedSupportExtensionPrime 2473 ≤ candidate := by
  rw [mixedExtensionPrimeEq2473]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2477 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2477 :
    mixedSupportExtensionPrime 2477 = 2503 := by
  rfl

theorem mixedExtensionSemanticPrime2477 :
    Nat.Prime (mixedSupportExtensionPrime 2477) ∧
      2477 < mixedSupportExtensionPrime 2477 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2477 < candidate →
        mixedSupportExtensionPrime 2477 ≤ candidate := by
  rw [mixedExtensionPrimeEq2477]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2503 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2503 :
    mixedSupportExtensionPrime 2503 = 2521 := by
  rfl

theorem mixedExtensionSemanticPrime2503 :
    Nat.Prime (mixedSupportExtensionPrime 2503) ∧
      2503 < mixedSupportExtensionPrime 2503 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2503 < candidate →
        mixedSupportExtensionPrime 2503 ≤ candidate := by
  rw [mixedExtensionPrimeEq2503]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2521 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2521 :
    mixedSupportExtensionPrime 2521 = 2531 := by
  rfl

theorem mixedExtensionSemanticPrime2521 :
    Nat.Prime (mixedSupportExtensionPrime 2521) ∧
      2521 < mixedSupportExtensionPrime 2521 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2521 < candidate →
        mixedSupportExtensionPrime 2521 ≤ candidate := by
  rw [mixedExtensionPrimeEq2521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2531 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2531 :
    mixedSupportExtensionPrime 2531 = 2539 := by
  rfl

theorem mixedExtensionSemanticPrime2531 :
    Nat.Prime (mixedSupportExtensionPrime 2531) ∧
      2531 < mixedSupportExtensionPrime 2531 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2531 < candidate →
        mixedSupportExtensionPrime 2531 ≤ candidate := by
  rw [mixedExtensionPrimeEq2531]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2539 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2539 :
    mixedSupportExtensionPrime 2539 = 2543 := by
  rfl

theorem mixedExtensionSemanticPrime2539 :
    Nat.Prime (mixedSupportExtensionPrime 2539) ∧
      2539 < mixedSupportExtensionPrime 2539 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2539 < candidate →
        mixedSupportExtensionPrime 2539 ≤ candidate := by
  rw [mixedExtensionPrimeEq2539]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2543 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2543 :
    mixedSupportExtensionPrime 2543 = 2549 := by
  rfl

theorem mixedExtensionSemanticPrime2543 :
    Nat.Prime (mixedSupportExtensionPrime 2543) ∧
      2543 < mixedSupportExtensionPrime 2543 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2543 < candidate →
        mixedSupportExtensionPrime 2543 ≤ candidate := by
  rw [mixedExtensionPrimeEq2543]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2549 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2549 :
    mixedSupportExtensionPrime 2549 = 2551 := by
  rfl

theorem mixedExtensionSemanticPrime2549 :
    Nat.Prime (mixedSupportExtensionPrime 2549) ∧
      2549 < mixedSupportExtensionPrime 2549 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2549 < candidate →
        mixedSupportExtensionPrime 2549 ≤ candidate := by
  rw [mixedExtensionPrimeEq2549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2551 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2551 :
    mixedSupportExtensionPrime 2551 = 2557 := by
  rfl

theorem mixedExtensionSemanticPrime2551 :
    Nat.Prime (mixedSupportExtensionPrime 2551) ∧
      2551 < mixedSupportExtensionPrime 2551 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2551 < candidate →
        mixedSupportExtensionPrime 2551 ≤ candidate := by
  rw [mixedExtensionPrimeEq2551]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2557 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2557 :
    mixedSupportExtensionPrime 2557 = 2579 := by
  rfl

theorem mixedExtensionSemanticPrime2557 :
    Nat.Prime (mixedSupportExtensionPrime 2557) ∧
      2557 < mixedSupportExtensionPrime 2557 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2557 < candidate →
        mixedSupportExtensionPrime 2557 ≤ candidate := by
  rw [mixedExtensionPrimeEq2557]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2579 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2579 :
    mixedSupportExtensionPrime 2579 = 2591 := by
  rfl

theorem mixedExtensionSemanticPrime2579 :
    Nat.Prime (mixedSupportExtensionPrime 2579) ∧
      2579 < mixedSupportExtensionPrime 2579 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2579 < candidate →
        mixedSupportExtensionPrime 2579 ≤ candidate := by
  rw [mixedExtensionPrimeEq2579]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2591 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2591 :
    mixedSupportExtensionPrime 2591 = 2593 := by
  rfl

theorem mixedExtensionSemanticPrime2591 :
    Nat.Prime (mixedSupportExtensionPrime 2591) ∧
      2591 < mixedSupportExtensionPrime 2591 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2591 < candidate →
        mixedSupportExtensionPrime 2591 ≤ candidate := by
  rw [mixedExtensionPrimeEq2591]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2593 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2593 :
    mixedSupportExtensionPrime 2593 = 2609 := by
  rfl

theorem mixedExtensionSemanticPrime2593 :
    Nat.Prime (mixedSupportExtensionPrime 2593) ∧
      2593 < mixedSupportExtensionPrime 2593 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2593 < candidate →
        mixedSupportExtensionPrime 2593 ≤ candidate := by
  rw [mixedExtensionPrimeEq2593]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2609 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2609 :
    mixedSupportExtensionPrime 2609 = 2617 := by
  rfl

theorem mixedExtensionSemanticPrime2609 :
    Nat.Prime (mixedSupportExtensionPrime 2609) ∧
      2609 < mixedSupportExtensionPrime 2609 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2609 < candidate →
        mixedSupportExtensionPrime 2609 ≤ candidate := by
  rw [mixedExtensionPrimeEq2609]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2617 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2617 :
    mixedSupportExtensionPrime 2617 = 2621 := by
  rfl

theorem mixedExtensionSemanticPrime2617 :
    Nat.Prime (mixedSupportExtensionPrime 2617) ∧
      2617 < mixedSupportExtensionPrime 2617 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2617 < candidate →
        mixedSupportExtensionPrime 2617 ≤ candidate := by
  rw [mixedExtensionPrimeEq2617]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2621 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2621 :
    mixedSupportExtensionPrime 2621 = 2633 := by
  rfl

theorem mixedExtensionSemanticPrime2621 :
    Nat.Prime (mixedSupportExtensionPrime 2621) ∧
      2621 < mixedSupportExtensionPrime 2621 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2621 < candidate →
        mixedSupportExtensionPrime 2621 ≤ candidate := by
  rw [mixedExtensionPrimeEq2621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2633 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2633 :
    mixedSupportExtensionPrime 2633 = 2647 := by
  rfl

theorem mixedExtensionSemanticPrime2633 :
    Nat.Prime (mixedSupportExtensionPrime 2633) ∧
      2633 < mixedSupportExtensionPrime 2633 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2633 < candidate →
        mixedSupportExtensionPrime 2633 ≤ candidate := by
  rw [mixedExtensionPrimeEq2633]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2647 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2647 :
    mixedSupportExtensionPrime 2647 = 2657 := by
  rfl

theorem mixedExtensionSemanticPrime2647 :
    Nat.Prime (mixedSupportExtensionPrime 2647) ∧
      2647 < mixedSupportExtensionPrime 2647 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2647 < candidate →
        mixedSupportExtensionPrime 2647 ≤ candidate := by
  rw [mixedExtensionPrimeEq2647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2657 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2657 :
    mixedSupportExtensionPrime 2657 = 2659 := by
  rfl

theorem mixedExtensionSemanticPrime2657 :
    Nat.Prime (mixedSupportExtensionPrime 2657) ∧
      2657 < mixedSupportExtensionPrime 2657 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2657 < candidate →
        mixedSupportExtensionPrime 2657 ≤ candidate := by
  rw [mixedExtensionPrimeEq2657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2659 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2659 :
    mixedSupportExtensionPrime 2659 = 2663 := by
  rfl

theorem mixedExtensionSemanticPrime2659 :
    Nat.Prime (mixedSupportExtensionPrime 2659) ∧
      2659 < mixedSupportExtensionPrime 2659 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2659 < candidate →
        mixedSupportExtensionPrime 2659 ≤ candidate := by
  rw [mixedExtensionPrimeEq2659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2663 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0011_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0011) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0011, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime2383
  · exact mixedExtensionSemanticPrime2389
  · exact mixedExtensionSemanticPrime2393
  · exact mixedExtensionSemanticPrime2399
  · exact mixedExtensionSemanticPrime2411
  · exact mixedExtensionSemanticPrime2417
  · exact mixedExtensionSemanticPrime2423
  · exact mixedExtensionSemanticPrime2437
  · exact mixedExtensionSemanticPrime2441
  · exact mixedExtensionSemanticPrime2447
  · exact mixedExtensionSemanticPrime2459
  · exact mixedExtensionSemanticPrime2467
  · exact mixedExtensionSemanticPrime2473
  · exact mixedExtensionSemanticPrime2477
  · exact mixedExtensionSemanticPrime2503
  · exact mixedExtensionSemanticPrime2521
  · exact mixedExtensionSemanticPrime2531
  · exact mixedExtensionSemanticPrime2539
  · exact mixedExtensionSemanticPrime2543
  · exact mixedExtensionSemanticPrime2549
  · exact mixedExtensionSemanticPrime2551
  · exact mixedExtensionSemanticPrime2557
  · exact mixedExtensionSemanticPrime2579
  · exact mixedExtensionSemanticPrime2591
  · exact mixedExtensionSemanticPrime2593
  · exact mixedExtensionSemanticPrime2609
  · exact mixedExtensionSemanticPrime2617
  · exact mixedExtensionSemanticPrime2621
  · exact mixedExtensionSemanticPrime2633
  · exact mixedExtensionSemanticPrime2647
  · exact mixedExtensionSemanticPrime2657
  · exact mixedExtensionSemanticPrime2659

#print axioms mixedExtensionSemanticInputs0011_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
