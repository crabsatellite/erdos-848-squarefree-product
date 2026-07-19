import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0023 : List ℕ :=
  [5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851]

theorem mixedExtensionPrimeEq5591 :
    mixedSupportExtensionPrime 5591 = 5623 := by
  rfl

theorem mixedExtensionSemanticPrime5591 :
    Nat.Prime (mixedSupportExtensionPrime 5591) ∧
      5591 < mixedSupportExtensionPrime 5591 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5591 < candidate →
        mixedSupportExtensionPrime 5591 ≤ candidate := by
  rw [mixedExtensionPrimeEq5591]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5623 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5623 :
    mixedSupportExtensionPrime 5623 = 5639 := by
  rfl

theorem mixedExtensionSemanticPrime5623 :
    Nat.Prime (mixedSupportExtensionPrime 5623) ∧
      5623 < mixedSupportExtensionPrime 5623 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5623 < candidate →
        mixedSupportExtensionPrime 5623 ≤ candidate := by
  rw [mixedExtensionPrimeEq5623]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5639 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5639 :
    mixedSupportExtensionPrime 5639 = 5641 := by
  rfl

theorem mixedExtensionSemanticPrime5639 :
    Nat.Prime (mixedSupportExtensionPrime 5639) ∧
      5639 < mixedSupportExtensionPrime 5639 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5639 < candidate →
        mixedSupportExtensionPrime 5639 ≤ candidate := by
  rw [mixedExtensionPrimeEq5639]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5641 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5641 :
    mixedSupportExtensionPrime 5641 = 5647 := by
  rfl

theorem mixedExtensionSemanticPrime5641 :
    Nat.Prime (mixedSupportExtensionPrime 5641) ∧
      5641 < mixedSupportExtensionPrime 5641 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5641 < candidate →
        mixedSupportExtensionPrime 5641 ≤ candidate := by
  rw [mixedExtensionPrimeEq5641]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5647 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5647 :
    mixedSupportExtensionPrime 5647 = 5651 := by
  rfl

theorem mixedExtensionSemanticPrime5647 :
    Nat.Prime (mixedSupportExtensionPrime 5647) ∧
      5647 < mixedSupportExtensionPrime 5647 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5647 < candidate →
        mixedSupportExtensionPrime 5647 ≤ candidate := by
  rw [mixedExtensionPrimeEq5647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5651 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5651 :
    mixedSupportExtensionPrime 5651 = 5653 := by
  rfl

theorem mixedExtensionSemanticPrime5651 :
    Nat.Prime (mixedSupportExtensionPrime 5651) ∧
      5651 < mixedSupportExtensionPrime 5651 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5651 < candidate →
        mixedSupportExtensionPrime 5651 ≤ candidate := by
  rw [mixedExtensionPrimeEq5651]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5653 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5653 :
    mixedSupportExtensionPrime 5653 = 5657 := by
  rfl

theorem mixedExtensionSemanticPrime5653 :
    Nat.Prime (mixedSupportExtensionPrime 5653) ∧
      5653 < mixedSupportExtensionPrime 5653 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5653 < candidate →
        mixedSupportExtensionPrime 5653 ≤ candidate := by
  rw [mixedExtensionPrimeEq5653]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5657 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5657 :
    mixedSupportExtensionPrime 5657 = 5659 := by
  rfl

theorem mixedExtensionSemanticPrime5657 :
    Nat.Prime (mixedSupportExtensionPrime 5657) ∧
      5657 < mixedSupportExtensionPrime 5657 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5657 < candidate →
        mixedSupportExtensionPrime 5657 ≤ candidate := by
  rw [mixedExtensionPrimeEq5657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5659 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5659 :
    mixedSupportExtensionPrime 5659 = 5669 := by
  rfl

theorem mixedExtensionSemanticPrime5659 :
    Nat.Prime (mixedSupportExtensionPrime 5659) ∧
      5659 < mixedSupportExtensionPrime 5659 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5659 < candidate →
        mixedSupportExtensionPrime 5659 ≤ candidate := by
  rw [mixedExtensionPrimeEq5659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5669 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5669 :
    mixedSupportExtensionPrime 5669 = 5683 := by
  rfl

theorem mixedExtensionSemanticPrime5669 :
    Nat.Prime (mixedSupportExtensionPrime 5669) ∧
      5669 < mixedSupportExtensionPrime 5669 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5669 < candidate →
        mixedSupportExtensionPrime 5669 ≤ candidate := by
  rw [mixedExtensionPrimeEq5669]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5683 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5683 :
    mixedSupportExtensionPrime 5683 = 5689 := by
  rfl

theorem mixedExtensionSemanticPrime5683 :
    Nat.Prime (mixedSupportExtensionPrime 5683) ∧
      5683 < mixedSupportExtensionPrime 5683 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5683 < candidate →
        mixedSupportExtensionPrime 5683 ≤ candidate := by
  rw [mixedExtensionPrimeEq5683]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5689 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5689 :
    mixedSupportExtensionPrime 5689 = 5693 := by
  rfl

theorem mixedExtensionSemanticPrime5689 :
    Nat.Prime (mixedSupportExtensionPrime 5689) ∧
      5689 < mixedSupportExtensionPrime 5689 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5689 < candidate →
        mixedSupportExtensionPrime 5689 ≤ candidate := by
  rw [mixedExtensionPrimeEq5689]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5693 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5693 :
    mixedSupportExtensionPrime 5693 = 5701 := by
  rfl

theorem mixedExtensionSemanticPrime5693 :
    Nat.Prime (mixedSupportExtensionPrime 5693) ∧
      5693 < mixedSupportExtensionPrime 5693 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5693 < candidate →
        mixedSupportExtensionPrime 5693 ≤ candidate := by
  rw [mixedExtensionPrimeEq5693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5701 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5701 :
    mixedSupportExtensionPrime 5701 = 5711 := by
  rfl

theorem mixedExtensionSemanticPrime5701 :
    Nat.Prime (mixedSupportExtensionPrime 5701) ∧
      5701 < mixedSupportExtensionPrime 5701 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5701 < candidate →
        mixedSupportExtensionPrime 5701 ≤ candidate := by
  rw [mixedExtensionPrimeEq5701]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5711 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5711 :
    mixedSupportExtensionPrime 5711 = 5717 := by
  rfl

theorem mixedExtensionSemanticPrime5711 :
    Nat.Prime (mixedSupportExtensionPrime 5711) ∧
      5711 < mixedSupportExtensionPrime 5711 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5711 < candidate →
        mixedSupportExtensionPrime 5711 ≤ candidate := by
  rw [mixedExtensionPrimeEq5711]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5717 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5717 :
    mixedSupportExtensionPrime 5717 = 5737 := by
  rfl

theorem mixedExtensionSemanticPrime5717 :
    Nat.Prime (mixedSupportExtensionPrime 5717) ∧
      5717 < mixedSupportExtensionPrime 5717 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5717 < candidate →
        mixedSupportExtensionPrime 5717 ≤ candidate := by
  rw [mixedExtensionPrimeEq5717]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5737 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5737 :
    mixedSupportExtensionPrime 5737 = 5741 := by
  rfl

theorem mixedExtensionSemanticPrime5737 :
    Nat.Prime (mixedSupportExtensionPrime 5737) ∧
      5737 < mixedSupportExtensionPrime 5737 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5737 < candidate →
        mixedSupportExtensionPrime 5737 ≤ candidate := by
  rw [mixedExtensionPrimeEq5737]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5741 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5741 :
    mixedSupportExtensionPrime 5741 = 5743 := by
  rfl

theorem mixedExtensionSemanticPrime5741 :
    Nat.Prime (mixedSupportExtensionPrime 5741) ∧
      5741 < mixedSupportExtensionPrime 5741 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5741 < candidate →
        mixedSupportExtensionPrime 5741 ≤ candidate := by
  rw [mixedExtensionPrimeEq5741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5743 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5743 :
    mixedSupportExtensionPrime 5743 = 5749 := by
  rfl

theorem mixedExtensionSemanticPrime5743 :
    Nat.Prime (mixedSupportExtensionPrime 5743) ∧
      5743 < mixedSupportExtensionPrime 5743 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5743 < candidate →
        mixedSupportExtensionPrime 5743 ≤ candidate := by
  rw [mixedExtensionPrimeEq5743]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5749 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5749 :
    mixedSupportExtensionPrime 5749 = 5779 := by
  rfl

theorem mixedExtensionSemanticPrime5749 :
    Nat.Prime (mixedSupportExtensionPrime 5749) ∧
      5749 < mixedSupportExtensionPrime 5749 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5749 < candidate →
        mixedSupportExtensionPrime 5749 ≤ candidate := by
  rw [mixedExtensionPrimeEq5749]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5779 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5779 :
    mixedSupportExtensionPrime 5779 = 5783 := by
  rfl

theorem mixedExtensionSemanticPrime5779 :
    Nat.Prime (mixedSupportExtensionPrime 5779) ∧
      5779 < mixedSupportExtensionPrime 5779 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5779 < candidate →
        mixedSupportExtensionPrime 5779 ≤ candidate := by
  rw [mixedExtensionPrimeEq5779]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5783 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5783 :
    mixedSupportExtensionPrime 5783 = 5791 := by
  rfl

theorem mixedExtensionSemanticPrime5783 :
    Nat.Prime (mixedSupportExtensionPrime 5783) ∧
      5783 < mixedSupportExtensionPrime 5783 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5783 < candidate →
        mixedSupportExtensionPrime 5783 ≤ candidate := by
  rw [mixedExtensionPrimeEq5783]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5791 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5791 :
    mixedSupportExtensionPrime 5791 = 5801 := by
  rfl

theorem mixedExtensionSemanticPrime5791 :
    Nat.Prime (mixedSupportExtensionPrime 5791) ∧
      5791 < mixedSupportExtensionPrime 5791 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5791 < candidate →
        mixedSupportExtensionPrime 5791 ≤ candidate := by
  rw [mixedExtensionPrimeEq5791]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5801 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5801 :
    mixedSupportExtensionPrime 5801 = 5807 := by
  rfl

theorem mixedExtensionSemanticPrime5801 :
    Nat.Prime (mixedSupportExtensionPrime 5801) ∧
      5801 < mixedSupportExtensionPrime 5801 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5801 < candidate →
        mixedSupportExtensionPrime 5801 ≤ candidate := by
  rw [mixedExtensionPrimeEq5801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5807 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5807 :
    mixedSupportExtensionPrime 5807 = 5813 := by
  rfl

theorem mixedExtensionSemanticPrime5807 :
    Nat.Prime (mixedSupportExtensionPrime 5807) ∧
      5807 < mixedSupportExtensionPrime 5807 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5807 < candidate →
        mixedSupportExtensionPrime 5807 ≤ candidate := by
  rw [mixedExtensionPrimeEq5807]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5813 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5813 :
    mixedSupportExtensionPrime 5813 = 5821 := by
  rfl

theorem mixedExtensionSemanticPrime5813 :
    Nat.Prime (mixedSupportExtensionPrime 5813) ∧
      5813 < mixedSupportExtensionPrime 5813 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5813 < candidate →
        mixedSupportExtensionPrime 5813 ≤ candidate := by
  rw [mixedExtensionPrimeEq5813]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5821 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5821 :
    mixedSupportExtensionPrime 5821 = 5827 := by
  rfl

theorem mixedExtensionSemanticPrime5821 :
    Nat.Prime (mixedSupportExtensionPrime 5821) ∧
      5821 < mixedSupportExtensionPrime 5821 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5821 < candidate →
        mixedSupportExtensionPrime 5821 ≤ candidate := by
  rw [mixedExtensionPrimeEq5821]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5827 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5827 :
    mixedSupportExtensionPrime 5827 = 5839 := by
  rfl

theorem mixedExtensionSemanticPrime5827 :
    Nat.Prime (mixedSupportExtensionPrime 5827) ∧
      5827 < mixedSupportExtensionPrime 5827 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5827 < candidate →
        mixedSupportExtensionPrime 5827 ≤ candidate := by
  rw [mixedExtensionPrimeEq5827]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5839 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5839 :
    mixedSupportExtensionPrime 5839 = 5843 := by
  rfl

theorem mixedExtensionSemanticPrime5839 :
    Nat.Prime (mixedSupportExtensionPrime 5839) ∧
      5839 < mixedSupportExtensionPrime 5839 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5839 < candidate →
        mixedSupportExtensionPrime 5839 ≤ candidate := by
  rw [mixedExtensionPrimeEq5839]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5843 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5843 :
    mixedSupportExtensionPrime 5843 = 5849 := by
  rfl

theorem mixedExtensionSemanticPrime5843 :
    Nat.Prime (mixedSupportExtensionPrime 5843) ∧
      5843 < mixedSupportExtensionPrime 5843 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5843 < candidate →
        mixedSupportExtensionPrime 5843 ≤ candidate := by
  rw [mixedExtensionPrimeEq5843]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5849 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5849 :
    mixedSupportExtensionPrime 5849 = 5851 := by
  rfl

theorem mixedExtensionSemanticPrime5849 :
    Nat.Prime (mixedSupportExtensionPrime 5849) ∧
      5849 < mixedSupportExtensionPrime 5849 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5849 < candidate →
        mixedSupportExtensionPrime 5849 ≤ candidate := by
  rw [mixedExtensionPrimeEq5849]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5851 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5851 :
    mixedSupportExtensionPrime 5851 = 5857 := by
  rfl

theorem mixedExtensionSemanticPrime5851 :
    Nat.Prime (mixedSupportExtensionPrime 5851) ∧
      5851 < mixedSupportExtensionPrime 5851 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5851 < candidate →
        mixedSupportExtensionPrime 5851 ≤ candidate := by
  rw [mixedExtensionPrimeEq5851]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5857 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0023_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0023) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0023, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime5591
  · exact mixedExtensionSemanticPrime5623
  · exact mixedExtensionSemanticPrime5639
  · exact mixedExtensionSemanticPrime5641
  · exact mixedExtensionSemanticPrime5647
  · exact mixedExtensionSemanticPrime5651
  · exact mixedExtensionSemanticPrime5653
  · exact mixedExtensionSemanticPrime5657
  · exact mixedExtensionSemanticPrime5659
  · exact mixedExtensionSemanticPrime5669
  · exact mixedExtensionSemanticPrime5683
  · exact mixedExtensionSemanticPrime5689
  · exact mixedExtensionSemanticPrime5693
  · exact mixedExtensionSemanticPrime5701
  · exact mixedExtensionSemanticPrime5711
  · exact mixedExtensionSemanticPrime5717
  · exact mixedExtensionSemanticPrime5737
  · exact mixedExtensionSemanticPrime5741
  · exact mixedExtensionSemanticPrime5743
  · exact mixedExtensionSemanticPrime5749
  · exact mixedExtensionSemanticPrime5779
  · exact mixedExtensionSemanticPrime5783
  · exact mixedExtensionSemanticPrime5791
  · exact mixedExtensionSemanticPrime5801
  · exact mixedExtensionSemanticPrime5807
  · exact mixedExtensionSemanticPrime5813
  · exact mixedExtensionSemanticPrime5821
  · exact mixedExtensionSemanticPrime5827
  · exact mixedExtensionSemanticPrime5839
  · exact mixedExtensionSemanticPrime5843
  · exact mixedExtensionSemanticPrime5849
  · exact mixedExtensionSemanticPrime5851

#print axioms mixedExtensionSemanticInputs0023_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
