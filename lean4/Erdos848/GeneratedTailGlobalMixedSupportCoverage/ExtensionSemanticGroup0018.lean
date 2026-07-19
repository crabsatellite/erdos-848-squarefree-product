import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0018 : List ℕ :=
  [4219, 4229, 4231, 4241, 4243, 4253, 4259, 4261, 4271, 4273, 4283, 4289, 4297, 4327, 4337, 4339, 4349, 4357, 4363, 4373, 4391, 4397, 4409, 4421, 4423, 4441, 4447, 4451, 4457, 4463, 4481, 4483]

theorem mixedExtensionPrimeEq4219 :
    mixedSupportExtensionPrime 4219 = 4229 := by
  rfl

theorem mixedExtensionSemanticPrime4219 :
    Nat.Prime (mixedSupportExtensionPrime 4219) ∧
      4219 < mixedSupportExtensionPrime 4219 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4219 < candidate →
        mixedSupportExtensionPrime 4219 ≤ candidate := by
  rw [mixedExtensionPrimeEq4219]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4229 :
    mixedSupportExtensionPrime 4229 = 4231 := by
  rfl

theorem mixedExtensionSemanticPrime4229 :
    Nat.Prime (mixedSupportExtensionPrime 4229) ∧
      4229 < mixedSupportExtensionPrime 4229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4229 < candidate →
        mixedSupportExtensionPrime 4229 ≤ candidate := by
  rw [mixedExtensionPrimeEq4229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4231 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4231 :
    mixedSupportExtensionPrime 4231 = 4241 := by
  rfl

theorem mixedExtensionSemanticPrime4231 :
    Nat.Prime (mixedSupportExtensionPrime 4231) ∧
      4231 < mixedSupportExtensionPrime 4231 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4231 < candidate →
        mixedSupportExtensionPrime 4231 ≤ candidate := by
  rw [mixedExtensionPrimeEq4231]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4241 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4241 :
    mixedSupportExtensionPrime 4241 = 4243 := by
  rfl

theorem mixedExtensionSemanticPrime4241 :
    Nat.Prime (mixedSupportExtensionPrime 4241) ∧
      4241 < mixedSupportExtensionPrime 4241 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4241 < candidate →
        mixedSupportExtensionPrime 4241 ≤ candidate := by
  rw [mixedExtensionPrimeEq4241]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4243 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4243 :
    mixedSupportExtensionPrime 4243 = 4253 := by
  rfl

theorem mixedExtensionSemanticPrime4243 :
    Nat.Prime (mixedSupportExtensionPrime 4243) ∧
      4243 < mixedSupportExtensionPrime 4243 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4243 < candidate →
        mixedSupportExtensionPrime 4243 ≤ candidate := by
  rw [mixedExtensionPrimeEq4243]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4253 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4253 :
    mixedSupportExtensionPrime 4253 = 4259 := by
  rfl

theorem mixedExtensionSemanticPrime4253 :
    Nat.Prime (mixedSupportExtensionPrime 4253) ∧
      4253 < mixedSupportExtensionPrime 4253 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4253 < candidate →
        mixedSupportExtensionPrime 4253 ≤ candidate := by
  rw [mixedExtensionPrimeEq4253]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4259 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4259 :
    mixedSupportExtensionPrime 4259 = 4261 := by
  rfl

theorem mixedExtensionSemanticPrime4259 :
    Nat.Prime (mixedSupportExtensionPrime 4259) ∧
      4259 < mixedSupportExtensionPrime 4259 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4259 < candidate →
        mixedSupportExtensionPrime 4259 ≤ candidate := by
  rw [mixedExtensionPrimeEq4259]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4261 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4261 :
    mixedSupportExtensionPrime 4261 = 4271 := by
  rfl

theorem mixedExtensionSemanticPrime4261 :
    Nat.Prime (mixedSupportExtensionPrime 4261) ∧
      4261 < mixedSupportExtensionPrime 4261 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4261 < candidate →
        mixedSupportExtensionPrime 4261 ≤ candidate := by
  rw [mixedExtensionPrimeEq4261]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4271 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4271 :
    mixedSupportExtensionPrime 4271 = 4273 := by
  rfl

theorem mixedExtensionSemanticPrime4271 :
    Nat.Prime (mixedSupportExtensionPrime 4271) ∧
      4271 < mixedSupportExtensionPrime 4271 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4271 < candidate →
        mixedSupportExtensionPrime 4271 ≤ candidate := by
  rw [mixedExtensionPrimeEq4271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4273 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4273 :
    mixedSupportExtensionPrime 4273 = 4283 := by
  rfl

theorem mixedExtensionSemanticPrime4273 :
    Nat.Prime (mixedSupportExtensionPrime 4273) ∧
      4273 < mixedSupportExtensionPrime 4273 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4273 < candidate →
        mixedSupportExtensionPrime 4273 ≤ candidate := by
  rw [mixedExtensionPrimeEq4273]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4283 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4283 :
    mixedSupportExtensionPrime 4283 = 4289 := by
  rfl

theorem mixedExtensionSemanticPrime4283 :
    Nat.Prime (mixedSupportExtensionPrime 4283) ∧
      4283 < mixedSupportExtensionPrime 4283 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4283 < candidate →
        mixedSupportExtensionPrime 4283 ≤ candidate := by
  rw [mixedExtensionPrimeEq4283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4289 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4289 :
    mixedSupportExtensionPrime 4289 = 4297 := by
  rfl

theorem mixedExtensionSemanticPrime4289 :
    Nat.Prime (mixedSupportExtensionPrime 4289) ∧
      4289 < mixedSupportExtensionPrime 4289 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4289 < candidate →
        mixedSupportExtensionPrime 4289 ≤ candidate := by
  rw [mixedExtensionPrimeEq4289]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4297 :
    mixedSupportExtensionPrime 4297 = 4327 := by
  rfl

theorem mixedExtensionSemanticPrime4297 :
    Nat.Prime (mixedSupportExtensionPrime 4297) ∧
      4297 < mixedSupportExtensionPrime 4297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4297 < candidate →
        mixedSupportExtensionPrime 4297 ≤ candidate := by
  rw [mixedExtensionPrimeEq4297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4327 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4327 :
    mixedSupportExtensionPrime 4327 = 4337 := by
  rfl

theorem mixedExtensionSemanticPrime4327 :
    Nat.Prime (mixedSupportExtensionPrime 4327) ∧
      4327 < mixedSupportExtensionPrime 4327 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4327 < candidate →
        mixedSupportExtensionPrime 4327 ≤ candidate := by
  rw [mixedExtensionPrimeEq4327]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4337 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4337 :
    mixedSupportExtensionPrime 4337 = 4339 := by
  rfl

theorem mixedExtensionSemanticPrime4337 :
    Nat.Prime (mixedSupportExtensionPrime 4337) ∧
      4337 < mixedSupportExtensionPrime 4337 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4337 < candidate →
        mixedSupportExtensionPrime 4337 ≤ candidate := by
  rw [mixedExtensionPrimeEq4337]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4339 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4339 :
    mixedSupportExtensionPrime 4339 = 4349 := by
  rfl

theorem mixedExtensionSemanticPrime4339 :
    Nat.Prime (mixedSupportExtensionPrime 4339) ∧
      4339 < mixedSupportExtensionPrime 4339 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4339 < candidate →
        mixedSupportExtensionPrime 4339 ≤ candidate := by
  rw [mixedExtensionPrimeEq4339]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4349 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4349 :
    mixedSupportExtensionPrime 4349 = 4357 := by
  rfl

theorem mixedExtensionSemanticPrime4349 :
    Nat.Prime (mixedSupportExtensionPrime 4349) ∧
      4349 < mixedSupportExtensionPrime 4349 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4349 < candidate →
        mixedSupportExtensionPrime 4349 ≤ candidate := by
  rw [mixedExtensionPrimeEq4349]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4357 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4357 :
    mixedSupportExtensionPrime 4357 = 4363 := by
  rfl

theorem mixedExtensionSemanticPrime4357 :
    Nat.Prime (mixedSupportExtensionPrime 4357) ∧
      4357 < mixedSupportExtensionPrime 4357 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4357 < candidate →
        mixedSupportExtensionPrime 4357 ≤ candidate := by
  rw [mixedExtensionPrimeEq4357]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4363 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4363 :
    mixedSupportExtensionPrime 4363 = 4373 := by
  rfl

theorem mixedExtensionSemanticPrime4363 :
    Nat.Prime (mixedSupportExtensionPrime 4363) ∧
      4363 < mixedSupportExtensionPrime 4363 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4363 < candidate →
        mixedSupportExtensionPrime 4363 ≤ candidate := by
  rw [mixedExtensionPrimeEq4363]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4373 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4373 :
    mixedSupportExtensionPrime 4373 = 4391 := by
  rfl

theorem mixedExtensionSemanticPrime4373 :
    Nat.Prime (mixedSupportExtensionPrime 4373) ∧
      4373 < mixedSupportExtensionPrime 4373 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4373 < candidate →
        mixedSupportExtensionPrime 4373 ≤ candidate := by
  rw [mixedExtensionPrimeEq4373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4391 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4391 :
    mixedSupportExtensionPrime 4391 = 4397 := by
  rfl

theorem mixedExtensionSemanticPrime4391 :
    Nat.Prime (mixedSupportExtensionPrime 4391) ∧
      4391 < mixedSupportExtensionPrime 4391 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4391 < candidate →
        mixedSupportExtensionPrime 4391 ≤ candidate := by
  rw [mixedExtensionPrimeEq4391]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4397 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4397 :
    mixedSupportExtensionPrime 4397 = 4409 := by
  rfl

theorem mixedExtensionSemanticPrime4397 :
    Nat.Prime (mixedSupportExtensionPrime 4397) ∧
      4397 < mixedSupportExtensionPrime 4397 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4397 < candidate →
        mixedSupportExtensionPrime 4397 ≤ candidate := by
  rw [mixedExtensionPrimeEq4397]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4409 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4409 :
    mixedSupportExtensionPrime 4409 = 4421 := by
  rfl

theorem mixedExtensionSemanticPrime4409 :
    Nat.Prime (mixedSupportExtensionPrime 4409) ∧
      4409 < mixedSupportExtensionPrime 4409 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4409 < candidate →
        mixedSupportExtensionPrime 4409 ≤ candidate := by
  rw [mixedExtensionPrimeEq4409]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4421 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4421 :
    mixedSupportExtensionPrime 4421 = 4423 := by
  rfl

theorem mixedExtensionSemanticPrime4421 :
    Nat.Prime (mixedSupportExtensionPrime 4421) ∧
      4421 < mixedSupportExtensionPrime 4421 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4421 < candidate →
        mixedSupportExtensionPrime 4421 ≤ candidate := by
  rw [mixedExtensionPrimeEq4421]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4423 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4423 :
    mixedSupportExtensionPrime 4423 = 4441 := by
  rfl

theorem mixedExtensionSemanticPrime4423 :
    Nat.Prime (mixedSupportExtensionPrime 4423) ∧
      4423 < mixedSupportExtensionPrime 4423 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4423 < candidate →
        mixedSupportExtensionPrime 4423 ≤ candidate := by
  rw [mixedExtensionPrimeEq4423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4441 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4441 :
    mixedSupportExtensionPrime 4441 = 4447 := by
  rfl

theorem mixedExtensionSemanticPrime4441 :
    Nat.Prime (mixedSupportExtensionPrime 4441) ∧
      4441 < mixedSupportExtensionPrime 4441 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4441 < candidate →
        mixedSupportExtensionPrime 4441 ≤ candidate := by
  rw [mixedExtensionPrimeEq4441]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4447 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4447 :
    mixedSupportExtensionPrime 4447 = 4451 := by
  rfl

theorem mixedExtensionSemanticPrime4447 :
    Nat.Prime (mixedSupportExtensionPrime 4447) ∧
      4447 < mixedSupportExtensionPrime 4447 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4447 < candidate →
        mixedSupportExtensionPrime 4447 ≤ candidate := by
  rw [mixedExtensionPrimeEq4447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4451 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4451 :
    mixedSupportExtensionPrime 4451 = 4457 := by
  rfl

theorem mixedExtensionSemanticPrime4451 :
    Nat.Prime (mixedSupportExtensionPrime 4451) ∧
      4451 < mixedSupportExtensionPrime 4451 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4451 < candidate →
        mixedSupportExtensionPrime 4451 ≤ candidate := by
  rw [mixedExtensionPrimeEq4451]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4457 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4457 :
    mixedSupportExtensionPrime 4457 = 4463 := by
  rfl

theorem mixedExtensionSemanticPrime4457 :
    Nat.Prime (mixedSupportExtensionPrime 4457) ∧
      4457 < mixedSupportExtensionPrime 4457 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4457 < candidate →
        mixedSupportExtensionPrime 4457 ≤ candidate := by
  rw [mixedExtensionPrimeEq4457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4463 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4463 :
    mixedSupportExtensionPrime 4463 = 4481 := by
  rfl

theorem mixedExtensionSemanticPrime4463 :
    Nat.Prime (mixedSupportExtensionPrime 4463) ∧
      4463 < mixedSupportExtensionPrime 4463 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4463 < candidate →
        mixedSupportExtensionPrime 4463 ≤ candidate := by
  rw [mixedExtensionPrimeEq4463]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4481 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4481 :
    mixedSupportExtensionPrime 4481 = 4483 := by
  rfl

theorem mixedExtensionSemanticPrime4481 :
    Nat.Prime (mixedSupportExtensionPrime 4481) ∧
      4481 < mixedSupportExtensionPrime 4481 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4481 < candidate →
        mixedSupportExtensionPrime 4481 ≤ candidate := by
  rw [mixedExtensionPrimeEq4481]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4483 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq4483 :
    mixedSupportExtensionPrime 4483 = 4493 := by
  rfl

theorem mixedExtensionSemanticPrime4483 :
    Nat.Prime (mixedSupportExtensionPrime 4483) ∧
      4483 < mixedSupportExtensionPrime 4483 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        4483 < candidate →
        mixedSupportExtensionPrime 4483 ≤ candidate := by
  rw [mixedExtensionPrimeEq4483]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 4493 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0018_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0018) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0018, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime4219
  · exact mixedExtensionSemanticPrime4229
  · exact mixedExtensionSemanticPrime4231
  · exact mixedExtensionSemanticPrime4241
  · exact mixedExtensionSemanticPrime4243
  · exact mixedExtensionSemanticPrime4253
  · exact mixedExtensionSemanticPrime4259
  · exact mixedExtensionSemanticPrime4261
  · exact mixedExtensionSemanticPrime4271
  · exact mixedExtensionSemanticPrime4273
  · exact mixedExtensionSemanticPrime4283
  · exact mixedExtensionSemanticPrime4289
  · exact mixedExtensionSemanticPrime4297
  · exact mixedExtensionSemanticPrime4327
  · exact mixedExtensionSemanticPrime4337
  · exact mixedExtensionSemanticPrime4339
  · exact mixedExtensionSemanticPrime4349
  · exact mixedExtensionSemanticPrime4357
  · exact mixedExtensionSemanticPrime4363
  · exact mixedExtensionSemanticPrime4373
  · exact mixedExtensionSemanticPrime4391
  · exact mixedExtensionSemanticPrime4397
  · exact mixedExtensionSemanticPrime4409
  · exact mixedExtensionSemanticPrime4421
  · exact mixedExtensionSemanticPrime4423
  · exact mixedExtensionSemanticPrime4441
  · exact mixedExtensionSemanticPrime4447
  · exact mixedExtensionSemanticPrime4451
  · exact mixedExtensionSemanticPrime4457
  · exact mixedExtensionSemanticPrime4463
  · exact mixedExtensionSemanticPrime4481
  · exact mixedExtensionSemanticPrime4483

#print axioms mixedExtensionSemanticInputs0018_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
