import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0033 : List ℕ :=
  [8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737]

theorem mixedExtensionPrimeEq8461 :
    mixedSupportExtensionPrime 8461 = 8467 := by
  rfl

theorem mixedExtensionSemanticPrime8461 :
    Nat.Prime (mixedSupportExtensionPrime 8461) ∧
      8461 < mixedSupportExtensionPrime 8461 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8461 < candidate →
        mixedSupportExtensionPrime 8461 ≤ candidate := by
  rw [mixedExtensionPrimeEq8461]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8467 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8467 :
    mixedSupportExtensionPrime 8467 = 8501 := by
  rfl

theorem mixedExtensionSemanticPrime8467 :
    Nat.Prime (mixedSupportExtensionPrime 8467) ∧
      8467 < mixedSupportExtensionPrime 8467 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8467 < candidate →
        mixedSupportExtensionPrime 8467 ≤ candidate := by
  rw [mixedExtensionPrimeEq8467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8501 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8501 :
    mixedSupportExtensionPrime 8501 = 8513 := by
  rfl

theorem mixedExtensionSemanticPrime8501 :
    Nat.Prime (mixedSupportExtensionPrime 8501) ∧
      8501 < mixedSupportExtensionPrime 8501 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8501 < candidate →
        mixedSupportExtensionPrime 8501 ≤ candidate := by
  rw [mixedExtensionPrimeEq8501]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8513 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8513 :
    mixedSupportExtensionPrime 8513 = 8521 := by
  rfl

theorem mixedExtensionSemanticPrime8513 :
    Nat.Prime (mixedSupportExtensionPrime 8513) ∧
      8513 < mixedSupportExtensionPrime 8513 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8513 < candidate →
        mixedSupportExtensionPrime 8513 ≤ candidate := by
  rw [mixedExtensionPrimeEq8513]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8521 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8521 :
    mixedSupportExtensionPrime 8521 = 8527 := by
  rfl

theorem mixedExtensionSemanticPrime8521 :
    Nat.Prime (mixedSupportExtensionPrime 8521) ∧
      8521 < mixedSupportExtensionPrime 8521 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8521 < candidate →
        mixedSupportExtensionPrime 8521 ≤ candidate := by
  rw [mixedExtensionPrimeEq8521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8527 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8527 :
    mixedSupportExtensionPrime 8527 = 8537 := by
  rfl

theorem mixedExtensionSemanticPrime8527 :
    Nat.Prime (mixedSupportExtensionPrime 8527) ∧
      8527 < mixedSupportExtensionPrime 8527 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8527 < candidate →
        mixedSupportExtensionPrime 8527 ≤ candidate := by
  rw [mixedExtensionPrimeEq8527]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8537 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8537 :
    mixedSupportExtensionPrime 8537 = 8539 := by
  rfl

theorem mixedExtensionSemanticPrime8537 :
    Nat.Prime (mixedSupportExtensionPrime 8537) ∧
      8537 < mixedSupportExtensionPrime 8537 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8537 < candidate →
        mixedSupportExtensionPrime 8537 ≤ candidate := by
  rw [mixedExtensionPrimeEq8537]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8539 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8539 :
    mixedSupportExtensionPrime 8539 = 8543 := by
  rfl

theorem mixedExtensionSemanticPrime8539 :
    Nat.Prime (mixedSupportExtensionPrime 8539) ∧
      8539 < mixedSupportExtensionPrime 8539 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8539 < candidate →
        mixedSupportExtensionPrime 8539 ≤ candidate := by
  rw [mixedExtensionPrimeEq8539]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8543 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8543 :
    mixedSupportExtensionPrime 8543 = 8563 := by
  rfl

theorem mixedExtensionSemanticPrime8543 :
    Nat.Prime (mixedSupportExtensionPrime 8543) ∧
      8543 < mixedSupportExtensionPrime 8543 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8543 < candidate →
        mixedSupportExtensionPrime 8543 ≤ candidate := by
  rw [mixedExtensionPrimeEq8543]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8563 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8563 :
    mixedSupportExtensionPrime 8563 = 8573 := by
  rfl

theorem mixedExtensionSemanticPrime8563 :
    Nat.Prime (mixedSupportExtensionPrime 8563) ∧
      8563 < mixedSupportExtensionPrime 8563 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8563 < candidate →
        mixedSupportExtensionPrime 8563 ≤ candidate := by
  rw [mixedExtensionPrimeEq8563]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8573 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8573 :
    mixedSupportExtensionPrime 8573 = 8581 := by
  rfl

theorem mixedExtensionSemanticPrime8573 :
    Nat.Prime (mixedSupportExtensionPrime 8573) ∧
      8573 < mixedSupportExtensionPrime 8573 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8573 < candidate →
        mixedSupportExtensionPrime 8573 ≤ candidate := by
  rw [mixedExtensionPrimeEq8573]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8581 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8581 :
    mixedSupportExtensionPrime 8581 = 8597 := by
  rfl

theorem mixedExtensionSemanticPrime8581 :
    Nat.Prime (mixedSupportExtensionPrime 8581) ∧
      8581 < mixedSupportExtensionPrime 8581 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8581 < candidate →
        mixedSupportExtensionPrime 8581 ≤ candidate := by
  rw [mixedExtensionPrimeEq8581]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8597 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8597 :
    mixedSupportExtensionPrime 8597 = 8599 := by
  rfl

theorem mixedExtensionSemanticPrime8597 :
    Nat.Prime (mixedSupportExtensionPrime 8597) ∧
      8597 < mixedSupportExtensionPrime 8597 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8597 < candidate →
        mixedSupportExtensionPrime 8597 ≤ candidate := by
  rw [mixedExtensionPrimeEq8597]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8599 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8599 :
    mixedSupportExtensionPrime 8599 = 8609 := by
  rfl

theorem mixedExtensionSemanticPrime8599 :
    Nat.Prime (mixedSupportExtensionPrime 8599) ∧
      8599 < mixedSupportExtensionPrime 8599 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8599 < candidate →
        mixedSupportExtensionPrime 8599 ≤ candidate := by
  rw [mixedExtensionPrimeEq8599]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8609 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8609 :
    mixedSupportExtensionPrime 8609 = 8623 := by
  rfl

theorem mixedExtensionSemanticPrime8609 :
    Nat.Prime (mixedSupportExtensionPrime 8609) ∧
      8609 < mixedSupportExtensionPrime 8609 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8609 < candidate →
        mixedSupportExtensionPrime 8609 ≤ candidate := by
  rw [mixedExtensionPrimeEq8609]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8623 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8623 :
    mixedSupportExtensionPrime 8623 = 8627 := by
  rfl

theorem mixedExtensionSemanticPrime8623 :
    Nat.Prime (mixedSupportExtensionPrime 8623) ∧
      8623 < mixedSupportExtensionPrime 8623 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8623 < candidate →
        mixedSupportExtensionPrime 8623 ≤ candidate := by
  rw [mixedExtensionPrimeEq8623]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8627 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8627 :
    mixedSupportExtensionPrime 8627 = 8629 := by
  rfl

theorem mixedExtensionSemanticPrime8627 :
    Nat.Prime (mixedSupportExtensionPrime 8627) ∧
      8627 < mixedSupportExtensionPrime 8627 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8627 < candidate →
        mixedSupportExtensionPrime 8627 ≤ candidate := by
  rw [mixedExtensionPrimeEq8627]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8629 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8629 :
    mixedSupportExtensionPrime 8629 = 8641 := by
  rfl

theorem mixedExtensionSemanticPrime8629 :
    Nat.Prime (mixedSupportExtensionPrime 8629) ∧
      8629 < mixedSupportExtensionPrime 8629 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8629 < candidate →
        mixedSupportExtensionPrime 8629 ≤ candidate := by
  rw [mixedExtensionPrimeEq8629]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8641 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8641 :
    mixedSupportExtensionPrime 8641 = 8647 := by
  rfl

theorem mixedExtensionSemanticPrime8641 :
    Nat.Prime (mixedSupportExtensionPrime 8641) ∧
      8641 < mixedSupportExtensionPrime 8641 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8641 < candidate →
        mixedSupportExtensionPrime 8641 ≤ candidate := by
  rw [mixedExtensionPrimeEq8641]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8647 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8647 :
    mixedSupportExtensionPrime 8647 = 8663 := by
  rfl

theorem mixedExtensionSemanticPrime8647 :
    Nat.Prime (mixedSupportExtensionPrime 8647) ∧
      8647 < mixedSupportExtensionPrime 8647 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8647 < candidate →
        mixedSupportExtensionPrime 8647 ≤ candidate := by
  rw [mixedExtensionPrimeEq8647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8663 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8663 :
    mixedSupportExtensionPrime 8663 = 8669 := by
  rfl

theorem mixedExtensionSemanticPrime8663 :
    Nat.Prime (mixedSupportExtensionPrime 8663) ∧
      8663 < mixedSupportExtensionPrime 8663 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8663 < candidate →
        mixedSupportExtensionPrime 8663 ≤ candidate := by
  rw [mixedExtensionPrimeEq8663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8669 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8669 :
    mixedSupportExtensionPrime 8669 = 8677 := by
  rfl

theorem mixedExtensionSemanticPrime8669 :
    Nat.Prime (mixedSupportExtensionPrime 8669) ∧
      8669 < mixedSupportExtensionPrime 8669 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8669 < candidate →
        mixedSupportExtensionPrime 8669 ≤ candidate := by
  rw [mixedExtensionPrimeEq8669]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8677 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8677 :
    mixedSupportExtensionPrime 8677 = 8681 := by
  rfl

theorem mixedExtensionSemanticPrime8677 :
    Nat.Prime (mixedSupportExtensionPrime 8677) ∧
      8677 < mixedSupportExtensionPrime 8677 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8677 < candidate →
        mixedSupportExtensionPrime 8677 ≤ candidate := by
  rw [mixedExtensionPrimeEq8677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8681 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8681 :
    mixedSupportExtensionPrime 8681 = 8689 := by
  rfl

theorem mixedExtensionSemanticPrime8681 :
    Nat.Prime (mixedSupportExtensionPrime 8681) ∧
      8681 < mixedSupportExtensionPrime 8681 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8681 < candidate →
        mixedSupportExtensionPrime 8681 ≤ candidate := by
  rw [mixedExtensionPrimeEq8681]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8689 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8689 :
    mixedSupportExtensionPrime 8689 = 8693 := by
  rfl

theorem mixedExtensionSemanticPrime8689 :
    Nat.Prime (mixedSupportExtensionPrime 8689) ∧
      8689 < mixedSupportExtensionPrime 8689 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8689 < candidate →
        mixedSupportExtensionPrime 8689 ≤ candidate := by
  rw [mixedExtensionPrimeEq8689]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8693 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8693 :
    mixedSupportExtensionPrime 8693 = 8699 := by
  rfl

theorem mixedExtensionSemanticPrime8693 :
    Nat.Prime (mixedSupportExtensionPrime 8693) ∧
      8693 < mixedSupportExtensionPrime 8693 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8693 < candidate →
        mixedSupportExtensionPrime 8693 ≤ candidate := by
  rw [mixedExtensionPrimeEq8693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8699 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8699 :
    mixedSupportExtensionPrime 8699 = 8707 := by
  rfl

theorem mixedExtensionSemanticPrime8699 :
    Nat.Prime (mixedSupportExtensionPrime 8699) ∧
      8699 < mixedSupportExtensionPrime 8699 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8699 < candidate →
        mixedSupportExtensionPrime 8699 ≤ candidate := by
  rw [mixedExtensionPrimeEq8699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8707 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8707 :
    mixedSupportExtensionPrime 8707 = 8713 := by
  rfl

theorem mixedExtensionSemanticPrime8707 :
    Nat.Prime (mixedSupportExtensionPrime 8707) ∧
      8707 < mixedSupportExtensionPrime 8707 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8707 < candidate →
        mixedSupportExtensionPrime 8707 ≤ candidate := by
  rw [mixedExtensionPrimeEq8707]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8713 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8713 :
    mixedSupportExtensionPrime 8713 = 8719 := by
  rfl

theorem mixedExtensionSemanticPrime8713 :
    Nat.Prime (mixedSupportExtensionPrime 8713) ∧
      8713 < mixedSupportExtensionPrime 8713 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8713 < candidate →
        mixedSupportExtensionPrime 8713 ≤ candidate := by
  rw [mixedExtensionPrimeEq8713]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8719 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8719 :
    mixedSupportExtensionPrime 8719 = 8731 := by
  rfl

theorem mixedExtensionSemanticPrime8719 :
    Nat.Prime (mixedSupportExtensionPrime 8719) ∧
      8719 < mixedSupportExtensionPrime 8719 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8719 < candidate →
        mixedSupportExtensionPrime 8719 ≤ candidate := by
  rw [mixedExtensionPrimeEq8719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8731 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8731 :
    mixedSupportExtensionPrime 8731 = 8737 := by
  rfl

theorem mixedExtensionSemanticPrime8731 :
    Nat.Prime (mixedSupportExtensionPrime 8731) ∧
      8731 < mixedSupportExtensionPrime 8731 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8731 < candidate →
        mixedSupportExtensionPrime 8731 ≤ candidate := by
  rw [mixedExtensionPrimeEq8731]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8737 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8737 :
    mixedSupportExtensionPrime 8737 = 8741 := by
  rfl

theorem mixedExtensionSemanticPrime8737 :
    Nat.Prime (mixedSupportExtensionPrime 8737) ∧
      8737 < mixedSupportExtensionPrime 8737 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8737 < candidate →
        mixedSupportExtensionPrime 8737 ≤ candidate := by
  rw [mixedExtensionPrimeEq8737]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8741 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0033_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0033) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0033, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime8461
  · exact mixedExtensionSemanticPrime8467
  · exact mixedExtensionSemanticPrime8501
  · exact mixedExtensionSemanticPrime8513
  · exact mixedExtensionSemanticPrime8521
  · exact mixedExtensionSemanticPrime8527
  · exact mixedExtensionSemanticPrime8537
  · exact mixedExtensionSemanticPrime8539
  · exact mixedExtensionSemanticPrime8543
  · exact mixedExtensionSemanticPrime8563
  · exact mixedExtensionSemanticPrime8573
  · exact mixedExtensionSemanticPrime8581
  · exact mixedExtensionSemanticPrime8597
  · exact mixedExtensionSemanticPrime8599
  · exact mixedExtensionSemanticPrime8609
  · exact mixedExtensionSemanticPrime8623
  · exact mixedExtensionSemanticPrime8627
  · exact mixedExtensionSemanticPrime8629
  · exact mixedExtensionSemanticPrime8641
  · exact mixedExtensionSemanticPrime8647
  · exact mixedExtensionSemanticPrime8663
  · exact mixedExtensionSemanticPrime8669
  · exact mixedExtensionSemanticPrime8677
  · exact mixedExtensionSemanticPrime8681
  · exact mixedExtensionSemanticPrime8689
  · exact mixedExtensionSemanticPrime8693
  · exact mixedExtensionSemanticPrime8699
  · exact mixedExtensionSemanticPrime8707
  · exact mixedExtensionSemanticPrime8713
  · exact mixedExtensionSemanticPrime8719
  · exact mixedExtensionSemanticPrime8731
  · exact mixedExtensionSemanticPrime8737

#print axioms mixedExtensionSemanticInputs0033_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
