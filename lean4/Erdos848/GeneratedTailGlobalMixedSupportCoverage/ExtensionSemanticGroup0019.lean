import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0019 : List ℕ :=
  [4493, 4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759]

theorem mixedExtensionPrimeEq4493 :
    mixedSupportExtensionPrime 4493 = 4507 := by
  rfl

theorem mixedExtensionSemanticPrime4493 :
    Nat.Prime (mixedSupportExtensionPrime 4493) ∧
      4493 < mixedSupportExtensionPrime 4493 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4493 < candidate →
        mixedSupportExtensionPrime 4493 ≤ candidate := by
  rw [mixedExtensionPrimeEq4493]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4507 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4507 :
    mixedSupportExtensionPrime 4507 = 4513 := by
  rfl

theorem mixedExtensionSemanticPrime4507 :
    Nat.Prime (mixedSupportExtensionPrime 4507) ∧
      4507 < mixedSupportExtensionPrime 4507 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4507 < candidate →
        mixedSupportExtensionPrime 4507 ≤ candidate := by
  rw [mixedExtensionPrimeEq4507]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4513 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4513 :
    mixedSupportExtensionPrime 4513 = 4517 := by
  rfl

theorem mixedExtensionSemanticPrime4513 :
    Nat.Prime (mixedSupportExtensionPrime 4513) ∧
      4513 < mixedSupportExtensionPrime 4513 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4513 < candidate →
        mixedSupportExtensionPrime 4513 ≤ candidate := by
  rw [mixedExtensionPrimeEq4513]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4517 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4517 :
    mixedSupportExtensionPrime 4517 = 4519 := by
  rfl

theorem mixedExtensionSemanticPrime4517 :
    Nat.Prime (mixedSupportExtensionPrime 4517) ∧
      4517 < mixedSupportExtensionPrime 4517 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4517 < candidate →
        mixedSupportExtensionPrime 4517 ≤ candidate := by
  rw [mixedExtensionPrimeEq4517]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4519 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4519 :
    mixedSupportExtensionPrime 4519 = 4523 := by
  rfl

theorem mixedExtensionSemanticPrime4519 :
    Nat.Prime (mixedSupportExtensionPrime 4519) ∧
      4519 < mixedSupportExtensionPrime 4519 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4519 < candidate →
        mixedSupportExtensionPrime 4519 ≤ candidate := by
  rw [mixedExtensionPrimeEq4519]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4523 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4523 :
    mixedSupportExtensionPrime 4523 = 4547 := by
  rfl

theorem mixedExtensionSemanticPrime4523 :
    Nat.Prime (mixedSupportExtensionPrime 4523) ∧
      4523 < mixedSupportExtensionPrime 4523 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4523 < candidate →
        mixedSupportExtensionPrime 4523 ≤ candidate := by
  rw [mixedExtensionPrimeEq4523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4547 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4547 :
    mixedSupportExtensionPrime 4547 = 4549 := by
  rfl

theorem mixedExtensionSemanticPrime4547 :
    Nat.Prime (mixedSupportExtensionPrime 4547) ∧
      4547 < mixedSupportExtensionPrime 4547 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4547 < candidate →
        mixedSupportExtensionPrime 4547 ≤ candidate := by
  rw [mixedExtensionPrimeEq4547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4549 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4549 :
    mixedSupportExtensionPrime 4549 = 4561 := by
  rfl

theorem mixedExtensionSemanticPrime4549 :
    Nat.Prime (mixedSupportExtensionPrime 4549) ∧
      4549 < mixedSupportExtensionPrime 4549 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4549 < candidate →
        mixedSupportExtensionPrime 4549 ≤ candidate := by
  rw [mixedExtensionPrimeEq4549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4561 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4561 :
    mixedSupportExtensionPrime 4561 = 4567 := by
  rfl

theorem mixedExtensionSemanticPrime4561 :
    Nat.Prime (mixedSupportExtensionPrime 4561) ∧
      4561 < mixedSupportExtensionPrime 4561 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4561 < candidate →
        mixedSupportExtensionPrime 4561 ≤ candidate := by
  rw [mixedExtensionPrimeEq4561]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4567 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4567 :
    mixedSupportExtensionPrime 4567 = 4583 := by
  rfl

theorem mixedExtensionSemanticPrime4567 :
    Nat.Prime (mixedSupportExtensionPrime 4567) ∧
      4567 < mixedSupportExtensionPrime 4567 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4567 < candidate →
        mixedSupportExtensionPrime 4567 ≤ candidate := by
  rw [mixedExtensionPrimeEq4567]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4583 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4583 :
    mixedSupportExtensionPrime 4583 = 4591 := by
  rfl

theorem mixedExtensionSemanticPrime4583 :
    Nat.Prime (mixedSupportExtensionPrime 4583) ∧
      4583 < mixedSupportExtensionPrime 4583 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4583 < candidate →
        mixedSupportExtensionPrime 4583 ≤ candidate := by
  rw [mixedExtensionPrimeEq4583]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4591 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4591 :
    mixedSupportExtensionPrime 4591 = 4597 := by
  rfl

theorem mixedExtensionSemanticPrime4591 :
    Nat.Prime (mixedSupportExtensionPrime 4591) ∧
      4591 < mixedSupportExtensionPrime 4591 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4591 < candidate →
        mixedSupportExtensionPrime 4591 ≤ candidate := by
  rw [mixedExtensionPrimeEq4591]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4597 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4597 :
    mixedSupportExtensionPrime 4597 = 4603 := by
  rfl

theorem mixedExtensionSemanticPrime4597 :
    Nat.Prime (mixedSupportExtensionPrime 4597) ∧
      4597 < mixedSupportExtensionPrime 4597 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4597 < candidate →
        mixedSupportExtensionPrime 4597 ≤ candidate := by
  rw [mixedExtensionPrimeEq4597]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4603 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4603 :
    mixedSupportExtensionPrime 4603 = 4621 := by
  rfl

theorem mixedExtensionSemanticPrime4603 :
    Nat.Prime (mixedSupportExtensionPrime 4603) ∧
      4603 < mixedSupportExtensionPrime 4603 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4603 < candidate →
        mixedSupportExtensionPrime 4603 ≤ candidate := by
  rw [mixedExtensionPrimeEq4603]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4621 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4621 :
    mixedSupportExtensionPrime 4621 = 4637 := by
  rfl

theorem mixedExtensionSemanticPrime4621 :
    Nat.Prime (mixedSupportExtensionPrime 4621) ∧
      4621 < mixedSupportExtensionPrime 4621 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4621 < candidate →
        mixedSupportExtensionPrime 4621 ≤ candidate := by
  rw [mixedExtensionPrimeEq4621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4637 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4637 :
    mixedSupportExtensionPrime 4637 = 4639 := by
  rfl

theorem mixedExtensionSemanticPrime4637 :
    Nat.Prime (mixedSupportExtensionPrime 4637) ∧
      4637 < mixedSupportExtensionPrime 4637 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4637 < candidate →
        mixedSupportExtensionPrime 4637 ≤ candidate := by
  rw [mixedExtensionPrimeEq4637]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4639 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4639 :
    mixedSupportExtensionPrime 4639 = 4643 := by
  rfl

theorem mixedExtensionSemanticPrime4639 :
    Nat.Prime (mixedSupportExtensionPrime 4639) ∧
      4639 < mixedSupportExtensionPrime 4639 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4639 < candidate →
        mixedSupportExtensionPrime 4639 ≤ candidate := by
  rw [mixedExtensionPrimeEq4639]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4643 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4643 :
    mixedSupportExtensionPrime 4643 = 4649 := by
  rfl

theorem mixedExtensionSemanticPrime4643 :
    Nat.Prime (mixedSupportExtensionPrime 4643) ∧
      4643 < mixedSupportExtensionPrime 4643 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4643 < candidate →
        mixedSupportExtensionPrime 4643 ≤ candidate := by
  rw [mixedExtensionPrimeEq4643]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4649 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4649 :
    mixedSupportExtensionPrime 4649 = 4651 := by
  rfl

theorem mixedExtensionSemanticPrime4649 :
    Nat.Prime (mixedSupportExtensionPrime 4649) ∧
      4649 < mixedSupportExtensionPrime 4649 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4649 < candidate →
        mixedSupportExtensionPrime 4649 ≤ candidate := by
  rw [mixedExtensionPrimeEq4649]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4651 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4651 :
    mixedSupportExtensionPrime 4651 = 4657 := by
  rfl

theorem mixedExtensionSemanticPrime4651 :
    Nat.Prime (mixedSupportExtensionPrime 4651) ∧
      4651 < mixedSupportExtensionPrime 4651 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4651 < candidate →
        mixedSupportExtensionPrime 4651 ≤ candidate := by
  rw [mixedExtensionPrimeEq4651]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4657 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4657 :
    mixedSupportExtensionPrime 4657 = 4663 := by
  rfl

theorem mixedExtensionSemanticPrime4657 :
    Nat.Prime (mixedSupportExtensionPrime 4657) ∧
      4657 < mixedSupportExtensionPrime 4657 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4657 < candidate →
        mixedSupportExtensionPrime 4657 ≤ candidate := by
  rw [mixedExtensionPrimeEq4657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4663 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4663 :
    mixedSupportExtensionPrime 4663 = 4673 := by
  rfl

theorem mixedExtensionSemanticPrime4663 :
    Nat.Prime (mixedSupportExtensionPrime 4663) ∧
      4663 < mixedSupportExtensionPrime 4663 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4663 < candidate →
        mixedSupportExtensionPrime 4663 ≤ candidate := by
  rw [mixedExtensionPrimeEq4663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4673 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4673 :
    mixedSupportExtensionPrime 4673 = 4679 := by
  rfl

theorem mixedExtensionSemanticPrime4673 :
    Nat.Prime (mixedSupportExtensionPrime 4673) ∧
      4673 < mixedSupportExtensionPrime 4673 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4673 < candidate →
        mixedSupportExtensionPrime 4673 ≤ candidate := by
  rw [mixedExtensionPrimeEq4673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4679 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4679 :
    mixedSupportExtensionPrime 4679 = 4691 := by
  rfl

theorem mixedExtensionSemanticPrime4679 :
    Nat.Prime (mixedSupportExtensionPrime 4679) ∧
      4679 < mixedSupportExtensionPrime 4679 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4679 < candidate →
        mixedSupportExtensionPrime 4679 ≤ candidate := by
  rw [mixedExtensionPrimeEq4679]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4691 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4691 :
    mixedSupportExtensionPrime 4691 = 4703 := by
  rfl

theorem mixedExtensionSemanticPrime4691 :
    Nat.Prime (mixedSupportExtensionPrime 4691) ∧
      4691 < mixedSupportExtensionPrime 4691 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4691 < candidate →
        mixedSupportExtensionPrime 4691 ≤ candidate := by
  rw [mixedExtensionPrimeEq4691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4703 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4703 :
    mixedSupportExtensionPrime 4703 = 4721 := by
  rfl

theorem mixedExtensionSemanticPrime4703 :
    Nat.Prime (mixedSupportExtensionPrime 4703) ∧
      4703 < mixedSupportExtensionPrime 4703 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4703 < candidate →
        mixedSupportExtensionPrime 4703 ≤ candidate := by
  rw [mixedExtensionPrimeEq4703]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4721 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4721 :
    mixedSupportExtensionPrime 4721 = 4723 := by
  rfl

theorem mixedExtensionSemanticPrime4721 :
    Nat.Prime (mixedSupportExtensionPrime 4721) ∧
      4721 < mixedSupportExtensionPrime 4721 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4721 < candidate →
        mixedSupportExtensionPrime 4721 ≤ candidate := by
  rw [mixedExtensionPrimeEq4721]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4723 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4723 :
    mixedSupportExtensionPrime 4723 = 4729 := by
  rfl

theorem mixedExtensionSemanticPrime4723 :
    Nat.Prime (mixedSupportExtensionPrime 4723) ∧
      4723 < mixedSupportExtensionPrime 4723 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4723 < candidate →
        mixedSupportExtensionPrime 4723 ≤ candidate := by
  rw [mixedExtensionPrimeEq4723]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4729 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4729 :
    mixedSupportExtensionPrime 4729 = 4733 := by
  rfl

theorem mixedExtensionSemanticPrime4729 :
    Nat.Prime (mixedSupportExtensionPrime 4729) ∧
      4729 < mixedSupportExtensionPrime 4729 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4729 < candidate →
        mixedSupportExtensionPrime 4729 ≤ candidate := by
  rw [mixedExtensionPrimeEq4729]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4733 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4733 :
    mixedSupportExtensionPrime 4733 = 4751 := by
  rfl

theorem mixedExtensionSemanticPrime4733 :
    Nat.Prime (mixedSupportExtensionPrime 4733) ∧
      4733 < mixedSupportExtensionPrime 4733 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4733 < candidate →
        mixedSupportExtensionPrime 4733 ≤ candidate := by
  rw [mixedExtensionPrimeEq4733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4751 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4751 :
    mixedSupportExtensionPrime 4751 = 4759 := by
  rfl

theorem mixedExtensionSemanticPrime4751 :
    Nat.Prime (mixedSupportExtensionPrime 4751) ∧
      4751 < mixedSupportExtensionPrime 4751 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4751 < candidate →
        mixedSupportExtensionPrime 4751 ≤ candidate := by
  rw [mixedExtensionPrimeEq4751]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4759 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4759 :
    mixedSupportExtensionPrime 4759 = 4783 := by
  rfl

theorem mixedExtensionSemanticPrime4759 :
    Nat.Prime (mixedSupportExtensionPrime 4759) ∧
      4759 < mixedSupportExtensionPrime 4759 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4759 < candidate →
        mixedSupportExtensionPrime 4759 ≤ candidate := by
  rw [mixedExtensionPrimeEq4759]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4783 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0019_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0019) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0019, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime4493
  · exact mixedExtensionSemanticPrime4507
  · exact mixedExtensionSemanticPrime4513
  · exact mixedExtensionSemanticPrime4517
  · exact mixedExtensionSemanticPrime4519
  · exact mixedExtensionSemanticPrime4523
  · exact mixedExtensionSemanticPrime4547
  · exact mixedExtensionSemanticPrime4549
  · exact mixedExtensionSemanticPrime4561
  · exact mixedExtensionSemanticPrime4567
  · exact mixedExtensionSemanticPrime4583
  · exact mixedExtensionSemanticPrime4591
  · exact mixedExtensionSemanticPrime4597
  · exact mixedExtensionSemanticPrime4603
  · exact mixedExtensionSemanticPrime4621
  · exact mixedExtensionSemanticPrime4637
  · exact mixedExtensionSemanticPrime4639
  · exact mixedExtensionSemanticPrime4643
  · exact mixedExtensionSemanticPrime4649
  · exact mixedExtensionSemanticPrime4651
  · exact mixedExtensionSemanticPrime4657
  · exact mixedExtensionSemanticPrime4663
  · exact mixedExtensionSemanticPrime4673
  · exact mixedExtensionSemanticPrime4679
  · exact mixedExtensionSemanticPrime4691
  · exact mixedExtensionSemanticPrime4703
  · exact mixedExtensionSemanticPrime4721
  · exact mixedExtensionSemanticPrime4723
  · exact mixedExtensionSemanticPrime4729
  · exact mixedExtensionSemanticPrime4733
  · exact mixedExtensionSemanticPrime4751
  · exact mixedExtensionSemanticPrime4759

#print axioms mixedExtensionSemanticInputs0019_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
