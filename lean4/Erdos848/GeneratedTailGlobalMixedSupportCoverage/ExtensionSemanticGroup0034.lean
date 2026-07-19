import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0034 : List ℕ :=
  [8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011, 9013]

theorem mixedExtensionPrimeEq8741 :
    mixedSupportExtensionPrime 8741 = 8747 := by
  rfl

theorem mixedExtensionSemanticPrime8741 :
    Nat.Prime (mixedSupportExtensionPrime 8741) ∧
      8741 < mixedSupportExtensionPrime 8741 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8741 < candidate →
        mixedSupportExtensionPrime 8741 ≤ candidate := by
  rw [mixedExtensionPrimeEq8741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8747 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8747 :
    mixedSupportExtensionPrime 8747 = 8753 := by
  rfl

theorem mixedExtensionSemanticPrime8747 :
    Nat.Prime (mixedSupportExtensionPrime 8747) ∧
      8747 < mixedSupportExtensionPrime 8747 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8747 < candidate →
        mixedSupportExtensionPrime 8747 ≤ candidate := by
  rw [mixedExtensionPrimeEq8747]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8753 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8753 :
    mixedSupportExtensionPrime 8753 = 8761 := by
  rfl

theorem mixedExtensionSemanticPrime8753 :
    Nat.Prime (mixedSupportExtensionPrime 8753) ∧
      8753 < mixedSupportExtensionPrime 8753 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8753 < candidate →
        mixedSupportExtensionPrime 8753 ≤ candidate := by
  rw [mixedExtensionPrimeEq8753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8761 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8761 :
    mixedSupportExtensionPrime 8761 = 8779 := by
  rfl

theorem mixedExtensionSemanticPrime8761 :
    Nat.Prime (mixedSupportExtensionPrime 8761) ∧
      8761 < mixedSupportExtensionPrime 8761 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8761 < candidate →
        mixedSupportExtensionPrime 8761 ≤ candidate := by
  rw [mixedExtensionPrimeEq8761]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8779 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8779 :
    mixedSupportExtensionPrime 8779 = 8783 := by
  rfl

theorem mixedExtensionSemanticPrime8779 :
    Nat.Prime (mixedSupportExtensionPrime 8779) ∧
      8779 < mixedSupportExtensionPrime 8779 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8779 < candidate →
        mixedSupportExtensionPrime 8779 ≤ candidate := by
  rw [mixedExtensionPrimeEq8779]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8783 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8783 :
    mixedSupportExtensionPrime 8783 = 8803 := by
  rfl

theorem mixedExtensionSemanticPrime8783 :
    Nat.Prime (mixedSupportExtensionPrime 8783) ∧
      8783 < mixedSupportExtensionPrime 8783 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8783 < candidate →
        mixedSupportExtensionPrime 8783 ≤ candidate := by
  rw [mixedExtensionPrimeEq8783]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8803 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8803 :
    mixedSupportExtensionPrime 8803 = 8807 := by
  rfl

theorem mixedExtensionSemanticPrime8803 :
    Nat.Prime (mixedSupportExtensionPrime 8803) ∧
      8803 < mixedSupportExtensionPrime 8803 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8803 < candidate →
        mixedSupportExtensionPrime 8803 ≤ candidate := by
  rw [mixedExtensionPrimeEq8803]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8807 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8807 :
    mixedSupportExtensionPrime 8807 = 8819 := by
  rfl

theorem mixedExtensionSemanticPrime8807 :
    Nat.Prime (mixedSupportExtensionPrime 8807) ∧
      8807 < mixedSupportExtensionPrime 8807 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8807 < candidate →
        mixedSupportExtensionPrime 8807 ≤ candidate := by
  rw [mixedExtensionPrimeEq8807]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8819 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8819 :
    mixedSupportExtensionPrime 8819 = 8821 := by
  rfl

theorem mixedExtensionSemanticPrime8819 :
    Nat.Prime (mixedSupportExtensionPrime 8819) ∧
      8819 < mixedSupportExtensionPrime 8819 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8819 < candidate →
        mixedSupportExtensionPrime 8819 ≤ candidate := by
  rw [mixedExtensionPrimeEq8819]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8821 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8821 :
    mixedSupportExtensionPrime 8821 = 8831 := by
  rfl

theorem mixedExtensionSemanticPrime8821 :
    Nat.Prime (mixedSupportExtensionPrime 8821) ∧
      8821 < mixedSupportExtensionPrime 8821 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8821 < candidate →
        mixedSupportExtensionPrime 8821 ≤ candidate := by
  rw [mixedExtensionPrimeEq8821]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8831 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8831 :
    mixedSupportExtensionPrime 8831 = 8837 := by
  rfl

theorem mixedExtensionSemanticPrime8831 :
    Nat.Prime (mixedSupportExtensionPrime 8831) ∧
      8831 < mixedSupportExtensionPrime 8831 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8831 < candidate →
        mixedSupportExtensionPrime 8831 ≤ candidate := by
  rw [mixedExtensionPrimeEq8831]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8837 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8837 :
    mixedSupportExtensionPrime 8837 = 8839 := by
  rfl

theorem mixedExtensionSemanticPrime8837 :
    Nat.Prime (mixedSupportExtensionPrime 8837) ∧
      8837 < mixedSupportExtensionPrime 8837 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8837 < candidate →
        mixedSupportExtensionPrime 8837 ≤ candidate := by
  rw [mixedExtensionPrimeEq8837]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8839 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8839 :
    mixedSupportExtensionPrime 8839 = 8849 := by
  rfl

theorem mixedExtensionSemanticPrime8839 :
    Nat.Prime (mixedSupportExtensionPrime 8839) ∧
      8839 < mixedSupportExtensionPrime 8839 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8839 < candidate →
        mixedSupportExtensionPrime 8839 ≤ candidate := by
  rw [mixedExtensionPrimeEq8839]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8849 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8849 :
    mixedSupportExtensionPrime 8849 = 8861 := by
  rfl

theorem mixedExtensionSemanticPrime8849 :
    Nat.Prime (mixedSupportExtensionPrime 8849) ∧
      8849 < mixedSupportExtensionPrime 8849 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8849 < candidate →
        mixedSupportExtensionPrime 8849 ≤ candidate := by
  rw [mixedExtensionPrimeEq8849]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8861 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8861 :
    mixedSupportExtensionPrime 8861 = 8863 := by
  rfl

theorem mixedExtensionSemanticPrime8861 :
    Nat.Prime (mixedSupportExtensionPrime 8861) ∧
      8861 < mixedSupportExtensionPrime 8861 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8861 < candidate →
        mixedSupportExtensionPrime 8861 ≤ candidate := by
  rw [mixedExtensionPrimeEq8861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8863 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8863 :
    mixedSupportExtensionPrime 8863 = 8867 := by
  rfl

theorem mixedExtensionSemanticPrime8863 :
    Nat.Prime (mixedSupportExtensionPrime 8863) ∧
      8863 < mixedSupportExtensionPrime 8863 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8863 < candidate →
        mixedSupportExtensionPrime 8863 ≤ candidate := by
  rw [mixedExtensionPrimeEq8863]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8867 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8867 :
    mixedSupportExtensionPrime 8867 = 8887 := by
  rfl

theorem mixedExtensionSemanticPrime8867 :
    Nat.Prime (mixedSupportExtensionPrime 8867) ∧
      8867 < mixedSupportExtensionPrime 8867 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8867 < candidate →
        mixedSupportExtensionPrime 8867 ≤ candidate := by
  rw [mixedExtensionPrimeEq8867]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8887 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8887 :
    mixedSupportExtensionPrime 8887 = 8893 := by
  rfl

theorem mixedExtensionSemanticPrime8887 :
    Nat.Prime (mixedSupportExtensionPrime 8887) ∧
      8887 < mixedSupportExtensionPrime 8887 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8887 < candidate →
        mixedSupportExtensionPrime 8887 ≤ candidate := by
  rw [mixedExtensionPrimeEq8887]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8893 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8893 :
    mixedSupportExtensionPrime 8893 = 8923 := by
  rfl

theorem mixedExtensionSemanticPrime8893 :
    Nat.Prime (mixedSupportExtensionPrime 8893) ∧
      8893 < mixedSupportExtensionPrime 8893 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8893 < candidate →
        mixedSupportExtensionPrime 8893 ≤ candidate := by
  rw [mixedExtensionPrimeEq8893]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8923 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8923 :
    mixedSupportExtensionPrime 8923 = 8929 := by
  rfl

theorem mixedExtensionSemanticPrime8923 :
    Nat.Prime (mixedSupportExtensionPrime 8923) ∧
      8923 < mixedSupportExtensionPrime 8923 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8923 < candidate →
        mixedSupportExtensionPrime 8923 ≤ candidate := by
  rw [mixedExtensionPrimeEq8923]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8929 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8929 :
    mixedSupportExtensionPrime 8929 = 8933 := by
  rfl

theorem mixedExtensionSemanticPrime8929 :
    Nat.Prime (mixedSupportExtensionPrime 8929) ∧
      8929 < mixedSupportExtensionPrime 8929 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8929 < candidate →
        mixedSupportExtensionPrime 8929 ≤ candidate := by
  rw [mixedExtensionPrimeEq8929]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8933 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8933 :
    mixedSupportExtensionPrime 8933 = 8941 := by
  rfl

theorem mixedExtensionSemanticPrime8933 :
    Nat.Prime (mixedSupportExtensionPrime 8933) ∧
      8933 < mixedSupportExtensionPrime 8933 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8933 < candidate →
        mixedSupportExtensionPrime 8933 ≤ candidate := by
  rw [mixedExtensionPrimeEq8933]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8941 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8941 :
    mixedSupportExtensionPrime 8941 = 8951 := by
  rfl

theorem mixedExtensionSemanticPrime8941 :
    Nat.Prime (mixedSupportExtensionPrime 8941) ∧
      8941 < mixedSupportExtensionPrime 8941 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8941 < candidate →
        mixedSupportExtensionPrime 8941 ≤ candidate := by
  rw [mixedExtensionPrimeEq8941]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8951 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8951 :
    mixedSupportExtensionPrime 8951 = 8963 := by
  rfl

theorem mixedExtensionSemanticPrime8951 :
    Nat.Prime (mixedSupportExtensionPrime 8951) ∧
      8951 < mixedSupportExtensionPrime 8951 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8951 < candidate →
        mixedSupportExtensionPrime 8951 ≤ candidate := by
  rw [mixedExtensionPrimeEq8951]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8963 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8963 :
    mixedSupportExtensionPrime 8963 = 8969 := by
  rfl

theorem mixedExtensionSemanticPrime8963 :
    Nat.Prime (mixedSupportExtensionPrime 8963) ∧
      8963 < mixedSupportExtensionPrime 8963 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8963 < candidate →
        mixedSupportExtensionPrime 8963 ≤ candidate := by
  rw [mixedExtensionPrimeEq8963]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8969 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8969 :
    mixedSupportExtensionPrime 8969 = 8971 := by
  rfl

theorem mixedExtensionSemanticPrime8969 :
    Nat.Prime (mixedSupportExtensionPrime 8969) ∧
      8969 < mixedSupportExtensionPrime 8969 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8969 < candidate →
        mixedSupportExtensionPrime 8969 ≤ candidate := by
  rw [mixedExtensionPrimeEq8969]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8971 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8971 :
    mixedSupportExtensionPrime 8971 = 8999 := by
  rfl

theorem mixedExtensionSemanticPrime8971 :
    Nat.Prime (mixedSupportExtensionPrime 8971) ∧
      8971 < mixedSupportExtensionPrime 8971 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8971 < candidate →
        mixedSupportExtensionPrime 8971 ≤ candidate := by
  rw [mixedExtensionPrimeEq8971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8999 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8999 :
    mixedSupportExtensionPrime 8999 = 9001 := by
  rfl

theorem mixedExtensionSemanticPrime8999 :
    Nat.Prime (mixedSupportExtensionPrime 8999) ∧
      8999 < mixedSupportExtensionPrime 8999 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8999 < candidate →
        mixedSupportExtensionPrime 8999 ≤ candidate := by
  rw [mixedExtensionPrimeEq8999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9001 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9001 :
    mixedSupportExtensionPrime 9001 = 9007 := by
  rfl

theorem mixedExtensionSemanticPrime9001 :
    Nat.Prime (mixedSupportExtensionPrime 9001) ∧
      9001 < mixedSupportExtensionPrime 9001 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9001 < candidate →
        mixedSupportExtensionPrime 9001 ≤ candidate := by
  rw [mixedExtensionPrimeEq9001]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9007 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9007 :
    mixedSupportExtensionPrime 9007 = 9011 := by
  rfl

theorem mixedExtensionSemanticPrime9007 :
    Nat.Prime (mixedSupportExtensionPrime 9007) ∧
      9007 < mixedSupportExtensionPrime 9007 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9007 < candidate →
        mixedSupportExtensionPrime 9007 ≤ candidate := by
  rw [mixedExtensionPrimeEq9007]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9011 :
    mixedSupportExtensionPrime 9011 = 9013 := by
  rfl

theorem mixedExtensionSemanticPrime9011 :
    Nat.Prime (mixedSupportExtensionPrime 9011) ∧
      9011 < mixedSupportExtensionPrime 9011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9011 < candidate →
        mixedSupportExtensionPrime 9011 ≤ candidate := by
  rw [mixedExtensionPrimeEq9011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9013 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9013 :
    mixedSupportExtensionPrime 9013 = 9029 := by
  rfl

theorem mixedExtensionSemanticPrime9013 :
    Nat.Prime (mixedSupportExtensionPrime 9013) ∧
      9013 < mixedSupportExtensionPrime 9013 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9013 < candidate →
        mixedSupportExtensionPrime 9013 ≤ candidate := by
  rw [mixedExtensionPrimeEq9013]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9029 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0034_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0034) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0034, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime8741
  · exact mixedExtensionSemanticPrime8747
  · exact mixedExtensionSemanticPrime8753
  · exact mixedExtensionSemanticPrime8761
  · exact mixedExtensionSemanticPrime8779
  · exact mixedExtensionSemanticPrime8783
  · exact mixedExtensionSemanticPrime8803
  · exact mixedExtensionSemanticPrime8807
  · exact mixedExtensionSemanticPrime8819
  · exact mixedExtensionSemanticPrime8821
  · exact mixedExtensionSemanticPrime8831
  · exact mixedExtensionSemanticPrime8837
  · exact mixedExtensionSemanticPrime8839
  · exact mixedExtensionSemanticPrime8849
  · exact mixedExtensionSemanticPrime8861
  · exact mixedExtensionSemanticPrime8863
  · exact mixedExtensionSemanticPrime8867
  · exact mixedExtensionSemanticPrime8887
  · exact mixedExtensionSemanticPrime8893
  · exact mixedExtensionSemanticPrime8923
  · exact mixedExtensionSemanticPrime8929
  · exact mixedExtensionSemanticPrime8933
  · exact mixedExtensionSemanticPrime8941
  · exact mixedExtensionSemanticPrime8951
  · exact mixedExtensionSemanticPrime8963
  · exact mixedExtensionSemanticPrime8969
  · exact mixedExtensionSemanticPrime8971
  · exact mixedExtensionSemanticPrime8999
  · exact mixedExtensionSemanticPrime9001
  · exact mixedExtensionSemanticPrime9007
  · exact mixedExtensionSemanticPrime9011
  · exact mixedExtensionSemanticPrime9013

#print axioms mixedExtensionSemanticInputs0034_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
