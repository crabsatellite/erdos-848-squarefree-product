import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0029 : List ℕ :=
  [7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573]

theorem mixedExtensionPrimeEq7297 :
    mixedSupportExtensionPrime 7297 = 7307 := by
  rfl

theorem mixedExtensionSemanticPrime7297 :
    Nat.Prime (mixedSupportExtensionPrime 7297) ∧
      7297 < mixedSupportExtensionPrime 7297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7297 < candidate →
        mixedSupportExtensionPrime 7297 ≤ candidate := by
  rw [mixedExtensionPrimeEq7297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7307 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7307 :
    mixedSupportExtensionPrime 7307 = 7309 := by
  rfl

theorem mixedExtensionSemanticPrime7307 :
    Nat.Prime (mixedSupportExtensionPrime 7307) ∧
      7307 < mixedSupportExtensionPrime 7307 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7307 < candidate →
        mixedSupportExtensionPrime 7307 ≤ candidate := by
  rw [mixedExtensionPrimeEq7307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7309 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7309 :
    mixedSupportExtensionPrime 7309 = 7321 := by
  rfl

theorem mixedExtensionSemanticPrime7309 :
    Nat.Prime (mixedSupportExtensionPrime 7309) ∧
      7309 < mixedSupportExtensionPrime 7309 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7309 < candidate →
        mixedSupportExtensionPrime 7309 ≤ candidate := by
  rw [mixedExtensionPrimeEq7309]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7321 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7321 :
    mixedSupportExtensionPrime 7321 = 7331 := by
  rfl

theorem mixedExtensionSemanticPrime7321 :
    Nat.Prime (mixedSupportExtensionPrime 7321) ∧
      7321 < mixedSupportExtensionPrime 7321 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7321 < candidate →
        mixedSupportExtensionPrime 7321 ≤ candidate := by
  rw [mixedExtensionPrimeEq7321]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7331 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7331 :
    mixedSupportExtensionPrime 7331 = 7333 := by
  rfl

theorem mixedExtensionSemanticPrime7331 :
    Nat.Prime (mixedSupportExtensionPrime 7331) ∧
      7331 < mixedSupportExtensionPrime 7331 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7331 < candidate →
        mixedSupportExtensionPrime 7331 ≤ candidate := by
  rw [mixedExtensionPrimeEq7331]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7333 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7333 :
    mixedSupportExtensionPrime 7333 = 7349 := by
  rfl

theorem mixedExtensionSemanticPrime7333 :
    Nat.Prime (mixedSupportExtensionPrime 7333) ∧
      7333 < mixedSupportExtensionPrime 7333 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7333 < candidate →
        mixedSupportExtensionPrime 7333 ≤ candidate := by
  rw [mixedExtensionPrimeEq7333]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7349 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7349 :
    mixedSupportExtensionPrime 7349 = 7351 := by
  rfl

theorem mixedExtensionSemanticPrime7349 :
    Nat.Prime (mixedSupportExtensionPrime 7349) ∧
      7349 < mixedSupportExtensionPrime 7349 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7349 < candidate →
        mixedSupportExtensionPrime 7349 ≤ candidate := by
  rw [mixedExtensionPrimeEq7349]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7351 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7351 :
    mixedSupportExtensionPrime 7351 = 7369 := by
  rfl

theorem mixedExtensionSemanticPrime7351 :
    Nat.Prime (mixedSupportExtensionPrime 7351) ∧
      7351 < mixedSupportExtensionPrime 7351 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7351 < candidate →
        mixedSupportExtensionPrime 7351 ≤ candidate := by
  rw [mixedExtensionPrimeEq7351]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7369 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7369 :
    mixedSupportExtensionPrime 7369 = 7393 := by
  rfl

theorem mixedExtensionSemanticPrime7369 :
    Nat.Prime (mixedSupportExtensionPrime 7369) ∧
      7369 < mixedSupportExtensionPrime 7369 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7369 < candidate →
        mixedSupportExtensionPrime 7369 ≤ candidate := by
  rw [mixedExtensionPrimeEq7369]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7393 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7393 :
    mixedSupportExtensionPrime 7393 = 7411 := by
  rfl

theorem mixedExtensionSemanticPrime7393 :
    Nat.Prime (mixedSupportExtensionPrime 7393) ∧
      7393 < mixedSupportExtensionPrime 7393 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7393 < candidate →
        mixedSupportExtensionPrime 7393 ≤ candidate := by
  rw [mixedExtensionPrimeEq7393]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7411 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7411 :
    mixedSupportExtensionPrime 7411 = 7417 := by
  rfl

theorem mixedExtensionSemanticPrime7411 :
    Nat.Prime (mixedSupportExtensionPrime 7411) ∧
      7411 < mixedSupportExtensionPrime 7411 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7411 < candidate →
        mixedSupportExtensionPrime 7411 ≤ candidate := by
  rw [mixedExtensionPrimeEq7411]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7417 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7417 :
    mixedSupportExtensionPrime 7417 = 7433 := by
  rfl

theorem mixedExtensionSemanticPrime7417 :
    Nat.Prime (mixedSupportExtensionPrime 7417) ∧
      7417 < mixedSupportExtensionPrime 7417 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7417 < candidate →
        mixedSupportExtensionPrime 7417 ≤ candidate := by
  rw [mixedExtensionPrimeEq7417]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7433 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7433 :
    mixedSupportExtensionPrime 7433 = 7451 := by
  rfl

theorem mixedExtensionSemanticPrime7433 :
    Nat.Prime (mixedSupportExtensionPrime 7433) ∧
      7433 < mixedSupportExtensionPrime 7433 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7433 < candidate →
        mixedSupportExtensionPrime 7433 ≤ candidate := by
  rw [mixedExtensionPrimeEq7433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7451 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7451 :
    mixedSupportExtensionPrime 7451 = 7457 := by
  rfl

theorem mixedExtensionSemanticPrime7451 :
    Nat.Prime (mixedSupportExtensionPrime 7451) ∧
      7451 < mixedSupportExtensionPrime 7451 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7451 < candidate →
        mixedSupportExtensionPrime 7451 ≤ candidate := by
  rw [mixedExtensionPrimeEq7451]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7457 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7457 :
    mixedSupportExtensionPrime 7457 = 7459 := by
  rfl

theorem mixedExtensionSemanticPrime7457 :
    Nat.Prime (mixedSupportExtensionPrime 7457) ∧
      7457 < mixedSupportExtensionPrime 7457 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7457 < candidate →
        mixedSupportExtensionPrime 7457 ≤ candidate := by
  rw [mixedExtensionPrimeEq7457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7459 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7459 :
    mixedSupportExtensionPrime 7459 = 7477 := by
  rfl

theorem mixedExtensionSemanticPrime7459 :
    Nat.Prime (mixedSupportExtensionPrime 7459) ∧
      7459 < mixedSupportExtensionPrime 7459 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7459 < candidate →
        mixedSupportExtensionPrime 7459 ≤ candidate := by
  rw [mixedExtensionPrimeEq7459]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7477 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7477 :
    mixedSupportExtensionPrime 7477 = 7481 := by
  rfl

theorem mixedExtensionSemanticPrime7477 :
    Nat.Prime (mixedSupportExtensionPrime 7477) ∧
      7477 < mixedSupportExtensionPrime 7477 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7477 < candidate →
        mixedSupportExtensionPrime 7477 ≤ candidate := by
  rw [mixedExtensionPrimeEq7477]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7481 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7481 :
    mixedSupportExtensionPrime 7481 = 7487 := by
  rfl

theorem mixedExtensionSemanticPrime7481 :
    Nat.Prime (mixedSupportExtensionPrime 7481) ∧
      7481 < mixedSupportExtensionPrime 7481 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7481 < candidate →
        mixedSupportExtensionPrime 7481 ≤ candidate := by
  rw [mixedExtensionPrimeEq7481]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7487 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7487 :
    mixedSupportExtensionPrime 7487 = 7489 := by
  rfl

theorem mixedExtensionSemanticPrime7487 :
    Nat.Prime (mixedSupportExtensionPrime 7487) ∧
      7487 < mixedSupportExtensionPrime 7487 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7487 < candidate →
        mixedSupportExtensionPrime 7487 ≤ candidate := by
  rw [mixedExtensionPrimeEq7487]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7489 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7489 :
    mixedSupportExtensionPrime 7489 = 7499 := by
  rfl

theorem mixedExtensionSemanticPrime7489 :
    Nat.Prime (mixedSupportExtensionPrime 7489) ∧
      7489 < mixedSupportExtensionPrime 7489 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7489 < candidate →
        mixedSupportExtensionPrime 7489 ≤ candidate := by
  rw [mixedExtensionPrimeEq7489]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7499 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7499 :
    mixedSupportExtensionPrime 7499 = 7507 := by
  rfl

theorem mixedExtensionSemanticPrime7499 :
    Nat.Prime (mixedSupportExtensionPrime 7499) ∧
      7499 < mixedSupportExtensionPrime 7499 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7499 < candidate →
        mixedSupportExtensionPrime 7499 ≤ candidate := by
  rw [mixedExtensionPrimeEq7499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7507 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7507 :
    mixedSupportExtensionPrime 7507 = 7517 := by
  rfl

theorem mixedExtensionSemanticPrime7507 :
    Nat.Prime (mixedSupportExtensionPrime 7507) ∧
      7507 < mixedSupportExtensionPrime 7507 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7507 < candidate →
        mixedSupportExtensionPrime 7507 ≤ candidate := by
  rw [mixedExtensionPrimeEq7507]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7517 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7517 :
    mixedSupportExtensionPrime 7517 = 7523 := by
  rfl

theorem mixedExtensionSemanticPrime7517 :
    Nat.Prime (mixedSupportExtensionPrime 7517) ∧
      7517 < mixedSupportExtensionPrime 7517 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7517 < candidate →
        mixedSupportExtensionPrime 7517 ≤ candidate := by
  rw [mixedExtensionPrimeEq7517]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7523 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7523 :
    mixedSupportExtensionPrime 7523 = 7529 := by
  rfl

theorem mixedExtensionSemanticPrime7523 :
    Nat.Prime (mixedSupportExtensionPrime 7523) ∧
      7523 < mixedSupportExtensionPrime 7523 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7523 < candidate →
        mixedSupportExtensionPrime 7523 ≤ candidate := by
  rw [mixedExtensionPrimeEq7523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7529 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7529 :
    mixedSupportExtensionPrime 7529 = 7537 := by
  rfl

theorem mixedExtensionSemanticPrime7529 :
    Nat.Prime (mixedSupportExtensionPrime 7529) ∧
      7529 < mixedSupportExtensionPrime 7529 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7529 < candidate →
        mixedSupportExtensionPrime 7529 ≤ candidate := by
  rw [mixedExtensionPrimeEq7529]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7537 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7537 :
    mixedSupportExtensionPrime 7537 = 7541 := by
  rfl

theorem mixedExtensionSemanticPrime7537 :
    Nat.Prime (mixedSupportExtensionPrime 7537) ∧
      7537 < mixedSupportExtensionPrime 7537 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7537 < candidate →
        mixedSupportExtensionPrime 7537 ≤ candidate := by
  rw [mixedExtensionPrimeEq7537]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7541 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7541 :
    mixedSupportExtensionPrime 7541 = 7547 := by
  rfl

theorem mixedExtensionSemanticPrime7541 :
    Nat.Prime (mixedSupportExtensionPrime 7541) ∧
      7541 < mixedSupportExtensionPrime 7541 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7541 < candidate →
        mixedSupportExtensionPrime 7541 ≤ candidate := by
  rw [mixedExtensionPrimeEq7541]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7547 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7547 :
    mixedSupportExtensionPrime 7547 = 7549 := by
  rfl

theorem mixedExtensionSemanticPrime7547 :
    Nat.Prime (mixedSupportExtensionPrime 7547) ∧
      7547 < mixedSupportExtensionPrime 7547 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7547 < candidate →
        mixedSupportExtensionPrime 7547 ≤ candidate := by
  rw [mixedExtensionPrimeEq7547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7549 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7549 :
    mixedSupportExtensionPrime 7549 = 7559 := by
  rfl

theorem mixedExtensionSemanticPrime7549 :
    Nat.Prime (mixedSupportExtensionPrime 7549) ∧
      7549 < mixedSupportExtensionPrime 7549 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7549 < candidate →
        mixedSupportExtensionPrime 7549 ≤ candidate := by
  rw [mixedExtensionPrimeEq7549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7559 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7559 :
    mixedSupportExtensionPrime 7559 = 7561 := by
  rfl

theorem mixedExtensionSemanticPrime7559 :
    Nat.Prime (mixedSupportExtensionPrime 7559) ∧
      7559 < mixedSupportExtensionPrime 7559 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7559 < candidate →
        mixedSupportExtensionPrime 7559 ≤ candidate := by
  rw [mixedExtensionPrimeEq7559]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7561 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7561 :
    mixedSupportExtensionPrime 7561 = 7573 := by
  rfl

theorem mixedExtensionSemanticPrime7561 :
    Nat.Prime (mixedSupportExtensionPrime 7561) ∧
      7561 < mixedSupportExtensionPrime 7561 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7561 < candidate →
        mixedSupportExtensionPrime 7561 ≤ candidate := by
  rw [mixedExtensionPrimeEq7561]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7573 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7573 :
    mixedSupportExtensionPrime 7573 = 7577 := by
  rfl

theorem mixedExtensionSemanticPrime7573 :
    Nat.Prime (mixedSupportExtensionPrime 7573) ∧
      7573 < mixedSupportExtensionPrime 7573 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7573 < candidate →
        mixedSupportExtensionPrime 7573 ≤ candidate := by
  rw [mixedExtensionPrimeEq7573]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7577 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0029_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0029) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0029, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime7297
  · exact mixedExtensionSemanticPrime7307
  · exact mixedExtensionSemanticPrime7309
  · exact mixedExtensionSemanticPrime7321
  · exact mixedExtensionSemanticPrime7331
  · exact mixedExtensionSemanticPrime7333
  · exact mixedExtensionSemanticPrime7349
  · exact mixedExtensionSemanticPrime7351
  · exact mixedExtensionSemanticPrime7369
  · exact mixedExtensionSemanticPrime7393
  · exact mixedExtensionSemanticPrime7411
  · exact mixedExtensionSemanticPrime7417
  · exact mixedExtensionSemanticPrime7433
  · exact mixedExtensionSemanticPrime7451
  · exact mixedExtensionSemanticPrime7457
  · exact mixedExtensionSemanticPrime7459
  · exact mixedExtensionSemanticPrime7477
  · exact mixedExtensionSemanticPrime7481
  · exact mixedExtensionSemanticPrime7487
  · exact mixedExtensionSemanticPrime7489
  · exact mixedExtensionSemanticPrime7499
  · exact mixedExtensionSemanticPrime7507
  · exact mixedExtensionSemanticPrime7517
  · exact mixedExtensionSemanticPrime7523
  · exact mixedExtensionSemanticPrime7529
  · exact mixedExtensionSemanticPrime7537
  · exact mixedExtensionSemanticPrime7541
  · exact mixedExtensionSemanticPrime7547
  · exact mixedExtensionSemanticPrime7549
  · exact mixedExtensionSemanticPrime7559
  · exact mixedExtensionSemanticPrime7561
  · exact mixedExtensionSemanticPrime7573

#print axioms mixedExtensionSemanticInputs0029_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
