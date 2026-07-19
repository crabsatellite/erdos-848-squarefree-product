import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0020 : List ℕ :=
  [4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021]

theorem mixedExtensionPrimeEq4783 :
    mixedSupportExtensionPrime 4783 = 4787 := by
  rfl

theorem mixedExtensionSemanticPrime4783 :
    Nat.Prime (mixedSupportExtensionPrime 4783) ∧
      4783 < mixedSupportExtensionPrime 4783 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4783 < candidate →
        mixedSupportExtensionPrime 4783 ≤ candidate := by
  rw [mixedExtensionPrimeEq4783]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4787 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4787 :
    mixedSupportExtensionPrime 4787 = 4789 := by
  rfl

theorem mixedExtensionSemanticPrime4787 :
    Nat.Prime (mixedSupportExtensionPrime 4787) ∧
      4787 < mixedSupportExtensionPrime 4787 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4787 < candidate →
        mixedSupportExtensionPrime 4787 ≤ candidate := by
  rw [mixedExtensionPrimeEq4787]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4789 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4789 :
    mixedSupportExtensionPrime 4789 = 4793 := by
  rfl

theorem mixedExtensionSemanticPrime4789 :
    Nat.Prime (mixedSupportExtensionPrime 4789) ∧
      4789 < mixedSupportExtensionPrime 4789 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4789 < candidate →
        mixedSupportExtensionPrime 4789 ≤ candidate := by
  rw [mixedExtensionPrimeEq4789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4793 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4793 :
    mixedSupportExtensionPrime 4793 = 4799 := by
  rfl

theorem mixedExtensionSemanticPrime4793 :
    Nat.Prime (mixedSupportExtensionPrime 4793) ∧
      4793 < mixedSupportExtensionPrime 4793 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4793 < candidate →
        mixedSupportExtensionPrime 4793 ≤ candidate := by
  rw [mixedExtensionPrimeEq4793]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4799 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4799 :
    mixedSupportExtensionPrime 4799 = 4801 := by
  rfl

theorem mixedExtensionSemanticPrime4799 :
    Nat.Prime (mixedSupportExtensionPrime 4799) ∧
      4799 < mixedSupportExtensionPrime 4799 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4799 < candidate →
        mixedSupportExtensionPrime 4799 ≤ candidate := by
  rw [mixedExtensionPrimeEq4799]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4801 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4801 :
    mixedSupportExtensionPrime 4801 = 4813 := by
  rfl

theorem mixedExtensionSemanticPrime4801 :
    Nat.Prime (mixedSupportExtensionPrime 4801) ∧
      4801 < mixedSupportExtensionPrime 4801 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4801 < candidate →
        mixedSupportExtensionPrime 4801 ≤ candidate := by
  rw [mixedExtensionPrimeEq4801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4813 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4813 :
    mixedSupportExtensionPrime 4813 = 4817 := by
  rfl

theorem mixedExtensionSemanticPrime4813 :
    Nat.Prime (mixedSupportExtensionPrime 4813) ∧
      4813 < mixedSupportExtensionPrime 4813 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4813 < candidate →
        mixedSupportExtensionPrime 4813 ≤ candidate := by
  rw [mixedExtensionPrimeEq4813]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4817 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4817 :
    mixedSupportExtensionPrime 4817 = 4831 := by
  rfl

theorem mixedExtensionSemanticPrime4817 :
    Nat.Prime (mixedSupportExtensionPrime 4817) ∧
      4817 < mixedSupportExtensionPrime 4817 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4817 < candidate →
        mixedSupportExtensionPrime 4817 ≤ candidate := by
  rw [mixedExtensionPrimeEq4817]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4831 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4831 :
    mixedSupportExtensionPrime 4831 = 4861 := by
  rfl

theorem mixedExtensionSemanticPrime4831 :
    Nat.Prime (mixedSupportExtensionPrime 4831) ∧
      4831 < mixedSupportExtensionPrime 4831 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4831 < candidate →
        mixedSupportExtensionPrime 4831 ≤ candidate := by
  rw [mixedExtensionPrimeEq4831]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4861 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4861 :
    mixedSupportExtensionPrime 4861 = 4871 := by
  rfl

theorem mixedExtensionSemanticPrime4861 :
    Nat.Prime (mixedSupportExtensionPrime 4861) ∧
      4861 < mixedSupportExtensionPrime 4861 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4861 < candidate →
        mixedSupportExtensionPrime 4861 ≤ candidate := by
  rw [mixedExtensionPrimeEq4861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4871 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4871 :
    mixedSupportExtensionPrime 4871 = 4877 := by
  rfl

theorem mixedExtensionSemanticPrime4871 :
    Nat.Prime (mixedSupportExtensionPrime 4871) ∧
      4871 < mixedSupportExtensionPrime 4871 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4871 < candidate →
        mixedSupportExtensionPrime 4871 ≤ candidate := by
  rw [mixedExtensionPrimeEq4871]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4877 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4877 :
    mixedSupportExtensionPrime 4877 = 4889 := by
  rfl

theorem mixedExtensionSemanticPrime4877 :
    Nat.Prime (mixedSupportExtensionPrime 4877) ∧
      4877 < mixedSupportExtensionPrime 4877 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4877 < candidate →
        mixedSupportExtensionPrime 4877 ≤ candidate := by
  rw [mixedExtensionPrimeEq4877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4889 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4889 :
    mixedSupportExtensionPrime 4889 = 4903 := by
  rfl

theorem mixedExtensionSemanticPrime4889 :
    Nat.Prime (mixedSupportExtensionPrime 4889) ∧
      4889 < mixedSupportExtensionPrime 4889 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4889 < candidate →
        mixedSupportExtensionPrime 4889 ≤ candidate := by
  rw [mixedExtensionPrimeEq4889]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4903 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4903 :
    mixedSupportExtensionPrime 4903 = 4909 := by
  rfl

theorem mixedExtensionSemanticPrime4903 :
    Nat.Prime (mixedSupportExtensionPrime 4903) ∧
      4903 < mixedSupportExtensionPrime 4903 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4903 < candidate →
        mixedSupportExtensionPrime 4903 ≤ candidate := by
  rw [mixedExtensionPrimeEq4903]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4909 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4909 :
    mixedSupportExtensionPrime 4909 = 4919 := by
  rfl

theorem mixedExtensionSemanticPrime4909 :
    Nat.Prime (mixedSupportExtensionPrime 4909) ∧
      4909 < mixedSupportExtensionPrime 4909 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4909 < candidate →
        mixedSupportExtensionPrime 4909 ≤ candidate := by
  rw [mixedExtensionPrimeEq4909]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4919 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4919 :
    mixedSupportExtensionPrime 4919 = 4931 := by
  rfl

theorem mixedExtensionSemanticPrime4919 :
    Nat.Prime (mixedSupportExtensionPrime 4919) ∧
      4919 < mixedSupportExtensionPrime 4919 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4919 < candidate →
        mixedSupportExtensionPrime 4919 ≤ candidate := by
  rw [mixedExtensionPrimeEq4919]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4931 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4931 :
    mixedSupportExtensionPrime 4931 = 4933 := by
  rfl

theorem mixedExtensionSemanticPrime4931 :
    Nat.Prime (mixedSupportExtensionPrime 4931) ∧
      4931 < mixedSupportExtensionPrime 4931 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4931 < candidate →
        mixedSupportExtensionPrime 4931 ≤ candidate := by
  rw [mixedExtensionPrimeEq4931]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4933 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4933 :
    mixedSupportExtensionPrime 4933 = 4937 := by
  rfl

theorem mixedExtensionSemanticPrime4933 :
    Nat.Prime (mixedSupportExtensionPrime 4933) ∧
      4933 < mixedSupportExtensionPrime 4933 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4933 < candidate →
        mixedSupportExtensionPrime 4933 ≤ candidate := by
  rw [mixedExtensionPrimeEq4933]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4937 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4937 :
    mixedSupportExtensionPrime 4937 = 4943 := by
  rfl

theorem mixedExtensionSemanticPrime4937 :
    Nat.Prime (mixedSupportExtensionPrime 4937) ∧
      4937 < mixedSupportExtensionPrime 4937 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4937 < candidate →
        mixedSupportExtensionPrime 4937 ≤ candidate := by
  rw [mixedExtensionPrimeEq4937]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4943 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4943 :
    mixedSupportExtensionPrime 4943 = 4951 := by
  rfl

theorem mixedExtensionSemanticPrime4943 :
    Nat.Prime (mixedSupportExtensionPrime 4943) ∧
      4943 < mixedSupportExtensionPrime 4943 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4943 < candidate →
        mixedSupportExtensionPrime 4943 ≤ candidate := by
  rw [mixedExtensionPrimeEq4943]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4951 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4951 :
    mixedSupportExtensionPrime 4951 = 4957 := by
  rfl

theorem mixedExtensionSemanticPrime4951 :
    Nat.Prime (mixedSupportExtensionPrime 4951) ∧
      4951 < mixedSupportExtensionPrime 4951 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4951 < candidate →
        mixedSupportExtensionPrime 4951 ≤ candidate := by
  rw [mixedExtensionPrimeEq4951]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4957 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4957 :
    mixedSupportExtensionPrime 4957 = 4967 := by
  rfl

theorem mixedExtensionSemanticPrime4957 :
    Nat.Prime (mixedSupportExtensionPrime 4957) ∧
      4957 < mixedSupportExtensionPrime 4957 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4957 < candidate →
        mixedSupportExtensionPrime 4957 ≤ candidate := by
  rw [mixedExtensionPrimeEq4957]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4967 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4967 :
    mixedSupportExtensionPrime 4967 = 4969 := by
  rfl

theorem mixedExtensionSemanticPrime4967 :
    Nat.Prime (mixedSupportExtensionPrime 4967) ∧
      4967 < mixedSupportExtensionPrime 4967 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4967 < candidate →
        mixedSupportExtensionPrime 4967 ≤ candidate := by
  rw [mixedExtensionPrimeEq4967]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4969 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4969 :
    mixedSupportExtensionPrime 4969 = 4973 := by
  rfl

theorem mixedExtensionSemanticPrime4969 :
    Nat.Prime (mixedSupportExtensionPrime 4969) ∧
      4969 < mixedSupportExtensionPrime 4969 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4969 < candidate →
        mixedSupportExtensionPrime 4969 ≤ candidate := by
  rw [mixedExtensionPrimeEq4969]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4973 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4973 :
    mixedSupportExtensionPrime 4973 = 4987 := by
  rfl

theorem mixedExtensionSemanticPrime4973 :
    Nat.Prime (mixedSupportExtensionPrime 4973) ∧
      4973 < mixedSupportExtensionPrime 4973 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4973 < candidate →
        mixedSupportExtensionPrime 4973 ≤ candidate := by
  rw [mixedExtensionPrimeEq4973]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4987 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4987 :
    mixedSupportExtensionPrime 4987 = 4993 := by
  rfl

theorem mixedExtensionSemanticPrime4987 :
    Nat.Prime (mixedSupportExtensionPrime 4987) ∧
      4987 < mixedSupportExtensionPrime 4987 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4987 < candidate →
        mixedSupportExtensionPrime 4987 ≤ candidate := by
  rw [mixedExtensionPrimeEq4987]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4993 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4993 :
    mixedSupportExtensionPrime 4993 = 4999 := by
  rfl

theorem mixedExtensionSemanticPrime4993 :
    Nat.Prime (mixedSupportExtensionPrime 4993) ∧
      4993 < mixedSupportExtensionPrime 4993 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4993 < candidate →
        mixedSupportExtensionPrime 4993 ≤ candidate := by
  rw [mixedExtensionPrimeEq4993]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4999 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4999 :
    mixedSupportExtensionPrime 4999 = 5003 := by
  rfl

theorem mixedExtensionSemanticPrime4999 :
    Nat.Prime (mixedSupportExtensionPrime 4999) ∧
      4999 < mixedSupportExtensionPrime 4999 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4999 < candidate →
        mixedSupportExtensionPrime 4999 ≤ candidate := by
  rw [mixedExtensionPrimeEq4999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5003 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5003 :
    mixedSupportExtensionPrime 5003 = 5009 := by
  rfl

theorem mixedExtensionSemanticPrime5003 :
    Nat.Prime (mixedSupportExtensionPrime 5003) ∧
      5003 < mixedSupportExtensionPrime 5003 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5003 < candidate →
        mixedSupportExtensionPrime 5003 ≤ candidate := by
  rw [mixedExtensionPrimeEq5003]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5009 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5009 :
    mixedSupportExtensionPrime 5009 = 5011 := by
  rfl

theorem mixedExtensionSemanticPrime5009 :
    Nat.Prime (mixedSupportExtensionPrime 5009) ∧
      5009 < mixedSupportExtensionPrime 5009 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5009 < candidate →
        mixedSupportExtensionPrime 5009 ≤ candidate := by
  rw [mixedExtensionPrimeEq5009]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5011 :
    mixedSupportExtensionPrime 5011 = 5021 := by
  rfl

theorem mixedExtensionSemanticPrime5011 :
    Nat.Prime (mixedSupportExtensionPrime 5011) ∧
      5011 < mixedSupportExtensionPrime 5011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5011 < candidate →
        mixedSupportExtensionPrime 5011 ≤ candidate := by
  rw [mixedExtensionPrimeEq5011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5021 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5021 :
    mixedSupportExtensionPrime 5021 = 5023 := by
  rfl

theorem mixedExtensionSemanticPrime5021 :
    Nat.Prime (mixedSupportExtensionPrime 5021) ∧
      5021 < mixedSupportExtensionPrime 5021 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5021 < candidate →
        mixedSupportExtensionPrime 5021 ≤ candidate := by
  rw [mixedExtensionPrimeEq5021]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5023 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0020_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0020) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0020, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime4783
  · exact mixedExtensionSemanticPrime4787
  · exact mixedExtensionSemanticPrime4789
  · exact mixedExtensionSemanticPrime4793
  · exact mixedExtensionSemanticPrime4799
  · exact mixedExtensionSemanticPrime4801
  · exact mixedExtensionSemanticPrime4813
  · exact mixedExtensionSemanticPrime4817
  · exact mixedExtensionSemanticPrime4831
  · exact mixedExtensionSemanticPrime4861
  · exact mixedExtensionSemanticPrime4871
  · exact mixedExtensionSemanticPrime4877
  · exact mixedExtensionSemanticPrime4889
  · exact mixedExtensionSemanticPrime4903
  · exact mixedExtensionSemanticPrime4909
  · exact mixedExtensionSemanticPrime4919
  · exact mixedExtensionSemanticPrime4931
  · exact mixedExtensionSemanticPrime4933
  · exact mixedExtensionSemanticPrime4937
  · exact mixedExtensionSemanticPrime4943
  · exact mixedExtensionSemanticPrime4951
  · exact mixedExtensionSemanticPrime4957
  · exact mixedExtensionSemanticPrime4967
  · exact mixedExtensionSemanticPrime4969
  · exact mixedExtensionSemanticPrime4973
  · exact mixedExtensionSemanticPrime4987
  · exact mixedExtensionSemanticPrime4993
  · exact mixedExtensionSemanticPrime4999
  · exact mixedExtensionSemanticPrime5003
  · exact mixedExtensionSemanticPrime5009
  · exact mixedExtensionSemanticPrime5011
  · exact mixedExtensionSemanticPrime5021

#print axioms mixedExtensionSemanticInputs0020_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
