import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0017 : List ℕ :=
  [3931, 3943, 3947, 3967, 3989, 4001, 4003, 4007, 4013, 4019, 4021, 4027, 4049, 4051, 4057, 4073, 4079, 4091, 4093, 4099, 4111, 4127, 4129, 4133, 4139, 4153, 4157, 4159, 4177, 4201, 4211, 4217]

theorem mixedExtensionPrimeEq3931 :
    mixedSupportExtensionPrime 3931 = 3943 := by
  rfl

theorem mixedExtensionSemanticPrime3931 :
    Nat.Prime (mixedSupportExtensionPrime 3931) ∧
      3931 < mixedSupportExtensionPrime 3931 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3931 < candidate →
        mixedSupportExtensionPrime 3931 ≤ candidate := by
  rw [mixedExtensionPrimeEq3931]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3943 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3943 :
    mixedSupportExtensionPrime 3943 = 3947 := by
  rfl

theorem mixedExtensionSemanticPrime3943 :
    Nat.Prime (mixedSupportExtensionPrime 3943) ∧
      3943 < mixedSupportExtensionPrime 3943 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3943 < candidate →
        mixedSupportExtensionPrime 3943 ≤ candidate := by
  rw [mixedExtensionPrimeEq3943]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3947 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3947 :
    mixedSupportExtensionPrime 3947 = 3967 := by
  rfl

theorem mixedExtensionSemanticPrime3947 :
    Nat.Prime (mixedSupportExtensionPrime 3947) ∧
      3947 < mixedSupportExtensionPrime 3947 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3947 < candidate →
        mixedSupportExtensionPrime 3947 ≤ candidate := by
  rw [mixedExtensionPrimeEq3947]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3967 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3967 :
    mixedSupportExtensionPrime 3967 = 3989 := by
  rfl

theorem mixedExtensionSemanticPrime3967 :
    Nat.Prime (mixedSupportExtensionPrime 3967) ∧
      3967 < mixedSupportExtensionPrime 3967 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3967 < candidate →
        mixedSupportExtensionPrime 3967 ≤ candidate := by
  rw [mixedExtensionPrimeEq3967]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3989 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3989 :
    mixedSupportExtensionPrime 3989 = 4001 := by
  rfl

theorem mixedExtensionSemanticPrime3989 :
    Nat.Prime (mixedSupportExtensionPrime 3989) ∧
      3989 < mixedSupportExtensionPrime 3989 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3989 < candidate →
        mixedSupportExtensionPrime 3989 ≤ candidate := by
  rw [mixedExtensionPrimeEq3989]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4001 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4001 :
    mixedSupportExtensionPrime 4001 = 4003 := by
  rfl

theorem mixedExtensionSemanticPrime4001 :
    Nat.Prime (mixedSupportExtensionPrime 4001) ∧
      4001 < mixedSupportExtensionPrime 4001 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4001 < candidate →
        mixedSupportExtensionPrime 4001 ≤ candidate := by
  rw [mixedExtensionPrimeEq4001]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4003 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4003 :
    mixedSupportExtensionPrime 4003 = 4007 := by
  rfl

theorem mixedExtensionSemanticPrime4003 :
    Nat.Prime (mixedSupportExtensionPrime 4003) ∧
      4003 < mixedSupportExtensionPrime 4003 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4003 < candidate →
        mixedSupportExtensionPrime 4003 ≤ candidate := by
  rw [mixedExtensionPrimeEq4003]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4007 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4007 :
    mixedSupportExtensionPrime 4007 = 4013 := by
  rfl

theorem mixedExtensionSemanticPrime4007 :
    Nat.Prime (mixedSupportExtensionPrime 4007) ∧
      4007 < mixedSupportExtensionPrime 4007 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4007 < candidate →
        mixedSupportExtensionPrime 4007 ≤ candidate := by
  rw [mixedExtensionPrimeEq4007]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4013 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4013 :
    mixedSupportExtensionPrime 4013 = 4019 := by
  rfl

theorem mixedExtensionSemanticPrime4013 :
    Nat.Prime (mixedSupportExtensionPrime 4013) ∧
      4013 < mixedSupportExtensionPrime 4013 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4013 < candidate →
        mixedSupportExtensionPrime 4013 ≤ candidate := by
  rw [mixedExtensionPrimeEq4013]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4019 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4019 :
    mixedSupportExtensionPrime 4019 = 4021 := by
  rfl

theorem mixedExtensionSemanticPrime4019 :
    Nat.Prime (mixedSupportExtensionPrime 4019) ∧
      4019 < mixedSupportExtensionPrime 4019 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4019 < candidate →
        mixedSupportExtensionPrime 4019 ≤ candidate := by
  rw [mixedExtensionPrimeEq4019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4021 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4021 :
    mixedSupportExtensionPrime 4021 = 4027 := by
  rfl

theorem mixedExtensionSemanticPrime4021 :
    Nat.Prime (mixedSupportExtensionPrime 4021) ∧
      4021 < mixedSupportExtensionPrime 4021 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4021 < candidate →
        mixedSupportExtensionPrime 4021 ≤ candidate := by
  rw [mixedExtensionPrimeEq4021]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4027 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4027 :
    mixedSupportExtensionPrime 4027 = 4049 := by
  rfl

theorem mixedExtensionSemanticPrime4027 :
    Nat.Prime (mixedSupportExtensionPrime 4027) ∧
      4027 < mixedSupportExtensionPrime 4027 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4027 < candidate →
        mixedSupportExtensionPrime 4027 ≤ candidate := by
  rw [mixedExtensionPrimeEq4027]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4049 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4049 :
    mixedSupportExtensionPrime 4049 = 4051 := by
  rfl

theorem mixedExtensionSemanticPrime4049 :
    Nat.Prime (mixedSupportExtensionPrime 4049) ∧
      4049 < mixedSupportExtensionPrime 4049 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4049 < candidate →
        mixedSupportExtensionPrime 4049 ≤ candidate := by
  rw [mixedExtensionPrimeEq4049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4051 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4051 :
    mixedSupportExtensionPrime 4051 = 4057 := by
  rfl

theorem mixedExtensionSemanticPrime4051 :
    Nat.Prime (mixedSupportExtensionPrime 4051) ∧
      4051 < mixedSupportExtensionPrime 4051 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4051 < candidate →
        mixedSupportExtensionPrime 4051 ≤ candidate := by
  rw [mixedExtensionPrimeEq4051]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4057 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4057 :
    mixedSupportExtensionPrime 4057 = 4073 := by
  rfl

theorem mixedExtensionSemanticPrime4057 :
    Nat.Prime (mixedSupportExtensionPrime 4057) ∧
      4057 < mixedSupportExtensionPrime 4057 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4057 < candidate →
        mixedSupportExtensionPrime 4057 ≤ candidate := by
  rw [mixedExtensionPrimeEq4057]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4073 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4073 :
    mixedSupportExtensionPrime 4073 = 4079 := by
  rfl

theorem mixedExtensionSemanticPrime4073 :
    Nat.Prime (mixedSupportExtensionPrime 4073) ∧
      4073 < mixedSupportExtensionPrime 4073 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4073 < candidate →
        mixedSupportExtensionPrime 4073 ≤ candidate := by
  rw [mixedExtensionPrimeEq4073]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4079 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4079 :
    mixedSupportExtensionPrime 4079 = 4091 := by
  rfl

theorem mixedExtensionSemanticPrime4079 :
    Nat.Prime (mixedSupportExtensionPrime 4079) ∧
      4079 < mixedSupportExtensionPrime 4079 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4079 < candidate →
        mixedSupportExtensionPrime 4079 ≤ candidate := by
  rw [mixedExtensionPrimeEq4079]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4091 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4091 :
    mixedSupportExtensionPrime 4091 = 4093 := by
  rfl

theorem mixedExtensionSemanticPrime4091 :
    Nat.Prime (mixedSupportExtensionPrime 4091) ∧
      4091 < mixedSupportExtensionPrime 4091 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4091 < candidate →
        mixedSupportExtensionPrime 4091 ≤ candidate := by
  rw [mixedExtensionPrimeEq4091]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4093 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4093 :
    mixedSupportExtensionPrime 4093 = 4099 := by
  rfl

theorem mixedExtensionSemanticPrime4093 :
    Nat.Prime (mixedSupportExtensionPrime 4093) ∧
      4093 < mixedSupportExtensionPrime 4093 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4093 < candidate →
        mixedSupportExtensionPrime 4093 ≤ candidate := by
  rw [mixedExtensionPrimeEq4093]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4099 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4099 :
    mixedSupportExtensionPrime 4099 = 4111 := by
  rfl

theorem mixedExtensionSemanticPrime4099 :
    Nat.Prime (mixedSupportExtensionPrime 4099) ∧
      4099 < mixedSupportExtensionPrime 4099 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4099 < candidate →
        mixedSupportExtensionPrime 4099 ≤ candidate := by
  rw [mixedExtensionPrimeEq4099]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4111 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4111 :
    mixedSupportExtensionPrime 4111 = 4127 := by
  rfl

theorem mixedExtensionSemanticPrime4111 :
    Nat.Prime (mixedSupportExtensionPrime 4111) ∧
      4111 < mixedSupportExtensionPrime 4111 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4111 < candidate →
        mixedSupportExtensionPrime 4111 ≤ candidate := by
  rw [mixedExtensionPrimeEq4111]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4127 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4127 :
    mixedSupportExtensionPrime 4127 = 4129 := by
  rfl

theorem mixedExtensionSemanticPrime4127 :
    Nat.Prime (mixedSupportExtensionPrime 4127) ∧
      4127 < mixedSupportExtensionPrime 4127 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4127 < candidate →
        mixedSupportExtensionPrime 4127 ≤ candidate := by
  rw [mixedExtensionPrimeEq4127]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4129 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4129 :
    mixedSupportExtensionPrime 4129 = 4133 := by
  rfl

theorem mixedExtensionSemanticPrime4129 :
    Nat.Prime (mixedSupportExtensionPrime 4129) ∧
      4129 < mixedSupportExtensionPrime 4129 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4129 < candidate →
        mixedSupportExtensionPrime 4129 ≤ candidate := by
  rw [mixedExtensionPrimeEq4129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4133 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4133 :
    mixedSupportExtensionPrime 4133 = 4139 := by
  rfl

theorem mixedExtensionSemanticPrime4133 :
    Nat.Prime (mixedSupportExtensionPrime 4133) ∧
      4133 < mixedSupportExtensionPrime 4133 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4133 < candidate →
        mixedSupportExtensionPrime 4133 ≤ candidate := by
  rw [mixedExtensionPrimeEq4133]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4139 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4139 :
    mixedSupportExtensionPrime 4139 = 4153 := by
  rfl

theorem mixedExtensionSemanticPrime4139 :
    Nat.Prime (mixedSupportExtensionPrime 4139) ∧
      4139 < mixedSupportExtensionPrime 4139 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4139 < candidate →
        mixedSupportExtensionPrime 4139 ≤ candidate := by
  rw [mixedExtensionPrimeEq4139]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4153 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4153 :
    mixedSupportExtensionPrime 4153 = 4157 := by
  rfl

theorem mixedExtensionSemanticPrime4153 :
    Nat.Prime (mixedSupportExtensionPrime 4153) ∧
      4153 < mixedSupportExtensionPrime 4153 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4153 < candidate →
        mixedSupportExtensionPrime 4153 ≤ candidate := by
  rw [mixedExtensionPrimeEq4153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4157 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4157 :
    mixedSupportExtensionPrime 4157 = 4159 := by
  rfl

theorem mixedExtensionSemanticPrime4157 :
    Nat.Prime (mixedSupportExtensionPrime 4157) ∧
      4157 < mixedSupportExtensionPrime 4157 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4157 < candidate →
        mixedSupportExtensionPrime 4157 ≤ candidate := by
  rw [mixedExtensionPrimeEq4157]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4159 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4159 :
    mixedSupportExtensionPrime 4159 = 4177 := by
  rfl

theorem mixedExtensionSemanticPrime4159 :
    Nat.Prime (mixedSupportExtensionPrime 4159) ∧
      4159 < mixedSupportExtensionPrime 4159 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4159 < candidate →
        mixedSupportExtensionPrime 4159 ≤ candidate := by
  rw [mixedExtensionPrimeEq4159]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4177 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4177 :
    mixedSupportExtensionPrime 4177 = 4201 := by
  rfl

theorem mixedExtensionSemanticPrime4177 :
    Nat.Prime (mixedSupportExtensionPrime 4177) ∧
      4177 < mixedSupportExtensionPrime 4177 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4177 < candidate →
        mixedSupportExtensionPrime 4177 ≤ candidate := by
  rw [mixedExtensionPrimeEq4177]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4201 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4201 :
    mixedSupportExtensionPrime 4201 = 4211 := by
  rfl

theorem mixedExtensionSemanticPrime4201 :
    Nat.Prime (mixedSupportExtensionPrime 4201) ∧
      4201 < mixedSupportExtensionPrime 4201 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4201 < candidate →
        mixedSupportExtensionPrime 4201 ≤ candidate := by
  rw [mixedExtensionPrimeEq4201]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4211 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4211 :
    mixedSupportExtensionPrime 4211 = 4217 := by
  rfl

theorem mixedExtensionSemanticPrime4211 :
    Nat.Prime (mixedSupportExtensionPrime 4211) ∧
      4211 < mixedSupportExtensionPrime 4211 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4211 < candidate →
        mixedSupportExtensionPrime 4211 ≤ candidate := by
  rw [mixedExtensionPrimeEq4211]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4217 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4217 :
    mixedSupportExtensionPrime 4217 = 4219 := by
  rfl

theorem mixedExtensionSemanticPrime4217 :
    Nat.Prime (mixedSupportExtensionPrime 4217) ∧
      4217 < mixedSupportExtensionPrime 4217 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4217 < candidate →
        mixedSupportExtensionPrime 4217 ≤ candidate := by
  rw [mixedExtensionPrimeEq4217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4219 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0017_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0017) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0017, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime3931
  · exact mixedExtensionSemanticPrime3943
  · exact mixedExtensionSemanticPrime3947
  · exact mixedExtensionSemanticPrime3967
  · exact mixedExtensionSemanticPrime3989
  · exact mixedExtensionSemanticPrime4001
  · exact mixedExtensionSemanticPrime4003
  · exact mixedExtensionSemanticPrime4007
  · exact mixedExtensionSemanticPrime4013
  · exact mixedExtensionSemanticPrime4019
  · exact mixedExtensionSemanticPrime4021
  · exact mixedExtensionSemanticPrime4027
  · exact mixedExtensionSemanticPrime4049
  · exact mixedExtensionSemanticPrime4051
  · exact mixedExtensionSemanticPrime4057
  · exact mixedExtensionSemanticPrime4073
  · exact mixedExtensionSemanticPrime4079
  · exact mixedExtensionSemanticPrime4091
  · exact mixedExtensionSemanticPrime4093
  · exact mixedExtensionSemanticPrime4099
  · exact mixedExtensionSemanticPrime4111
  · exact mixedExtensionSemanticPrime4127
  · exact mixedExtensionSemanticPrime4129
  · exact mixedExtensionSemanticPrime4133
  · exact mixedExtensionSemanticPrime4139
  · exact mixedExtensionSemanticPrime4153
  · exact mixedExtensionSemanticPrime4157
  · exact mixedExtensionSemanticPrime4159
  · exact mixedExtensionSemanticPrime4177
  · exact mixedExtensionSemanticPrime4201
  · exact mixedExtensionSemanticPrime4211
  · exact mixedExtensionSemanticPrime4217

#print axioms mixedExtensionSemanticInputs0017_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
