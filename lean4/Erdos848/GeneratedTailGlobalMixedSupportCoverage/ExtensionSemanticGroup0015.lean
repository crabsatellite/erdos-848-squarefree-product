import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0015 : List ℕ :=
  [3449, 3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557, 3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671, 3673]

theorem mixedExtensionPrimeEq3449 :
    mixedSupportExtensionPrime 3449 = 3457 := by
  rfl

theorem mixedExtensionSemanticPrime3449 :
    Nat.Prime (mixedSupportExtensionPrime 3449) ∧
      3449 < mixedSupportExtensionPrime 3449 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3449 < candidate →
        mixedSupportExtensionPrime 3449 ≤ candidate := by
  rw [mixedExtensionPrimeEq3449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3457 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3457 :
    mixedSupportExtensionPrime 3457 = 3461 := by
  rfl

theorem mixedExtensionSemanticPrime3457 :
    Nat.Prime (mixedSupportExtensionPrime 3457) ∧
      3457 < mixedSupportExtensionPrime 3457 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3457 < candidate →
        mixedSupportExtensionPrime 3457 ≤ candidate := by
  rw [mixedExtensionPrimeEq3457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3461 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3461 :
    mixedSupportExtensionPrime 3461 = 3463 := by
  rfl

theorem mixedExtensionSemanticPrime3461 :
    Nat.Prime (mixedSupportExtensionPrime 3461) ∧
      3461 < mixedSupportExtensionPrime 3461 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3461 < candidate →
        mixedSupportExtensionPrime 3461 ≤ candidate := by
  rw [mixedExtensionPrimeEq3461]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3463 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3463 :
    mixedSupportExtensionPrime 3463 = 3467 := by
  rfl

theorem mixedExtensionSemanticPrime3463 :
    Nat.Prime (mixedSupportExtensionPrime 3463) ∧
      3463 < mixedSupportExtensionPrime 3463 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3463 < candidate →
        mixedSupportExtensionPrime 3463 ≤ candidate := by
  rw [mixedExtensionPrimeEq3463]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3467 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3467 :
    mixedSupportExtensionPrime 3467 = 3469 := by
  rfl

theorem mixedExtensionSemanticPrime3467 :
    Nat.Prime (mixedSupportExtensionPrime 3467) ∧
      3467 < mixedSupportExtensionPrime 3467 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3467 < candidate →
        mixedSupportExtensionPrime 3467 ≤ candidate := by
  rw [mixedExtensionPrimeEq3467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3469 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3469 :
    mixedSupportExtensionPrime 3469 = 3491 := by
  rfl

theorem mixedExtensionSemanticPrime3469 :
    Nat.Prime (mixedSupportExtensionPrime 3469) ∧
      3469 < mixedSupportExtensionPrime 3469 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3469 < candidate →
        mixedSupportExtensionPrime 3469 ≤ candidate := by
  rw [mixedExtensionPrimeEq3469]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3491 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3491 :
    mixedSupportExtensionPrime 3491 = 3499 := by
  rfl

theorem mixedExtensionSemanticPrime3491 :
    Nat.Prime (mixedSupportExtensionPrime 3491) ∧
      3491 < mixedSupportExtensionPrime 3491 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3491 < candidate →
        mixedSupportExtensionPrime 3491 ≤ candidate := by
  rw [mixedExtensionPrimeEq3491]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3499 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3499 :
    mixedSupportExtensionPrime 3499 = 3511 := by
  rfl

theorem mixedExtensionSemanticPrime3499 :
    Nat.Prime (mixedSupportExtensionPrime 3499) ∧
      3499 < mixedSupportExtensionPrime 3499 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3499 < candidate →
        mixedSupportExtensionPrime 3499 ≤ candidate := by
  rw [mixedExtensionPrimeEq3499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3511 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3511 :
    mixedSupportExtensionPrime 3511 = 3517 := by
  rfl

theorem mixedExtensionSemanticPrime3511 :
    Nat.Prime (mixedSupportExtensionPrime 3511) ∧
      3511 < mixedSupportExtensionPrime 3511 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3511 < candidate →
        mixedSupportExtensionPrime 3511 ≤ candidate := by
  rw [mixedExtensionPrimeEq3511]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3517 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3517 :
    mixedSupportExtensionPrime 3517 = 3527 := by
  rfl

theorem mixedExtensionSemanticPrime3517 :
    Nat.Prime (mixedSupportExtensionPrime 3517) ∧
      3517 < mixedSupportExtensionPrime 3517 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3517 < candidate →
        mixedSupportExtensionPrime 3517 ≤ candidate := by
  rw [mixedExtensionPrimeEq3517]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3527 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3527 :
    mixedSupportExtensionPrime 3527 = 3529 := by
  rfl

theorem mixedExtensionSemanticPrime3527 :
    Nat.Prime (mixedSupportExtensionPrime 3527) ∧
      3527 < mixedSupportExtensionPrime 3527 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3527 < candidate →
        mixedSupportExtensionPrime 3527 ≤ candidate := by
  rw [mixedExtensionPrimeEq3527]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3529 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3529 :
    mixedSupportExtensionPrime 3529 = 3533 := by
  rfl

theorem mixedExtensionSemanticPrime3529 :
    Nat.Prime (mixedSupportExtensionPrime 3529) ∧
      3529 < mixedSupportExtensionPrime 3529 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3529 < candidate →
        mixedSupportExtensionPrime 3529 ≤ candidate := by
  rw [mixedExtensionPrimeEq3529]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3533 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3533 :
    mixedSupportExtensionPrime 3533 = 3539 := by
  rfl

theorem mixedExtensionSemanticPrime3533 :
    Nat.Prime (mixedSupportExtensionPrime 3533) ∧
      3533 < mixedSupportExtensionPrime 3533 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3533 < candidate →
        mixedSupportExtensionPrime 3533 ≤ candidate := by
  rw [mixedExtensionPrimeEq3533]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3539 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3539 :
    mixedSupportExtensionPrime 3539 = 3541 := by
  rfl

theorem mixedExtensionSemanticPrime3539 :
    Nat.Prime (mixedSupportExtensionPrime 3539) ∧
      3539 < mixedSupportExtensionPrime 3539 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3539 < candidate →
        mixedSupportExtensionPrime 3539 ≤ candidate := by
  rw [mixedExtensionPrimeEq3539]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3541 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3541 :
    mixedSupportExtensionPrime 3541 = 3547 := by
  rfl

theorem mixedExtensionSemanticPrime3541 :
    Nat.Prime (mixedSupportExtensionPrime 3541) ∧
      3541 < mixedSupportExtensionPrime 3541 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3541 < candidate →
        mixedSupportExtensionPrime 3541 ≤ candidate := by
  rw [mixedExtensionPrimeEq3541]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3547 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3547 :
    mixedSupportExtensionPrime 3547 = 3557 := by
  rfl

theorem mixedExtensionSemanticPrime3547 :
    Nat.Prime (mixedSupportExtensionPrime 3547) ∧
      3547 < mixedSupportExtensionPrime 3547 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3547 < candidate →
        mixedSupportExtensionPrime 3547 ≤ candidate := by
  rw [mixedExtensionPrimeEq3547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3557 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3557 :
    mixedSupportExtensionPrime 3557 = 3559 := by
  rfl

theorem mixedExtensionSemanticPrime3557 :
    Nat.Prime (mixedSupportExtensionPrime 3557) ∧
      3557 < mixedSupportExtensionPrime 3557 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3557 < candidate →
        mixedSupportExtensionPrime 3557 ≤ candidate := by
  rw [mixedExtensionPrimeEq3557]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3559 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3559 :
    mixedSupportExtensionPrime 3559 = 3571 := by
  rfl

theorem mixedExtensionSemanticPrime3559 :
    Nat.Prime (mixedSupportExtensionPrime 3559) ∧
      3559 < mixedSupportExtensionPrime 3559 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3559 < candidate →
        mixedSupportExtensionPrime 3559 ≤ candidate := by
  rw [mixedExtensionPrimeEq3559]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3571 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3571 :
    mixedSupportExtensionPrime 3571 = 3581 := by
  rfl

theorem mixedExtensionSemanticPrime3571 :
    Nat.Prime (mixedSupportExtensionPrime 3571) ∧
      3571 < mixedSupportExtensionPrime 3571 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3571 < candidate →
        mixedSupportExtensionPrime 3571 ≤ candidate := by
  rw [mixedExtensionPrimeEq3571]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3581 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3581 :
    mixedSupportExtensionPrime 3581 = 3583 := by
  rfl

theorem mixedExtensionSemanticPrime3581 :
    Nat.Prime (mixedSupportExtensionPrime 3581) ∧
      3581 < mixedSupportExtensionPrime 3581 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3581 < candidate →
        mixedSupportExtensionPrime 3581 ≤ candidate := by
  rw [mixedExtensionPrimeEq3581]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3583 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3583 :
    mixedSupportExtensionPrime 3583 = 3593 := by
  rfl

theorem mixedExtensionSemanticPrime3583 :
    Nat.Prime (mixedSupportExtensionPrime 3583) ∧
      3583 < mixedSupportExtensionPrime 3583 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3583 < candidate →
        mixedSupportExtensionPrime 3583 ≤ candidate := by
  rw [mixedExtensionPrimeEq3583]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3593 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3593 :
    mixedSupportExtensionPrime 3593 = 3607 := by
  rfl

theorem mixedExtensionSemanticPrime3593 :
    Nat.Prime (mixedSupportExtensionPrime 3593) ∧
      3593 < mixedSupportExtensionPrime 3593 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3593 < candidate →
        mixedSupportExtensionPrime 3593 ≤ candidate := by
  rw [mixedExtensionPrimeEq3593]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3607 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3607 :
    mixedSupportExtensionPrime 3607 = 3613 := by
  rfl

theorem mixedExtensionSemanticPrime3607 :
    Nat.Prime (mixedSupportExtensionPrime 3607) ∧
      3607 < mixedSupportExtensionPrime 3607 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3607 < candidate →
        mixedSupportExtensionPrime 3607 ≤ candidate := by
  rw [mixedExtensionPrimeEq3607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3613 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3613 :
    mixedSupportExtensionPrime 3613 = 3617 := by
  rfl

theorem mixedExtensionSemanticPrime3613 :
    Nat.Prime (mixedSupportExtensionPrime 3613) ∧
      3613 < mixedSupportExtensionPrime 3613 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3613 < candidate →
        mixedSupportExtensionPrime 3613 ≤ candidate := by
  rw [mixedExtensionPrimeEq3613]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3617 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3617 :
    mixedSupportExtensionPrime 3617 = 3623 := by
  rfl

theorem mixedExtensionSemanticPrime3617 :
    Nat.Prime (mixedSupportExtensionPrime 3617) ∧
      3617 < mixedSupportExtensionPrime 3617 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3617 < candidate →
        mixedSupportExtensionPrime 3617 ≤ candidate := by
  rw [mixedExtensionPrimeEq3617]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3623 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3623 :
    mixedSupportExtensionPrime 3623 = 3631 := by
  rfl

theorem mixedExtensionSemanticPrime3623 :
    Nat.Prime (mixedSupportExtensionPrime 3623) ∧
      3623 < mixedSupportExtensionPrime 3623 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3623 < candidate →
        mixedSupportExtensionPrime 3623 ≤ candidate := by
  rw [mixedExtensionPrimeEq3623]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3631 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3631 :
    mixedSupportExtensionPrime 3631 = 3637 := by
  rfl

theorem mixedExtensionSemanticPrime3631 :
    Nat.Prime (mixedSupportExtensionPrime 3631) ∧
      3631 < mixedSupportExtensionPrime 3631 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3631 < candidate →
        mixedSupportExtensionPrime 3631 ≤ candidate := by
  rw [mixedExtensionPrimeEq3631]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3637 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3637 :
    mixedSupportExtensionPrime 3637 = 3643 := by
  rfl

theorem mixedExtensionSemanticPrime3637 :
    Nat.Prime (mixedSupportExtensionPrime 3637) ∧
      3637 < mixedSupportExtensionPrime 3637 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3637 < candidate →
        mixedSupportExtensionPrime 3637 ≤ candidate := by
  rw [mixedExtensionPrimeEq3637]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3643 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3643 :
    mixedSupportExtensionPrime 3643 = 3659 := by
  rfl

theorem mixedExtensionSemanticPrime3643 :
    Nat.Prime (mixedSupportExtensionPrime 3643) ∧
      3643 < mixedSupportExtensionPrime 3643 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3643 < candidate →
        mixedSupportExtensionPrime 3643 ≤ candidate := by
  rw [mixedExtensionPrimeEq3643]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3659 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3659 :
    mixedSupportExtensionPrime 3659 = 3671 := by
  rfl

theorem mixedExtensionSemanticPrime3659 :
    Nat.Prime (mixedSupportExtensionPrime 3659) ∧
      3659 < mixedSupportExtensionPrime 3659 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3659 < candidate →
        mixedSupportExtensionPrime 3659 ≤ candidate := by
  rw [mixedExtensionPrimeEq3659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3671 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3671 :
    mixedSupportExtensionPrime 3671 = 3673 := by
  rfl

theorem mixedExtensionSemanticPrime3671 :
    Nat.Prime (mixedSupportExtensionPrime 3671) ∧
      3671 < mixedSupportExtensionPrime 3671 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3671 < candidate →
        mixedSupportExtensionPrime 3671 ≤ candidate := by
  rw [mixedExtensionPrimeEq3671]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3673 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3673 :
    mixedSupportExtensionPrime 3673 = 3677 := by
  rfl

theorem mixedExtensionSemanticPrime3673 :
    Nat.Prime (mixedSupportExtensionPrime 3673) ∧
      3673 < mixedSupportExtensionPrime 3673 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3673 < candidate →
        mixedSupportExtensionPrime 3673 ≤ candidate := by
  rw [mixedExtensionPrimeEq3673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3677 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0015_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0015) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0015, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime3449
  · exact mixedExtensionSemanticPrime3457
  · exact mixedExtensionSemanticPrime3461
  · exact mixedExtensionSemanticPrime3463
  · exact mixedExtensionSemanticPrime3467
  · exact mixedExtensionSemanticPrime3469
  · exact mixedExtensionSemanticPrime3491
  · exact mixedExtensionSemanticPrime3499
  · exact mixedExtensionSemanticPrime3511
  · exact mixedExtensionSemanticPrime3517
  · exact mixedExtensionSemanticPrime3527
  · exact mixedExtensionSemanticPrime3529
  · exact mixedExtensionSemanticPrime3533
  · exact mixedExtensionSemanticPrime3539
  · exact mixedExtensionSemanticPrime3541
  · exact mixedExtensionSemanticPrime3547
  · exact mixedExtensionSemanticPrime3557
  · exact mixedExtensionSemanticPrime3559
  · exact mixedExtensionSemanticPrime3571
  · exact mixedExtensionSemanticPrime3581
  · exact mixedExtensionSemanticPrime3583
  · exact mixedExtensionSemanticPrime3593
  · exact mixedExtensionSemanticPrime3607
  · exact mixedExtensionSemanticPrime3613
  · exact mixedExtensionSemanticPrime3617
  · exact mixedExtensionSemanticPrime3623
  · exact mixedExtensionSemanticPrime3631
  · exact mixedExtensionSemanticPrime3637
  · exact mixedExtensionSemanticPrime3643
  · exact mixedExtensionSemanticPrime3659
  · exact mixedExtensionSemanticPrime3671
  · exact mixedExtensionSemanticPrime3673

#print axioms mixedExtensionSemanticInputs0015_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
