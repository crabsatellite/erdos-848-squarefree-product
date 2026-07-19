import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0031 : List ℕ :=
  [7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167]

theorem mixedExtensionPrimeEq7873 :
    mixedSupportExtensionPrime 7873 = 7877 := by
  rfl

theorem mixedExtensionSemanticPrime7873 :
    Nat.Prime (mixedSupportExtensionPrime 7873) ∧
      7873 < mixedSupportExtensionPrime 7873 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7873 < candidate →
        mixedSupportExtensionPrime 7873 ≤ candidate := by
  rw [mixedExtensionPrimeEq7873]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7877 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7877 :
    mixedSupportExtensionPrime 7877 = 7879 := by
  rfl

theorem mixedExtensionSemanticPrime7877 :
    Nat.Prime (mixedSupportExtensionPrime 7877) ∧
      7877 < mixedSupportExtensionPrime 7877 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7877 < candidate →
        mixedSupportExtensionPrime 7877 ≤ candidate := by
  rw [mixedExtensionPrimeEq7877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7879 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7879 :
    mixedSupportExtensionPrime 7879 = 7883 := by
  rfl

theorem mixedExtensionSemanticPrime7879 :
    Nat.Prime (mixedSupportExtensionPrime 7879) ∧
      7879 < mixedSupportExtensionPrime 7879 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7879 < candidate →
        mixedSupportExtensionPrime 7879 ≤ candidate := by
  rw [mixedExtensionPrimeEq7879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7883 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7883 :
    mixedSupportExtensionPrime 7883 = 7901 := by
  rfl

theorem mixedExtensionSemanticPrime7883 :
    Nat.Prime (mixedSupportExtensionPrime 7883) ∧
      7883 < mixedSupportExtensionPrime 7883 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7883 < candidate →
        mixedSupportExtensionPrime 7883 ≤ candidate := by
  rw [mixedExtensionPrimeEq7883]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7901 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7901 :
    mixedSupportExtensionPrime 7901 = 7907 := by
  rfl

theorem mixedExtensionSemanticPrime7901 :
    Nat.Prime (mixedSupportExtensionPrime 7901) ∧
      7901 < mixedSupportExtensionPrime 7901 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7901 < candidate →
        mixedSupportExtensionPrime 7901 ≤ candidate := by
  rw [mixedExtensionPrimeEq7901]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7907 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7907 :
    mixedSupportExtensionPrime 7907 = 7919 := by
  rfl

theorem mixedExtensionSemanticPrime7907 :
    Nat.Prime (mixedSupportExtensionPrime 7907) ∧
      7907 < mixedSupportExtensionPrime 7907 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7907 < candidate →
        mixedSupportExtensionPrime 7907 ≤ candidate := by
  rw [mixedExtensionPrimeEq7907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7919 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7919 :
    mixedSupportExtensionPrime 7919 = 7927 := by
  rfl

theorem mixedExtensionSemanticPrime7919 :
    Nat.Prime (mixedSupportExtensionPrime 7919) ∧
      7919 < mixedSupportExtensionPrime 7919 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7919 < candidate →
        mixedSupportExtensionPrime 7919 ≤ candidate := by
  rw [mixedExtensionPrimeEq7919]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7927 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7927 :
    mixedSupportExtensionPrime 7927 = 7933 := by
  rfl

theorem mixedExtensionSemanticPrime7927 :
    Nat.Prime (mixedSupportExtensionPrime 7927) ∧
      7927 < mixedSupportExtensionPrime 7927 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7927 < candidate →
        mixedSupportExtensionPrime 7927 ≤ candidate := by
  rw [mixedExtensionPrimeEq7927]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7933 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7933 :
    mixedSupportExtensionPrime 7933 = 7937 := by
  rfl

theorem mixedExtensionSemanticPrime7933 :
    Nat.Prime (mixedSupportExtensionPrime 7933) ∧
      7933 < mixedSupportExtensionPrime 7933 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7933 < candidate →
        mixedSupportExtensionPrime 7933 ≤ candidate := by
  rw [mixedExtensionPrimeEq7933]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7937 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7937 :
    mixedSupportExtensionPrime 7937 = 7949 := by
  rfl

theorem mixedExtensionSemanticPrime7937 :
    Nat.Prime (mixedSupportExtensionPrime 7937) ∧
      7937 < mixedSupportExtensionPrime 7937 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7937 < candidate →
        mixedSupportExtensionPrime 7937 ≤ candidate := by
  rw [mixedExtensionPrimeEq7937]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7949 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7949 :
    mixedSupportExtensionPrime 7949 = 7951 := by
  rfl

theorem mixedExtensionSemanticPrime7949 :
    Nat.Prime (mixedSupportExtensionPrime 7949) ∧
      7949 < mixedSupportExtensionPrime 7949 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7949 < candidate →
        mixedSupportExtensionPrime 7949 ≤ candidate := by
  rw [mixedExtensionPrimeEq7949]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7951 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7951 :
    mixedSupportExtensionPrime 7951 = 7963 := by
  rfl

theorem mixedExtensionSemanticPrime7951 :
    Nat.Prime (mixedSupportExtensionPrime 7951) ∧
      7951 < mixedSupportExtensionPrime 7951 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7951 < candidate →
        mixedSupportExtensionPrime 7951 ≤ candidate := by
  rw [mixedExtensionPrimeEq7951]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7963 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7963 :
    mixedSupportExtensionPrime 7963 = 7993 := by
  rfl

theorem mixedExtensionSemanticPrime7963 :
    Nat.Prime (mixedSupportExtensionPrime 7963) ∧
      7963 < mixedSupportExtensionPrime 7963 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7963 < candidate →
        mixedSupportExtensionPrime 7963 ≤ candidate := by
  rw [mixedExtensionPrimeEq7963]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7993 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7993 :
    mixedSupportExtensionPrime 7993 = 8009 := by
  rfl

theorem mixedExtensionSemanticPrime7993 :
    Nat.Prime (mixedSupportExtensionPrime 7993) ∧
      7993 < mixedSupportExtensionPrime 7993 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7993 < candidate →
        mixedSupportExtensionPrime 7993 ≤ candidate := by
  rw [mixedExtensionPrimeEq7993]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8009 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8009 :
    mixedSupportExtensionPrime 8009 = 8011 := by
  rfl

theorem mixedExtensionSemanticPrime8009 :
    Nat.Prime (mixedSupportExtensionPrime 8009) ∧
      8009 < mixedSupportExtensionPrime 8009 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8009 < candidate →
        mixedSupportExtensionPrime 8009 ≤ candidate := by
  rw [mixedExtensionPrimeEq8009]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8011 :
    mixedSupportExtensionPrime 8011 = 8017 := by
  rfl

theorem mixedExtensionSemanticPrime8011 :
    Nat.Prime (mixedSupportExtensionPrime 8011) ∧
      8011 < mixedSupportExtensionPrime 8011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8011 < candidate →
        mixedSupportExtensionPrime 8011 ≤ candidate := by
  rw [mixedExtensionPrimeEq8011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8017 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8017 :
    mixedSupportExtensionPrime 8017 = 8039 := by
  rfl

theorem mixedExtensionSemanticPrime8017 :
    Nat.Prime (mixedSupportExtensionPrime 8017) ∧
      8017 < mixedSupportExtensionPrime 8017 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8017 < candidate →
        mixedSupportExtensionPrime 8017 ≤ candidate := by
  rw [mixedExtensionPrimeEq8017]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8039 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8039 :
    mixedSupportExtensionPrime 8039 = 8053 := by
  rfl

theorem mixedExtensionSemanticPrime8039 :
    Nat.Prime (mixedSupportExtensionPrime 8039) ∧
      8039 < mixedSupportExtensionPrime 8039 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8039 < candidate →
        mixedSupportExtensionPrime 8039 ≤ candidate := by
  rw [mixedExtensionPrimeEq8039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8053 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8053 :
    mixedSupportExtensionPrime 8053 = 8059 := by
  rfl

theorem mixedExtensionSemanticPrime8053 :
    Nat.Prime (mixedSupportExtensionPrime 8053) ∧
      8053 < mixedSupportExtensionPrime 8053 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8053 < candidate →
        mixedSupportExtensionPrime 8053 ≤ candidate := by
  rw [mixedExtensionPrimeEq8053]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8059 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8059 :
    mixedSupportExtensionPrime 8059 = 8069 := by
  rfl

theorem mixedExtensionSemanticPrime8059 :
    Nat.Prime (mixedSupportExtensionPrime 8059) ∧
      8059 < mixedSupportExtensionPrime 8059 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8059 < candidate →
        mixedSupportExtensionPrime 8059 ≤ candidate := by
  rw [mixedExtensionPrimeEq8059]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8069 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8069 :
    mixedSupportExtensionPrime 8069 = 8081 := by
  rfl

theorem mixedExtensionSemanticPrime8069 :
    Nat.Prime (mixedSupportExtensionPrime 8069) ∧
      8069 < mixedSupportExtensionPrime 8069 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8069 < candidate →
        mixedSupportExtensionPrime 8069 ≤ candidate := by
  rw [mixedExtensionPrimeEq8069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8081 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8081 :
    mixedSupportExtensionPrime 8081 = 8087 := by
  rfl

theorem mixedExtensionSemanticPrime8081 :
    Nat.Prime (mixedSupportExtensionPrime 8081) ∧
      8081 < mixedSupportExtensionPrime 8081 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8081 < candidate →
        mixedSupportExtensionPrime 8081 ≤ candidate := by
  rw [mixedExtensionPrimeEq8081]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8087 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8087 :
    mixedSupportExtensionPrime 8087 = 8089 := by
  rfl

theorem mixedExtensionSemanticPrime8087 :
    Nat.Prime (mixedSupportExtensionPrime 8087) ∧
      8087 < mixedSupportExtensionPrime 8087 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8087 < candidate →
        mixedSupportExtensionPrime 8087 ≤ candidate := by
  rw [mixedExtensionPrimeEq8087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8089 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8089 :
    mixedSupportExtensionPrime 8089 = 8093 := by
  rfl

theorem mixedExtensionSemanticPrime8089 :
    Nat.Prime (mixedSupportExtensionPrime 8089) ∧
      8089 < mixedSupportExtensionPrime 8089 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8089 < candidate →
        mixedSupportExtensionPrime 8089 ≤ candidate := by
  rw [mixedExtensionPrimeEq8089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8093 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8093 :
    mixedSupportExtensionPrime 8093 = 8101 := by
  rfl

theorem mixedExtensionSemanticPrime8093 :
    Nat.Prime (mixedSupportExtensionPrime 8093) ∧
      8093 < mixedSupportExtensionPrime 8093 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8093 < candidate →
        mixedSupportExtensionPrime 8093 ≤ candidate := by
  rw [mixedExtensionPrimeEq8093]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8101 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8101 :
    mixedSupportExtensionPrime 8101 = 8111 := by
  rfl

theorem mixedExtensionSemanticPrime8101 :
    Nat.Prime (mixedSupportExtensionPrime 8101) ∧
      8101 < mixedSupportExtensionPrime 8101 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8101 < candidate →
        mixedSupportExtensionPrime 8101 ≤ candidate := by
  rw [mixedExtensionPrimeEq8101]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8111 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8111 :
    mixedSupportExtensionPrime 8111 = 8117 := by
  rfl

theorem mixedExtensionSemanticPrime8111 :
    Nat.Prime (mixedSupportExtensionPrime 8111) ∧
      8111 < mixedSupportExtensionPrime 8111 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8111 < candidate →
        mixedSupportExtensionPrime 8111 ≤ candidate := by
  rw [mixedExtensionPrimeEq8111]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8117 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8117 :
    mixedSupportExtensionPrime 8117 = 8123 := by
  rfl

theorem mixedExtensionSemanticPrime8117 :
    Nat.Prime (mixedSupportExtensionPrime 8117) ∧
      8117 < mixedSupportExtensionPrime 8117 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8117 < candidate →
        mixedSupportExtensionPrime 8117 ≤ candidate := by
  rw [mixedExtensionPrimeEq8117]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8123 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8123 :
    mixedSupportExtensionPrime 8123 = 8147 := by
  rfl

theorem mixedExtensionSemanticPrime8123 :
    Nat.Prime (mixedSupportExtensionPrime 8123) ∧
      8123 < mixedSupportExtensionPrime 8123 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8123 < candidate →
        mixedSupportExtensionPrime 8123 ≤ candidate := by
  rw [mixedExtensionPrimeEq8123]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8147 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8147 :
    mixedSupportExtensionPrime 8147 = 8161 := by
  rfl

theorem mixedExtensionSemanticPrime8147 :
    Nat.Prime (mixedSupportExtensionPrime 8147) ∧
      8147 < mixedSupportExtensionPrime 8147 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8147 < candidate →
        mixedSupportExtensionPrime 8147 ≤ candidate := by
  rw [mixedExtensionPrimeEq8147]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8161 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8161 :
    mixedSupportExtensionPrime 8161 = 8167 := by
  rfl

theorem mixedExtensionSemanticPrime8161 :
    Nat.Prime (mixedSupportExtensionPrime 8161) ∧
      8161 < mixedSupportExtensionPrime 8161 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8161 < candidate →
        mixedSupportExtensionPrime 8161 ≤ candidate := by
  rw [mixedExtensionPrimeEq8161]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8167 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq8167 :
    mixedSupportExtensionPrime 8167 = 8171 := by
  rfl

theorem mixedExtensionSemanticPrime8167 :
    Nat.Prime (mixedSupportExtensionPrime 8167) ∧
      8167 < mixedSupportExtensionPrime 8167 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        8167 < candidate →
        mixedSupportExtensionPrime 8167 ≤ candidate := by
  rw [mixedExtensionPrimeEq8167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 8171 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0031_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0031) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0031, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime7873
  · exact mixedExtensionSemanticPrime7877
  · exact mixedExtensionSemanticPrime7879
  · exact mixedExtensionSemanticPrime7883
  · exact mixedExtensionSemanticPrime7901
  · exact mixedExtensionSemanticPrime7907
  · exact mixedExtensionSemanticPrime7919
  · exact mixedExtensionSemanticPrime7927
  · exact mixedExtensionSemanticPrime7933
  · exact mixedExtensionSemanticPrime7937
  · exact mixedExtensionSemanticPrime7949
  · exact mixedExtensionSemanticPrime7951
  · exact mixedExtensionSemanticPrime7963
  · exact mixedExtensionSemanticPrime7993
  · exact mixedExtensionSemanticPrime8009
  · exact mixedExtensionSemanticPrime8011
  · exact mixedExtensionSemanticPrime8017
  · exact mixedExtensionSemanticPrime8039
  · exact mixedExtensionSemanticPrime8053
  · exact mixedExtensionSemanticPrime8059
  · exact mixedExtensionSemanticPrime8069
  · exact mixedExtensionSemanticPrime8081
  · exact mixedExtensionSemanticPrime8087
  · exact mixedExtensionSemanticPrime8089
  · exact mixedExtensionSemanticPrime8093
  · exact mixedExtensionSemanticPrime8101
  · exact mixedExtensionSemanticPrime8111
  · exact mixedExtensionSemanticPrime8117
  · exact mixedExtensionSemanticPrime8123
  · exact mixedExtensionSemanticPrime8147
  · exact mixedExtensionSemanticPrime8161
  · exact mixedExtensionSemanticPrime8167

#print axioms mixedExtensionSemanticInputs0031_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
