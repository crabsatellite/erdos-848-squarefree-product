import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0027 : List ℕ :=
  [6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977]

theorem mixedExtensionPrimeEq6709 :
    mixedSupportExtensionPrime 6709 = 6719 := by
  rfl

theorem mixedExtensionSemanticPrime6709 :
    Nat.Prime (mixedSupportExtensionPrime 6709) ∧
      6709 < mixedSupportExtensionPrime 6709 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6709 < candidate →
        mixedSupportExtensionPrime 6709 ≤ candidate := by
  rw [mixedExtensionPrimeEq6709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6719 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6719 :
    mixedSupportExtensionPrime 6719 = 6733 := by
  rfl

theorem mixedExtensionSemanticPrime6719 :
    Nat.Prime (mixedSupportExtensionPrime 6719) ∧
      6719 < mixedSupportExtensionPrime 6719 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6719 < candidate →
        mixedSupportExtensionPrime 6719 ≤ candidate := by
  rw [mixedExtensionPrimeEq6719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6733 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6733 :
    mixedSupportExtensionPrime 6733 = 6737 := by
  rfl

theorem mixedExtensionSemanticPrime6733 :
    Nat.Prime (mixedSupportExtensionPrime 6733) ∧
      6733 < mixedSupportExtensionPrime 6733 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6733 < candidate →
        mixedSupportExtensionPrime 6733 ≤ candidate := by
  rw [mixedExtensionPrimeEq6733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6737 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6737 :
    mixedSupportExtensionPrime 6737 = 6761 := by
  rfl

theorem mixedExtensionSemanticPrime6737 :
    Nat.Prime (mixedSupportExtensionPrime 6737) ∧
      6737 < mixedSupportExtensionPrime 6737 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6737 < candidate →
        mixedSupportExtensionPrime 6737 ≤ candidate := by
  rw [mixedExtensionPrimeEq6737]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6761 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6761 :
    mixedSupportExtensionPrime 6761 = 6763 := by
  rfl

theorem mixedExtensionSemanticPrime6761 :
    Nat.Prime (mixedSupportExtensionPrime 6761) ∧
      6761 < mixedSupportExtensionPrime 6761 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6761 < candidate →
        mixedSupportExtensionPrime 6761 ≤ candidate := by
  rw [mixedExtensionPrimeEq6761]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6763 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6763 :
    mixedSupportExtensionPrime 6763 = 6779 := by
  rfl

theorem mixedExtensionSemanticPrime6763 :
    Nat.Prime (mixedSupportExtensionPrime 6763) ∧
      6763 < mixedSupportExtensionPrime 6763 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6763 < candidate →
        mixedSupportExtensionPrime 6763 ≤ candidate := by
  rw [mixedExtensionPrimeEq6763]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6779 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6779 :
    mixedSupportExtensionPrime 6779 = 6781 := by
  rfl

theorem mixedExtensionSemanticPrime6779 :
    Nat.Prime (mixedSupportExtensionPrime 6779) ∧
      6779 < mixedSupportExtensionPrime 6779 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6779 < candidate →
        mixedSupportExtensionPrime 6779 ≤ candidate := by
  rw [mixedExtensionPrimeEq6779]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6781 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6781 :
    mixedSupportExtensionPrime 6781 = 6791 := by
  rfl

theorem mixedExtensionSemanticPrime6781 :
    Nat.Prime (mixedSupportExtensionPrime 6781) ∧
      6781 < mixedSupportExtensionPrime 6781 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6781 < candidate →
        mixedSupportExtensionPrime 6781 ≤ candidate := by
  rw [mixedExtensionPrimeEq6781]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6791 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6791 :
    mixedSupportExtensionPrime 6791 = 6793 := by
  rfl

theorem mixedExtensionSemanticPrime6791 :
    Nat.Prime (mixedSupportExtensionPrime 6791) ∧
      6791 < mixedSupportExtensionPrime 6791 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6791 < candidate →
        mixedSupportExtensionPrime 6791 ≤ candidate := by
  rw [mixedExtensionPrimeEq6791]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6793 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6793 :
    mixedSupportExtensionPrime 6793 = 6803 := by
  rfl

theorem mixedExtensionSemanticPrime6793 :
    Nat.Prime (mixedSupportExtensionPrime 6793) ∧
      6793 < mixedSupportExtensionPrime 6793 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6793 < candidate →
        mixedSupportExtensionPrime 6793 ≤ candidate := by
  rw [mixedExtensionPrimeEq6793]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6803 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6803 :
    mixedSupportExtensionPrime 6803 = 6823 := by
  rfl

theorem mixedExtensionSemanticPrime6803 :
    Nat.Prime (mixedSupportExtensionPrime 6803) ∧
      6803 < mixedSupportExtensionPrime 6803 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6803 < candidate →
        mixedSupportExtensionPrime 6803 ≤ candidate := by
  rw [mixedExtensionPrimeEq6803]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6823 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6823 :
    mixedSupportExtensionPrime 6823 = 6827 := by
  rfl

theorem mixedExtensionSemanticPrime6823 :
    Nat.Prime (mixedSupportExtensionPrime 6823) ∧
      6823 < mixedSupportExtensionPrime 6823 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6823 < candidate →
        mixedSupportExtensionPrime 6823 ≤ candidate := by
  rw [mixedExtensionPrimeEq6823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6827 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6827 :
    mixedSupportExtensionPrime 6827 = 6829 := by
  rfl

theorem mixedExtensionSemanticPrime6827 :
    Nat.Prime (mixedSupportExtensionPrime 6827) ∧
      6827 < mixedSupportExtensionPrime 6827 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6827 < candidate →
        mixedSupportExtensionPrime 6827 ≤ candidate := by
  rw [mixedExtensionPrimeEq6827]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6829 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6829 :
    mixedSupportExtensionPrime 6829 = 6833 := by
  rfl

theorem mixedExtensionSemanticPrime6829 :
    Nat.Prime (mixedSupportExtensionPrime 6829) ∧
      6829 < mixedSupportExtensionPrime 6829 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6829 < candidate →
        mixedSupportExtensionPrime 6829 ≤ candidate := by
  rw [mixedExtensionPrimeEq6829]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6833 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6833 :
    mixedSupportExtensionPrime 6833 = 6841 := by
  rfl

theorem mixedExtensionSemanticPrime6833 :
    Nat.Prime (mixedSupportExtensionPrime 6833) ∧
      6833 < mixedSupportExtensionPrime 6833 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6833 < candidate →
        mixedSupportExtensionPrime 6833 ≤ candidate := by
  rw [mixedExtensionPrimeEq6833]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6841 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6841 :
    mixedSupportExtensionPrime 6841 = 6857 := by
  rfl

theorem mixedExtensionSemanticPrime6841 :
    Nat.Prime (mixedSupportExtensionPrime 6841) ∧
      6841 < mixedSupportExtensionPrime 6841 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6841 < candidate →
        mixedSupportExtensionPrime 6841 ≤ candidate := by
  rw [mixedExtensionPrimeEq6841]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6857 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6857 :
    mixedSupportExtensionPrime 6857 = 6863 := by
  rfl

theorem mixedExtensionSemanticPrime6857 :
    Nat.Prime (mixedSupportExtensionPrime 6857) ∧
      6857 < mixedSupportExtensionPrime 6857 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6857 < candidate →
        mixedSupportExtensionPrime 6857 ≤ candidate := by
  rw [mixedExtensionPrimeEq6857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6863 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6863 :
    mixedSupportExtensionPrime 6863 = 6869 := by
  rfl

theorem mixedExtensionSemanticPrime6863 :
    Nat.Prime (mixedSupportExtensionPrime 6863) ∧
      6863 < mixedSupportExtensionPrime 6863 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6863 < candidate →
        mixedSupportExtensionPrime 6863 ≤ candidate := by
  rw [mixedExtensionPrimeEq6863]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6869 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6869 :
    mixedSupportExtensionPrime 6869 = 6871 := by
  rfl

theorem mixedExtensionSemanticPrime6869 :
    Nat.Prime (mixedSupportExtensionPrime 6869) ∧
      6869 < mixedSupportExtensionPrime 6869 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6869 < candidate →
        mixedSupportExtensionPrime 6869 ≤ candidate := by
  rw [mixedExtensionPrimeEq6869]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6871 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6871 :
    mixedSupportExtensionPrime 6871 = 6883 := by
  rfl

theorem mixedExtensionSemanticPrime6871 :
    Nat.Prime (mixedSupportExtensionPrime 6871) ∧
      6871 < mixedSupportExtensionPrime 6871 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6871 < candidate →
        mixedSupportExtensionPrime 6871 ≤ candidate := by
  rw [mixedExtensionPrimeEq6871]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6883 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6883 :
    mixedSupportExtensionPrime 6883 = 6899 := by
  rfl

theorem mixedExtensionSemanticPrime6883 :
    Nat.Prime (mixedSupportExtensionPrime 6883) ∧
      6883 < mixedSupportExtensionPrime 6883 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6883 < candidate →
        mixedSupportExtensionPrime 6883 ≤ candidate := by
  rw [mixedExtensionPrimeEq6883]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6899 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6899 :
    mixedSupportExtensionPrime 6899 = 6907 := by
  rfl

theorem mixedExtensionSemanticPrime6899 :
    Nat.Prime (mixedSupportExtensionPrime 6899) ∧
      6899 < mixedSupportExtensionPrime 6899 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6899 < candidate →
        mixedSupportExtensionPrime 6899 ≤ candidate := by
  rw [mixedExtensionPrimeEq6899]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6907 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6907 :
    mixedSupportExtensionPrime 6907 = 6911 := by
  rfl

theorem mixedExtensionSemanticPrime6907 :
    Nat.Prime (mixedSupportExtensionPrime 6907) ∧
      6907 < mixedSupportExtensionPrime 6907 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6907 < candidate →
        mixedSupportExtensionPrime 6907 ≤ candidate := by
  rw [mixedExtensionPrimeEq6907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6911 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6911 :
    mixedSupportExtensionPrime 6911 = 6917 := by
  rfl

theorem mixedExtensionSemanticPrime6911 :
    Nat.Prime (mixedSupportExtensionPrime 6911) ∧
      6911 < mixedSupportExtensionPrime 6911 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6911 < candidate →
        mixedSupportExtensionPrime 6911 ≤ candidate := by
  rw [mixedExtensionPrimeEq6911]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6917 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6917 :
    mixedSupportExtensionPrime 6917 = 6947 := by
  rfl

theorem mixedExtensionSemanticPrime6917 :
    Nat.Prime (mixedSupportExtensionPrime 6917) ∧
      6917 < mixedSupportExtensionPrime 6917 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6917 < candidate →
        mixedSupportExtensionPrime 6917 ≤ candidate := by
  rw [mixedExtensionPrimeEq6917]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6947 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6947 :
    mixedSupportExtensionPrime 6947 = 6949 := by
  rfl

theorem mixedExtensionSemanticPrime6947 :
    Nat.Prime (mixedSupportExtensionPrime 6947) ∧
      6947 < mixedSupportExtensionPrime 6947 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6947 < candidate →
        mixedSupportExtensionPrime 6947 ≤ candidate := by
  rw [mixedExtensionPrimeEq6947]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6949 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6949 :
    mixedSupportExtensionPrime 6949 = 6959 := by
  rfl

theorem mixedExtensionSemanticPrime6949 :
    Nat.Prime (mixedSupportExtensionPrime 6949) ∧
      6949 < mixedSupportExtensionPrime 6949 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6949 < candidate →
        mixedSupportExtensionPrime 6949 ≤ candidate := by
  rw [mixedExtensionPrimeEq6949]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6959 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6959 :
    mixedSupportExtensionPrime 6959 = 6961 := by
  rfl

theorem mixedExtensionSemanticPrime6959 :
    Nat.Prime (mixedSupportExtensionPrime 6959) ∧
      6959 < mixedSupportExtensionPrime 6959 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6959 < candidate →
        mixedSupportExtensionPrime 6959 ≤ candidate := by
  rw [mixedExtensionPrimeEq6959]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6961 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6961 :
    mixedSupportExtensionPrime 6961 = 6967 := by
  rfl

theorem mixedExtensionSemanticPrime6961 :
    Nat.Prime (mixedSupportExtensionPrime 6961) ∧
      6961 < mixedSupportExtensionPrime 6961 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6961 < candidate →
        mixedSupportExtensionPrime 6961 ≤ candidate := by
  rw [mixedExtensionPrimeEq6961]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6967 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6967 :
    mixedSupportExtensionPrime 6967 = 6971 := by
  rfl

theorem mixedExtensionSemanticPrime6967 :
    Nat.Prime (mixedSupportExtensionPrime 6967) ∧
      6967 < mixedSupportExtensionPrime 6967 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6967 < candidate →
        mixedSupportExtensionPrime 6967 ≤ candidate := by
  rw [mixedExtensionPrimeEq6967]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6971 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6971 :
    mixedSupportExtensionPrime 6971 = 6977 := by
  rfl

theorem mixedExtensionSemanticPrime6971 :
    Nat.Prime (mixedSupportExtensionPrime 6971) ∧
      6971 < mixedSupportExtensionPrime 6971 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6971 < candidate →
        mixedSupportExtensionPrime 6971 ≤ candidate := by
  rw [mixedExtensionPrimeEq6971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6977 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6977 :
    mixedSupportExtensionPrime 6977 = 6983 := by
  rfl

theorem mixedExtensionSemanticPrime6977 :
    Nat.Prime (mixedSupportExtensionPrime 6977) ∧
      6977 < mixedSupportExtensionPrime 6977 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6977 < candidate →
        mixedSupportExtensionPrime 6977 ≤ candidate := by
  rw [mixedExtensionPrimeEq6977]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6983 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0027_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0027) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0027, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime6709
  · exact mixedExtensionSemanticPrime6719
  · exact mixedExtensionSemanticPrime6733
  · exact mixedExtensionSemanticPrime6737
  · exact mixedExtensionSemanticPrime6761
  · exact mixedExtensionSemanticPrime6763
  · exact mixedExtensionSemanticPrime6779
  · exact mixedExtensionSemanticPrime6781
  · exact mixedExtensionSemanticPrime6791
  · exact mixedExtensionSemanticPrime6793
  · exact mixedExtensionSemanticPrime6803
  · exact mixedExtensionSemanticPrime6823
  · exact mixedExtensionSemanticPrime6827
  · exact mixedExtensionSemanticPrime6829
  · exact mixedExtensionSemanticPrime6833
  · exact mixedExtensionSemanticPrime6841
  · exact mixedExtensionSemanticPrime6857
  · exact mixedExtensionSemanticPrime6863
  · exact mixedExtensionSemanticPrime6869
  · exact mixedExtensionSemanticPrime6871
  · exact mixedExtensionSemanticPrime6883
  · exact mixedExtensionSemanticPrime6899
  · exact mixedExtensionSemanticPrime6907
  · exact mixedExtensionSemanticPrime6911
  · exact mixedExtensionSemanticPrime6917
  · exact mixedExtensionSemanticPrime6947
  · exact mixedExtensionSemanticPrime6949
  · exact mixedExtensionSemanticPrime6959
  · exact mixedExtensionSemanticPrime6961
  · exact mixedExtensionSemanticPrime6967
  · exact mixedExtensionSemanticPrime6971
  · exact mixedExtensionSemanticPrime6977

#print axioms mixedExtensionSemanticInputs0027_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
