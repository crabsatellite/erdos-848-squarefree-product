import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0028 : List ℕ :=
  [6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283]

theorem mixedExtensionPrimeEq6983 :
    mixedSupportExtensionPrime 6983 = 6991 := by
  rfl

theorem mixedExtensionSemanticPrime6983 :
    Nat.Prime (mixedSupportExtensionPrime 6983) ∧
      6983 < mixedSupportExtensionPrime 6983 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6983 < candidate →
        mixedSupportExtensionPrime 6983 ≤ candidate := by
  rw [mixedExtensionPrimeEq6983]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6991 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6991 :
    mixedSupportExtensionPrime 6991 = 6997 := by
  rfl

theorem mixedExtensionSemanticPrime6991 :
    Nat.Prime (mixedSupportExtensionPrime 6991) ∧
      6991 < mixedSupportExtensionPrime 6991 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6991 < candidate →
        mixedSupportExtensionPrime 6991 ≤ candidate := by
  rw [mixedExtensionPrimeEq6991]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6997 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6997 :
    mixedSupportExtensionPrime 6997 = 7001 := by
  rfl

theorem mixedExtensionSemanticPrime6997 :
    Nat.Prime (mixedSupportExtensionPrime 6997) ∧
      6997 < mixedSupportExtensionPrime 6997 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6997 < candidate →
        mixedSupportExtensionPrime 6997 ≤ candidate := by
  rw [mixedExtensionPrimeEq6997]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7001 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7001 :
    mixedSupportExtensionPrime 7001 = 7013 := by
  rfl

theorem mixedExtensionSemanticPrime7001 :
    Nat.Prime (mixedSupportExtensionPrime 7001) ∧
      7001 < mixedSupportExtensionPrime 7001 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7001 < candidate →
        mixedSupportExtensionPrime 7001 ≤ candidate := by
  rw [mixedExtensionPrimeEq7001]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7013 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7013 :
    mixedSupportExtensionPrime 7013 = 7019 := by
  rfl

theorem mixedExtensionSemanticPrime7013 :
    Nat.Prime (mixedSupportExtensionPrime 7013) ∧
      7013 < mixedSupportExtensionPrime 7013 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7013 < candidate →
        mixedSupportExtensionPrime 7013 ≤ candidate := by
  rw [mixedExtensionPrimeEq7013]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7019 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7019 :
    mixedSupportExtensionPrime 7019 = 7027 := by
  rfl

theorem mixedExtensionSemanticPrime7019 :
    Nat.Prime (mixedSupportExtensionPrime 7019) ∧
      7019 < mixedSupportExtensionPrime 7019 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7019 < candidate →
        mixedSupportExtensionPrime 7019 ≤ candidate := by
  rw [mixedExtensionPrimeEq7019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7027 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7027 :
    mixedSupportExtensionPrime 7027 = 7039 := by
  rfl

theorem mixedExtensionSemanticPrime7027 :
    Nat.Prime (mixedSupportExtensionPrime 7027) ∧
      7027 < mixedSupportExtensionPrime 7027 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7027 < candidate →
        mixedSupportExtensionPrime 7027 ≤ candidate := by
  rw [mixedExtensionPrimeEq7027]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7039 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7039 :
    mixedSupportExtensionPrime 7039 = 7043 := by
  rfl

theorem mixedExtensionSemanticPrime7039 :
    Nat.Prime (mixedSupportExtensionPrime 7039) ∧
      7039 < mixedSupportExtensionPrime 7039 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7039 < candidate →
        mixedSupportExtensionPrime 7039 ≤ candidate := by
  rw [mixedExtensionPrimeEq7039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7043 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7043 :
    mixedSupportExtensionPrime 7043 = 7057 := by
  rfl

theorem mixedExtensionSemanticPrime7043 :
    Nat.Prime (mixedSupportExtensionPrime 7043) ∧
      7043 < mixedSupportExtensionPrime 7043 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7043 < candidate →
        mixedSupportExtensionPrime 7043 ≤ candidate := by
  rw [mixedExtensionPrimeEq7043]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7057 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7057 :
    mixedSupportExtensionPrime 7057 = 7069 := by
  rfl

theorem mixedExtensionSemanticPrime7057 :
    Nat.Prime (mixedSupportExtensionPrime 7057) ∧
      7057 < mixedSupportExtensionPrime 7057 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7057 < candidate →
        mixedSupportExtensionPrime 7057 ≤ candidate := by
  rw [mixedExtensionPrimeEq7057]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7069 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7069 :
    mixedSupportExtensionPrime 7069 = 7079 := by
  rfl

theorem mixedExtensionSemanticPrime7069 :
    Nat.Prime (mixedSupportExtensionPrime 7069) ∧
      7069 < mixedSupportExtensionPrime 7069 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7069 < candidate →
        mixedSupportExtensionPrime 7069 ≤ candidate := by
  rw [mixedExtensionPrimeEq7069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7079 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7079 :
    mixedSupportExtensionPrime 7079 = 7103 := by
  rfl

theorem mixedExtensionSemanticPrime7079 :
    Nat.Prime (mixedSupportExtensionPrime 7079) ∧
      7079 < mixedSupportExtensionPrime 7079 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7079 < candidate →
        mixedSupportExtensionPrime 7079 ≤ candidate := by
  rw [mixedExtensionPrimeEq7079]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7103 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7103 :
    mixedSupportExtensionPrime 7103 = 7109 := by
  rfl

theorem mixedExtensionSemanticPrime7103 :
    Nat.Prime (mixedSupportExtensionPrime 7103) ∧
      7103 < mixedSupportExtensionPrime 7103 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7103 < candidate →
        mixedSupportExtensionPrime 7103 ≤ candidate := by
  rw [mixedExtensionPrimeEq7103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7109 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7109 :
    mixedSupportExtensionPrime 7109 = 7121 := by
  rfl

theorem mixedExtensionSemanticPrime7109 :
    Nat.Prime (mixedSupportExtensionPrime 7109) ∧
      7109 < mixedSupportExtensionPrime 7109 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7109 < candidate →
        mixedSupportExtensionPrime 7109 ≤ candidate := by
  rw [mixedExtensionPrimeEq7109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7121 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7121 :
    mixedSupportExtensionPrime 7121 = 7127 := by
  rfl

theorem mixedExtensionSemanticPrime7121 :
    Nat.Prime (mixedSupportExtensionPrime 7121) ∧
      7121 < mixedSupportExtensionPrime 7121 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7121 < candidate →
        mixedSupportExtensionPrime 7121 ≤ candidate := by
  rw [mixedExtensionPrimeEq7121]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7127 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7127 :
    mixedSupportExtensionPrime 7127 = 7129 := by
  rfl

theorem mixedExtensionSemanticPrime7127 :
    Nat.Prime (mixedSupportExtensionPrime 7127) ∧
      7127 < mixedSupportExtensionPrime 7127 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7127 < candidate →
        mixedSupportExtensionPrime 7127 ≤ candidate := by
  rw [mixedExtensionPrimeEq7127]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7129 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7129 :
    mixedSupportExtensionPrime 7129 = 7151 := by
  rfl

theorem mixedExtensionSemanticPrime7129 :
    Nat.Prime (mixedSupportExtensionPrime 7129) ∧
      7129 < mixedSupportExtensionPrime 7129 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7129 < candidate →
        mixedSupportExtensionPrime 7129 ≤ candidate := by
  rw [mixedExtensionPrimeEq7129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7151 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7151 :
    mixedSupportExtensionPrime 7151 = 7159 := by
  rfl

theorem mixedExtensionSemanticPrime7151 :
    Nat.Prime (mixedSupportExtensionPrime 7151) ∧
      7151 < mixedSupportExtensionPrime 7151 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7151 < candidate →
        mixedSupportExtensionPrime 7151 ≤ candidate := by
  rw [mixedExtensionPrimeEq7151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7159 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7159 :
    mixedSupportExtensionPrime 7159 = 7177 := by
  rfl

theorem mixedExtensionSemanticPrime7159 :
    Nat.Prime (mixedSupportExtensionPrime 7159) ∧
      7159 < mixedSupportExtensionPrime 7159 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7159 < candidate →
        mixedSupportExtensionPrime 7159 ≤ candidate := by
  rw [mixedExtensionPrimeEq7159]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7177 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7177 :
    mixedSupportExtensionPrime 7177 = 7187 := by
  rfl

theorem mixedExtensionSemanticPrime7177 :
    Nat.Prime (mixedSupportExtensionPrime 7177) ∧
      7177 < mixedSupportExtensionPrime 7177 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7177 < candidate →
        mixedSupportExtensionPrime 7177 ≤ candidate := by
  rw [mixedExtensionPrimeEq7177]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7187 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7187 :
    mixedSupportExtensionPrime 7187 = 7193 := by
  rfl

theorem mixedExtensionSemanticPrime7187 :
    Nat.Prime (mixedSupportExtensionPrime 7187) ∧
      7187 < mixedSupportExtensionPrime 7187 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7187 < candidate →
        mixedSupportExtensionPrime 7187 ≤ candidate := by
  rw [mixedExtensionPrimeEq7187]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7193 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7193 :
    mixedSupportExtensionPrime 7193 = 7207 := by
  rfl

theorem mixedExtensionSemanticPrime7193 :
    Nat.Prime (mixedSupportExtensionPrime 7193) ∧
      7193 < mixedSupportExtensionPrime 7193 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7193 < candidate →
        mixedSupportExtensionPrime 7193 ≤ candidate := by
  rw [mixedExtensionPrimeEq7193]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7207 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7207 :
    mixedSupportExtensionPrime 7207 = 7211 := by
  rfl

theorem mixedExtensionSemanticPrime7207 :
    Nat.Prime (mixedSupportExtensionPrime 7207) ∧
      7207 < mixedSupportExtensionPrime 7207 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7207 < candidate →
        mixedSupportExtensionPrime 7207 ≤ candidate := by
  rw [mixedExtensionPrimeEq7207]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7211 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7211 :
    mixedSupportExtensionPrime 7211 = 7213 := by
  rfl

theorem mixedExtensionSemanticPrime7211 :
    Nat.Prime (mixedSupportExtensionPrime 7211) ∧
      7211 < mixedSupportExtensionPrime 7211 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7211 < candidate →
        mixedSupportExtensionPrime 7211 ≤ candidate := by
  rw [mixedExtensionPrimeEq7211]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7213 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7213 :
    mixedSupportExtensionPrime 7213 = 7219 := by
  rfl

theorem mixedExtensionSemanticPrime7213 :
    Nat.Prime (mixedSupportExtensionPrime 7213) ∧
      7213 < mixedSupportExtensionPrime 7213 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7213 < candidate →
        mixedSupportExtensionPrime 7213 ≤ candidate := by
  rw [mixedExtensionPrimeEq7213]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7219 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7219 :
    mixedSupportExtensionPrime 7219 = 7229 := by
  rfl

theorem mixedExtensionSemanticPrime7219 :
    Nat.Prime (mixedSupportExtensionPrime 7219) ∧
      7219 < mixedSupportExtensionPrime 7219 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7219 < candidate →
        mixedSupportExtensionPrime 7219 ≤ candidate := by
  rw [mixedExtensionPrimeEq7219]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7229 :
    mixedSupportExtensionPrime 7229 = 7237 := by
  rfl

theorem mixedExtensionSemanticPrime7229 :
    Nat.Prime (mixedSupportExtensionPrime 7229) ∧
      7229 < mixedSupportExtensionPrime 7229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7229 < candidate →
        mixedSupportExtensionPrime 7229 ≤ candidate := by
  rw [mixedExtensionPrimeEq7229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7237 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7237 :
    mixedSupportExtensionPrime 7237 = 7243 := by
  rfl

theorem mixedExtensionSemanticPrime7237 :
    Nat.Prime (mixedSupportExtensionPrime 7237) ∧
      7237 < mixedSupportExtensionPrime 7237 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7237 < candidate →
        mixedSupportExtensionPrime 7237 ≤ candidate := by
  rw [mixedExtensionPrimeEq7237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7243 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7243 :
    mixedSupportExtensionPrime 7243 = 7247 := by
  rfl

theorem mixedExtensionSemanticPrime7243 :
    Nat.Prime (mixedSupportExtensionPrime 7243) ∧
      7243 < mixedSupportExtensionPrime 7243 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7243 < candidate →
        mixedSupportExtensionPrime 7243 ≤ candidate := by
  rw [mixedExtensionPrimeEq7243]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7247 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7247 :
    mixedSupportExtensionPrime 7247 = 7253 := by
  rfl

theorem mixedExtensionSemanticPrime7247 :
    Nat.Prime (mixedSupportExtensionPrime 7247) ∧
      7247 < mixedSupportExtensionPrime 7247 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7247 < candidate →
        mixedSupportExtensionPrime 7247 ≤ candidate := by
  rw [mixedExtensionPrimeEq7247]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7253 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7253 :
    mixedSupportExtensionPrime 7253 = 7283 := by
  rfl

theorem mixedExtensionSemanticPrime7253 :
    Nat.Prime (mixedSupportExtensionPrime 7253) ∧
      7253 < mixedSupportExtensionPrime 7253 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7253 < candidate →
        mixedSupportExtensionPrime 7253 ≤ candidate := by
  rw [mixedExtensionPrimeEq7253]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7283 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7283 :
    mixedSupportExtensionPrime 7283 = 7297 := by
  rfl

theorem mixedExtensionSemanticPrime7283 :
    Nat.Prime (mixedSupportExtensionPrime 7283) ∧
      7283 < mixedSupportExtensionPrime 7283 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7283 < candidate →
        mixedSupportExtensionPrime 7283 ≤ candidate := by
  rw [mixedExtensionPrimeEq7283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0028_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0028) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0028, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime6983
  · exact mixedExtensionSemanticPrime6991
  · exact mixedExtensionSemanticPrime6997
  · exact mixedExtensionSemanticPrime7001
  · exact mixedExtensionSemanticPrime7013
  · exact mixedExtensionSemanticPrime7019
  · exact mixedExtensionSemanticPrime7027
  · exact mixedExtensionSemanticPrime7039
  · exact mixedExtensionSemanticPrime7043
  · exact mixedExtensionSemanticPrime7057
  · exact mixedExtensionSemanticPrime7069
  · exact mixedExtensionSemanticPrime7079
  · exact mixedExtensionSemanticPrime7103
  · exact mixedExtensionSemanticPrime7109
  · exact mixedExtensionSemanticPrime7121
  · exact mixedExtensionSemanticPrime7127
  · exact mixedExtensionSemanticPrime7129
  · exact mixedExtensionSemanticPrime7151
  · exact mixedExtensionSemanticPrime7159
  · exact mixedExtensionSemanticPrime7177
  · exact mixedExtensionSemanticPrime7187
  · exact mixedExtensionSemanticPrime7193
  · exact mixedExtensionSemanticPrime7207
  · exact mixedExtensionSemanticPrime7211
  · exact mixedExtensionSemanticPrime7213
  · exact mixedExtensionSemanticPrime7219
  · exact mixedExtensionSemanticPrime7229
  · exact mixedExtensionSemanticPrime7237
  · exact mixedExtensionSemanticPrime7243
  · exact mixedExtensionSemanticPrime7247
  · exact mixedExtensionSemanticPrime7253
  · exact mixedExtensionSemanticPrime7283

#print axioms mixedExtensionSemanticInputs0028_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
