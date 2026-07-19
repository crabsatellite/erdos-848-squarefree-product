import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0026 : List ℕ :=
  [6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703]

theorem mixedExtensionPrimeEq6397 :
    mixedSupportExtensionPrime 6397 = 6421 := by
  rfl

theorem mixedExtensionSemanticPrime6397 :
    Nat.Prime (mixedSupportExtensionPrime 6397) ∧
      6397 < mixedSupportExtensionPrime 6397 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6397 < candidate →
        mixedSupportExtensionPrime 6397 ≤ candidate := by
  rw [mixedExtensionPrimeEq6397]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6421 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6421 :
    mixedSupportExtensionPrime 6421 = 6427 := by
  rfl

theorem mixedExtensionSemanticPrime6421 :
    Nat.Prime (mixedSupportExtensionPrime 6421) ∧
      6421 < mixedSupportExtensionPrime 6421 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6421 < candidate →
        mixedSupportExtensionPrime 6421 ≤ candidate := by
  rw [mixedExtensionPrimeEq6421]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6427 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6427 :
    mixedSupportExtensionPrime 6427 = 6449 := by
  rfl

theorem mixedExtensionSemanticPrime6427 :
    Nat.Prime (mixedSupportExtensionPrime 6427) ∧
      6427 < mixedSupportExtensionPrime 6427 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6427 < candidate →
        mixedSupportExtensionPrime 6427 ≤ candidate := by
  rw [mixedExtensionPrimeEq6427]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6449 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6449 :
    mixedSupportExtensionPrime 6449 = 6451 := by
  rfl

theorem mixedExtensionSemanticPrime6449 :
    Nat.Prime (mixedSupportExtensionPrime 6449) ∧
      6449 < mixedSupportExtensionPrime 6449 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6449 < candidate →
        mixedSupportExtensionPrime 6449 ≤ candidate := by
  rw [mixedExtensionPrimeEq6449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6451 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6451 :
    mixedSupportExtensionPrime 6451 = 6469 := by
  rfl

theorem mixedExtensionSemanticPrime6451 :
    Nat.Prime (mixedSupportExtensionPrime 6451) ∧
      6451 < mixedSupportExtensionPrime 6451 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6451 < candidate →
        mixedSupportExtensionPrime 6451 ≤ candidate := by
  rw [mixedExtensionPrimeEq6451]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6469 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6469 :
    mixedSupportExtensionPrime 6469 = 6473 := by
  rfl

theorem mixedExtensionSemanticPrime6469 :
    Nat.Prime (mixedSupportExtensionPrime 6469) ∧
      6469 < mixedSupportExtensionPrime 6469 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6469 < candidate →
        mixedSupportExtensionPrime 6469 ≤ candidate := by
  rw [mixedExtensionPrimeEq6469]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6473 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6473 :
    mixedSupportExtensionPrime 6473 = 6481 := by
  rfl

theorem mixedExtensionSemanticPrime6473 :
    Nat.Prime (mixedSupportExtensionPrime 6473) ∧
      6473 < mixedSupportExtensionPrime 6473 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6473 < candidate →
        mixedSupportExtensionPrime 6473 ≤ candidate := by
  rw [mixedExtensionPrimeEq6473]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6481 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6481 :
    mixedSupportExtensionPrime 6481 = 6491 := by
  rfl

theorem mixedExtensionSemanticPrime6481 :
    Nat.Prime (mixedSupportExtensionPrime 6481) ∧
      6481 < mixedSupportExtensionPrime 6481 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6481 < candidate →
        mixedSupportExtensionPrime 6481 ≤ candidate := by
  rw [mixedExtensionPrimeEq6481]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6491 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6491 :
    mixedSupportExtensionPrime 6491 = 6521 := by
  rfl

theorem mixedExtensionSemanticPrime6491 :
    Nat.Prime (mixedSupportExtensionPrime 6491) ∧
      6491 < mixedSupportExtensionPrime 6491 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6491 < candidate →
        mixedSupportExtensionPrime 6491 ≤ candidate := by
  rw [mixedExtensionPrimeEq6491]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6521 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6521 :
    mixedSupportExtensionPrime 6521 = 6529 := by
  rfl

theorem mixedExtensionSemanticPrime6521 :
    Nat.Prime (mixedSupportExtensionPrime 6521) ∧
      6521 < mixedSupportExtensionPrime 6521 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6521 < candidate →
        mixedSupportExtensionPrime 6521 ≤ candidate := by
  rw [mixedExtensionPrimeEq6521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6529 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6529 :
    mixedSupportExtensionPrime 6529 = 6547 := by
  rfl

theorem mixedExtensionSemanticPrime6529 :
    Nat.Prime (mixedSupportExtensionPrime 6529) ∧
      6529 < mixedSupportExtensionPrime 6529 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6529 < candidate →
        mixedSupportExtensionPrime 6529 ≤ candidate := by
  rw [mixedExtensionPrimeEq6529]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6547 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6547 :
    mixedSupportExtensionPrime 6547 = 6551 := by
  rfl

theorem mixedExtensionSemanticPrime6547 :
    Nat.Prime (mixedSupportExtensionPrime 6547) ∧
      6547 < mixedSupportExtensionPrime 6547 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6547 < candidate →
        mixedSupportExtensionPrime 6547 ≤ candidate := by
  rw [mixedExtensionPrimeEq6547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6551 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6551 :
    mixedSupportExtensionPrime 6551 = 6553 := by
  rfl

theorem mixedExtensionSemanticPrime6551 :
    Nat.Prime (mixedSupportExtensionPrime 6551) ∧
      6551 < mixedSupportExtensionPrime 6551 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6551 < candidate →
        mixedSupportExtensionPrime 6551 ≤ candidate := by
  rw [mixedExtensionPrimeEq6551]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6553 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6553 :
    mixedSupportExtensionPrime 6553 = 6563 := by
  rfl

theorem mixedExtensionSemanticPrime6553 :
    Nat.Prime (mixedSupportExtensionPrime 6553) ∧
      6553 < mixedSupportExtensionPrime 6553 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6553 < candidate →
        mixedSupportExtensionPrime 6553 ≤ candidate := by
  rw [mixedExtensionPrimeEq6553]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6563 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6563 :
    mixedSupportExtensionPrime 6563 = 6569 := by
  rfl

theorem mixedExtensionSemanticPrime6563 :
    Nat.Prime (mixedSupportExtensionPrime 6563) ∧
      6563 < mixedSupportExtensionPrime 6563 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6563 < candidate →
        mixedSupportExtensionPrime 6563 ≤ candidate := by
  rw [mixedExtensionPrimeEq6563]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6569 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6569 :
    mixedSupportExtensionPrime 6569 = 6571 := by
  rfl

theorem mixedExtensionSemanticPrime6569 :
    Nat.Prime (mixedSupportExtensionPrime 6569) ∧
      6569 < mixedSupportExtensionPrime 6569 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6569 < candidate →
        mixedSupportExtensionPrime 6569 ≤ candidate := by
  rw [mixedExtensionPrimeEq6569]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6571 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6571 :
    mixedSupportExtensionPrime 6571 = 6577 := by
  rfl

theorem mixedExtensionSemanticPrime6571 :
    Nat.Prime (mixedSupportExtensionPrime 6571) ∧
      6571 < mixedSupportExtensionPrime 6571 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6571 < candidate →
        mixedSupportExtensionPrime 6571 ≤ candidate := by
  rw [mixedExtensionPrimeEq6571]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6577 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6577 :
    mixedSupportExtensionPrime 6577 = 6581 := by
  rfl

theorem mixedExtensionSemanticPrime6577 :
    Nat.Prime (mixedSupportExtensionPrime 6577) ∧
      6577 < mixedSupportExtensionPrime 6577 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6577 < candidate →
        mixedSupportExtensionPrime 6577 ≤ candidate := by
  rw [mixedExtensionPrimeEq6577]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6581 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6581 :
    mixedSupportExtensionPrime 6581 = 6599 := by
  rfl

theorem mixedExtensionSemanticPrime6581 :
    Nat.Prime (mixedSupportExtensionPrime 6581) ∧
      6581 < mixedSupportExtensionPrime 6581 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6581 < candidate →
        mixedSupportExtensionPrime 6581 ≤ candidate := by
  rw [mixedExtensionPrimeEq6581]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6599 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6599 :
    mixedSupportExtensionPrime 6599 = 6607 := by
  rfl

theorem mixedExtensionSemanticPrime6599 :
    Nat.Prime (mixedSupportExtensionPrime 6599) ∧
      6599 < mixedSupportExtensionPrime 6599 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6599 < candidate →
        mixedSupportExtensionPrime 6599 ≤ candidate := by
  rw [mixedExtensionPrimeEq6599]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6607 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6607 :
    mixedSupportExtensionPrime 6607 = 6619 := by
  rfl

theorem mixedExtensionSemanticPrime6607 :
    Nat.Prime (mixedSupportExtensionPrime 6607) ∧
      6607 < mixedSupportExtensionPrime 6607 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6607 < candidate →
        mixedSupportExtensionPrime 6607 ≤ candidate := by
  rw [mixedExtensionPrimeEq6607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6619 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6619 :
    mixedSupportExtensionPrime 6619 = 6637 := by
  rfl

theorem mixedExtensionSemanticPrime6619 :
    Nat.Prime (mixedSupportExtensionPrime 6619) ∧
      6619 < mixedSupportExtensionPrime 6619 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6619 < candidate →
        mixedSupportExtensionPrime 6619 ≤ candidate := by
  rw [mixedExtensionPrimeEq6619]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6637 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6637 :
    mixedSupportExtensionPrime 6637 = 6653 := by
  rfl

theorem mixedExtensionSemanticPrime6637 :
    Nat.Prime (mixedSupportExtensionPrime 6637) ∧
      6637 < mixedSupportExtensionPrime 6637 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6637 < candidate →
        mixedSupportExtensionPrime 6637 ≤ candidate := by
  rw [mixedExtensionPrimeEq6637]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6653 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6653 :
    mixedSupportExtensionPrime 6653 = 6659 := by
  rfl

theorem mixedExtensionSemanticPrime6653 :
    Nat.Prime (mixedSupportExtensionPrime 6653) ∧
      6653 < mixedSupportExtensionPrime 6653 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6653 < candidate →
        mixedSupportExtensionPrime 6653 ≤ candidate := by
  rw [mixedExtensionPrimeEq6653]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6659 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6659 :
    mixedSupportExtensionPrime 6659 = 6661 := by
  rfl

theorem mixedExtensionSemanticPrime6659 :
    Nat.Prime (mixedSupportExtensionPrime 6659) ∧
      6659 < mixedSupportExtensionPrime 6659 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6659 < candidate →
        mixedSupportExtensionPrime 6659 ≤ candidate := by
  rw [mixedExtensionPrimeEq6659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6661 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6661 :
    mixedSupportExtensionPrime 6661 = 6673 := by
  rfl

theorem mixedExtensionSemanticPrime6661 :
    Nat.Prime (mixedSupportExtensionPrime 6661) ∧
      6661 < mixedSupportExtensionPrime 6661 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6661 < candidate →
        mixedSupportExtensionPrime 6661 ≤ candidate := by
  rw [mixedExtensionPrimeEq6661]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6673 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6673 :
    mixedSupportExtensionPrime 6673 = 6679 := by
  rfl

theorem mixedExtensionSemanticPrime6673 :
    Nat.Prime (mixedSupportExtensionPrime 6673) ∧
      6673 < mixedSupportExtensionPrime 6673 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6673 < candidate →
        mixedSupportExtensionPrime 6673 ≤ candidate := by
  rw [mixedExtensionPrimeEq6673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6679 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6679 :
    mixedSupportExtensionPrime 6679 = 6689 := by
  rfl

theorem mixedExtensionSemanticPrime6679 :
    Nat.Prime (mixedSupportExtensionPrime 6679) ∧
      6679 < mixedSupportExtensionPrime 6679 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6679 < candidate →
        mixedSupportExtensionPrime 6679 ≤ candidate := by
  rw [mixedExtensionPrimeEq6679]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6689 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6689 :
    mixedSupportExtensionPrime 6689 = 6691 := by
  rfl

theorem mixedExtensionSemanticPrime6689 :
    Nat.Prime (mixedSupportExtensionPrime 6689) ∧
      6689 < mixedSupportExtensionPrime 6689 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6689 < candidate →
        mixedSupportExtensionPrime 6689 ≤ candidate := by
  rw [mixedExtensionPrimeEq6689]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6691 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6691 :
    mixedSupportExtensionPrime 6691 = 6701 := by
  rfl

theorem mixedExtensionSemanticPrime6691 :
    Nat.Prime (mixedSupportExtensionPrime 6691) ∧
      6691 < mixedSupportExtensionPrime 6691 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6691 < candidate →
        mixedSupportExtensionPrime 6691 ≤ candidate := by
  rw [mixedExtensionPrimeEq6691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6701 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6701 :
    mixedSupportExtensionPrime 6701 = 6703 := by
  rfl

theorem mixedExtensionSemanticPrime6701 :
    Nat.Prime (mixedSupportExtensionPrime 6701) ∧
      6701 < mixedSupportExtensionPrime 6701 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6701 < candidate →
        mixedSupportExtensionPrime 6701 ≤ candidate := by
  rw [mixedExtensionPrimeEq6701]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6703 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6703 :
    mixedSupportExtensionPrime 6703 = 6709 := by
  rfl

theorem mixedExtensionSemanticPrime6703 :
    Nat.Prime (mixedSupportExtensionPrime 6703) ∧
      6703 < mixedSupportExtensionPrime 6703 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6703 < candidate →
        mixedSupportExtensionPrime 6703 ≤ candidate := by
  rw [mixedExtensionPrimeEq6703]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6709 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0026_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0026) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0026, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime6397
  · exact mixedExtensionSemanticPrime6421
  · exact mixedExtensionSemanticPrime6427
  · exact mixedExtensionSemanticPrime6449
  · exact mixedExtensionSemanticPrime6451
  · exact mixedExtensionSemanticPrime6469
  · exact mixedExtensionSemanticPrime6473
  · exact mixedExtensionSemanticPrime6481
  · exact mixedExtensionSemanticPrime6491
  · exact mixedExtensionSemanticPrime6521
  · exact mixedExtensionSemanticPrime6529
  · exact mixedExtensionSemanticPrime6547
  · exact mixedExtensionSemanticPrime6551
  · exact mixedExtensionSemanticPrime6553
  · exact mixedExtensionSemanticPrime6563
  · exact mixedExtensionSemanticPrime6569
  · exact mixedExtensionSemanticPrime6571
  · exact mixedExtensionSemanticPrime6577
  · exact mixedExtensionSemanticPrime6581
  · exact mixedExtensionSemanticPrime6599
  · exact mixedExtensionSemanticPrime6607
  · exact mixedExtensionSemanticPrime6619
  · exact mixedExtensionSemanticPrime6637
  · exact mixedExtensionSemanticPrime6653
  · exact mixedExtensionSemanticPrime6659
  · exact mixedExtensionSemanticPrime6661
  · exact mixedExtensionSemanticPrime6673
  · exact mixedExtensionSemanticPrime6679
  · exact mixedExtensionSemanticPrime6689
  · exact mixedExtensionSemanticPrime6691
  · exact mixedExtensionSemanticPrime6701
  · exact mixedExtensionSemanticPrime6703

#print axioms mixedExtensionSemanticInputs0026_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
