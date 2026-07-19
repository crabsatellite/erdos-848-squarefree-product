import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0013 : List ℕ :=
  [2887, 2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023, 3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169]

theorem mixedExtensionPrimeEq2887 :
    mixedSupportExtensionPrime 2887 = 2897 := by
  rfl

theorem mixedExtensionSemanticPrime2887 :
    Nat.Prime (mixedSupportExtensionPrime 2887) ∧
      2887 < mixedSupportExtensionPrime 2887 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2887 < candidate →
        mixedSupportExtensionPrime 2887 ≤ candidate := by
  rw [mixedExtensionPrimeEq2887]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2897 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2897 :
    mixedSupportExtensionPrime 2897 = 2903 := by
  rfl

theorem mixedExtensionSemanticPrime2897 :
    Nat.Prime (mixedSupportExtensionPrime 2897) ∧
      2897 < mixedSupportExtensionPrime 2897 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2897 < candidate →
        mixedSupportExtensionPrime 2897 ≤ candidate := by
  rw [mixedExtensionPrimeEq2897]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2903 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2903 :
    mixedSupportExtensionPrime 2903 = 2909 := by
  rfl

theorem mixedExtensionSemanticPrime2903 :
    Nat.Prime (mixedSupportExtensionPrime 2903) ∧
      2903 < mixedSupportExtensionPrime 2903 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2903 < candidate →
        mixedSupportExtensionPrime 2903 ≤ candidate := by
  rw [mixedExtensionPrimeEq2903]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2909 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2909 :
    mixedSupportExtensionPrime 2909 = 2917 := by
  rfl

theorem mixedExtensionSemanticPrime2909 :
    Nat.Prime (mixedSupportExtensionPrime 2909) ∧
      2909 < mixedSupportExtensionPrime 2909 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2909 < candidate →
        mixedSupportExtensionPrime 2909 ≤ candidate := by
  rw [mixedExtensionPrimeEq2909]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2917 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2917 :
    mixedSupportExtensionPrime 2917 = 2927 := by
  rfl

theorem mixedExtensionSemanticPrime2917 :
    Nat.Prime (mixedSupportExtensionPrime 2917) ∧
      2917 < mixedSupportExtensionPrime 2917 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2917 < candidate →
        mixedSupportExtensionPrime 2917 ≤ candidate := by
  rw [mixedExtensionPrimeEq2917]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2927 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2927 :
    mixedSupportExtensionPrime 2927 = 2939 := by
  rfl

theorem mixedExtensionSemanticPrime2927 :
    Nat.Prime (mixedSupportExtensionPrime 2927) ∧
      2927 < mixedSupportExtensionPrime 2927 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2927 < candidate →
        mixedSupportExtensionPrime 2927 ≤ candidate := by
  rw [mixedExtensionPrimeEq2927]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2939 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2939 :
    mixedSupportExtensionPrime 2939 = 2953 := by
  rfl

theorem mixedExtensionSemanticPrime2939 :
    Nat.Prime (mixedSupportExtensionPrime 2939) ∧
      2939 < mixedSupportExtensionPrime 2939 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2939 < candidate →
        mixedSupportExtensionPrime 2939 ≤ candidate := by
  rw [mixedExtensionPrimeEq2939]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2953 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2953 :
    mixedSupportExtensionPrime 2953 = 2957 := by
  rfl

theorem mixedExtensionSemanticPrime2953 :
    Nat.Prime (mixedSupportExtensionPrime 2953) ∧
      2953 < mixedSupportExtensionPrime 2953 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2953 < candidate →
        mixedSupportExtensionPrime 2953 ≤ candidate := by
  rw [mixedExtensionPrimeEq2953]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2957 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2957 :
    mixedSupportExtensionPrime 2957 = 2963 := by
  rfl

theorem mixedExtensionSemanticPrime2957 :
    Nat.Prime (mixedSupportExtensionPrime 2957) ∧
      2957 < mixedSupportExtensionPrime 2957 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2957 < candidate →
        mixedSupportExtensionPrime 2957 ≤ candidate := by
  rw [mixedExtensionPrimeEq2957]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2963 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2963 :
    mixedSupportExtensionPrime 2963 = 2969 := by
  rfl

theorem mixedExtensionSemanticPrime2963 :
    Nat.Prime (mixedSupportExtensionPrime 2963) ∧
      2963 < mixedSupportExtensionPrime 2963 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2963 < candidate →
        mixedSupportExtensionPrime 2963 ≤ candidate := by
  rw [mixedExtensionPrimeEq2963]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2969 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2969 :
    mixedSupportExtensionPrime 2969 = 2971 := by
  rfl

theorem mixedExtensionSemanticPrime2969 :
    Nat.Prime (mixedSupportExtensionPrime 2969) ∧
      2969 < mixedSupportExtensionPrime 2969 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2969 < candidate →
        mixedSupportExtensionPrime 2969 ≤ candidate := by
  rw [mixedExtensionPrimeEq2969]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2971 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2971 :
    mixedSupportExtensionPrime 2971 = 2999 := by
  rfl

theorem mixedExtensionSemanticPrime2971 :
    Nat.Prime (mixedSupportExtensionPrime 2971) ∧
      2971 < mixedSupportExtensionPrime 2971 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2971 < candidate →
        mixedSupportExtensionPrime 2971 ≤ candidate := by
  rw [mixedExtensionPrimeEq2971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2999 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2999 :
    mixedSupportExtensionPrime 2999 = 3001 := by
  rfl

theorem mixedExtensionSemanticPrime2999 :
    Nat.Prime (mixedSupportExtensionPrime 2999) ∧
      2999 < mixedSupportExtensionPrime 2999 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2999 < candidate →
        mixedSupportExtensionPrime 2999 ≤ candidate := by
  rw [mixedExtensionPrimeEq2999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3001 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3001 :
    mixedSupportExtensionPrime 3001 = 3011 := by
  rfl

theorem mixedExtensionSemanticPrime3001 :
    Nat.Prime (mixedSupportExtensionPrime 3001) ∧
      3001 < mixedSupportExtensionPrime 3001 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3001 < candidate →
        mixedSupportExtensionPrime 3001 ≤ candidate := by
  rw [mixedExtensionPrimeEq3001]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3011 :
    mixedSupportExtensionPrime 3011 = 3019 := by
  rfl

theorem mixedExtensionSemanticPrime3011 :
    Nat.Prime (mixedSupportExtensionPrime 3011) ∧
      3011 < mixedSupportExtensionPrime 3011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3011 < candidate →
        mixedSupportExtensionPrime 3011 ≤ candidate := by
  rw [mixedExtensionPrimeEq3011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3019 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3019 :
    mixedSupportExtensionPrime 3019 = 3023 := by
  rfl

theorem mixedExtensionSemanticPrime3019 :
    Nat.Prime (mixedSupportExtensionPrime 3019) ∧
      3019 < mixedSupportExtensionPrime 3019 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3019 < candidate →
        mixedSupportExtensionPrime 3019 ≤ candidate := by
  rw [mixedExtensionPrimeEq3019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3023 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3023 :
    mixedSupportExtensionPrime 3023 = 3037 := by
  rfl

theorem mixedExtensionSemanticPrime3023 :
    Nat.Prime (mixedSupportExtensionPrime 3023) ∧
      3023 < mixedSupportExtensionPrime 3023 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3023 < candidate →
        mixedSupportExtensionPrime 3023 ≤ candidate := by
  rw [mixedExtensionPrimeEq3023]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3037 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3037 :
    mixedSupportExtensionPrime 3037 = 3041 := by
  rfl

theorem mixedExtensionSemanticPrime3037 :
    Nat.Prime (mixedSupportExtensionPrime 3037) ∧
      3037 < mixedSupportExtensionPrime 3037 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3037 < candidate →
        mixedSupportExtensionPrime 3037 ≤ candidate := by
  rw [mixedExtensionPrimeEq3037]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3041 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3041 :
    mixedSupportExtensionPrime 3041 = 3049 := by
  rfl

theorem mixedExtensionSemanticPrime3041 :
    Nat.Prime (mixedSupportExtensionPrime 3041) ∧
      3041 < mixedSupportExtensionPrime 3041 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3041 < candidate →
        mixedSupportExtensionPrime 3041 ≤ candidate := by
  rw [mixedExtensionPrimeEq3041]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3049 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3049 :
    mixedSupportExtensionPrime 3049 = 3061 := by
  rfl

theorem mixedExtensionSemanticPrime3049 :
    Nat.Prime (mixedSupportExtensionPrime 3049) ∧
      3049 < mixedSupportExtensionPrime 3049 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3049 < candidate →
        mixedSupportExtensionPrime 3049 ≤ candidate := by
  rw [mixedExtensionPrimeEq3049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3061 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3061 :
    mixedSupportExtensionPrime 3061 = 3067 := by
  rfl

theorem mixedExtensionSemanticPrime3061 :
    Nat.Prime (mixedSupportExtensionPrime 3061) ∧
      3061 < mixedSupportExtensionPrime 3061 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3061 < candidate →
        mixedSupportExtensionPrime 3061 ≤ candidate := by
  rw [mixedExtensionPrimeEq3061]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3067 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3067 :
    mixedSupportExtensionPrime 3067 = 3079 := by
  rfl

theorem mixedExtensionSemanticPrime3067 :
    Nat.Prime (mixedSupportExtensionPrime 3067) ∧
      3067 < mixedSupportExtensionPrime 3067 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3067 < candidate →
        mixedSupportExtensionPrime 3067 ≤ candidate := by
  rw [mixedExtensionPrimeEq3067]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3079 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3079 :
    mixedSupportExtensionPrime 3079 = 3083 := by
  rfl

theorem mixedExtensionSemanticPrime3079 :
    Nat.Prime (mixedSupportExtensionPrime 3079) ∧
      3079 < mixedSupportExtensionPrime 3079 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3079 < candidate →
        mixedSupportExtensionPrime 3079 ≤ candidate := by
  rw [mixedExtensionPrimeEq3079]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3083 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3083 :
    mixedSupportExtensionPrime 3083 = 3089 := by
  rfl

theorem mixedExtensionSemanticPrime3083 :
    Nat.Prime (mixedSupportExtensionPrime 3083) ∧
      3083 < mixedSupportExtensionPrime 3083 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3083 < candidate →
        mixedSupportExtensionPrime 3083 ≤ candidate := by
  rw [mixedExtensionPrimeEq3083]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3089 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3089 :
    mixedSupportExtensionPrime 3089 = 3109 := by
  rfl

theorem mixedExtensionSemanticPrime3089 :
    Nat.Prime (mixedSupportExtensionPrime 3089) ∧
      3089 < mixedSupportExtensionPrime 3089 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3089 < candidate →
        mixedSupportExtensionPrime 3089 ≤ candidate := by
  rw [mixedExtensionPrimeEq3089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3109 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3109 :
    mixedSupportExtensionPrime 3109 = 3119 := by
  rfl

theorem mixedExtensionSemanticPrime3109 :
    Nat.Prime (mixedSupportExtensionPrime 3109) ∧
      3109 < mixedSupportExtensionPrime 3109 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3109 < candidate →
        mixedSupportExtensionPrime 3109 ≤ candidate := by
  rw [mixedExtensionPrimeEq3109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3119 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3119 :
    mixedSupportExtensionPrime 3119 = 3121 := by
  rfl

theorem mixedExtensionSemanticPrime3119 :
    Nat.Prime (mixedSupportExtensionPrime 3119) ∧
      3119 < mixedSupportExtensionPrime 3119 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3119 < candidate →
        mixedSupportExtensionPrime 3119 ≤ candidate := by
  rw [mixedExtensionPrimeEq3119]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3121 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3121 :
    mixedSupportExtensionPrime 3121 = 3137 := by
  rfl

theorem mixedExtensionSemanticPrime3121 :
    Nat.Prime (mixedSupportExtensionPrime 3121) ∧
      3121 < mixedSupportExtensionPrime 3121 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3121 < candidate →
        mixedSupportExtensionPrime 3121 ≤ candidate := by
  rw [mixedExtensionPrimeEq3121]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3137 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3137 :
    mixedSupportExtensionPrime 3137 = 3163 := by
  rfl

theorem mixedExtensionSemanticPrime3137 :
    Nat.Prime (mixedSupportExtensionPrime 3137) ∧
      3137 < mixedSupportExtensionPrime 3137 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3137 < candidate →
        mixedSupportExtensionPrime 3137 ≤ candidate := by
  rw [mixedExtensionPrimeEq3137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3163 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3163 :
    mixedSupportExtensionPrime 3163 = 3167 := by
  rfl

theorem mixedExtensionSemanticPrime3163 :
    Nat.Prime (mixedSupportExtensionPrime 3163) ∧
      3163 < mixedSupportExtensionPrime 3163 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3163 < candidate →
        mixedSupportExtensionPrime 3163 ≤ candidate := by
  rw [mixedExtensionPrimeEq3163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3167 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3167 :
    mixedSupportExtensionPrime 3167 = 3169 := by
  rfl

theorem mixedExtensionSemanticPrime3167 :
    Nat.Prime (mixedSupportExtensionPrime 3167) ∧
      3167 < mixedSupportExtensionPrime 3167 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3167 < candidate →
        mixedSupportExtensionPrime 3167 ≤ candidate := by
  rw [mixedExtensionPrimeEq3167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3169 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3169 :
    mixedSupportExtensionPrime 3169 = 3181 := by
  rfl

theorem mixedExtensionSemanticPrime3169 :
    Nat.Prime (mixedSupportExtensionPrime 3169) ∧
      3169 < mixedSupportExtensionPrime 3169 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3169 < candidate →
        mixedSupportExtensionPrime 3169 ≤ candidate := by
  rw [mixedExtensionPrimeEq3169]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3181 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0013_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0013) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0013, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime2887
  · exact mixedExtensionSemanticPrime2897
  · exact mixedExtensionSemanticPrime2903
  · exact mixedExtensionSemanticPrime2909
  · exact mixedExtensionSemanticPrime2917
  · exact mixedExtensionSemanticPrime2927
  · exact mixedExtensionSemanticPrime2939
  · exact mixedExtensionSemanticPrime2953
  · exact mixedExtensionSemanticPrime2957
  · exact mixedExtensionSemanticPrime2963
  · exact mixedExtensionSemanticPrime2969
  · exact mixedExtensionSemanticPrime2971
  · exact mixedExtensionSemanticPrime2999
  · exact mixedExtensionSemanticPrime3001
  · exact mixedExtensionSemanticPrime3011
  · exact mixedExtensionSemanticPrime3019
  · exact mixedExtensionSemanticPrime3023
  · exact mixedExtensionSemanticPrime3037
  · exact mixedExtensionSemanticPrime3041
  · exact mixedExtensionSemanticPrime3049
  · exact mixedExtensionSemanticPrime3061
  · exact mixedExtensionSemanticPrime3067
  · exact mixedExtensionSemanticPrime3079
  · exact mixedExtensionSemanticPrime3083
  · exact mixedExtensionSemanticPrime3089
  · exact mixedExtensionSemanticPrime3109
  · exact mixedExtensionSemanticPrime3119
  · exact mixedExtensionSemanticPrime3121
  · exact mixedExtensionSemanticPrime3137
  · exact mixedExtensionSemanticPrime3163
  · exact mixedExtensionSemanticPrime3167
  · exact mixedExtensionSemanticPrime3169

#print axioms mixedExtensionSemanticInputs0013_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
