import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0021 : List ℕ :=
  [5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323]

theorem mixedExtensionPrimeEq5023 :
    mixedSupportExtensionPrime 5023 = 5039 := by
  rfl

theorem mixedExtensionSemanticPrime5023 :
    Nat.Prime (mixedSupportExtensionPrime 5023) ∧
      5023 < mixedSupportExtensionPrime 5023 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5023 < candidate →
        mixedSupportExtensionPrime 5023 ≤ candidate := by
  rw [mixedExtensionPrimeEq5023]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5039 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5039 :
    mixedSupportExtensionPrime 5039 = 5051 := by
  rfl

theorem mixedExtensionSemanticPrime5039 :
    Nat.Prime (mixedSupportExtensionPrime 5039) ∧
      5039 < mixedSupportExtensionPrime 5039 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5039 < candidate →
        mixedSupportExtensionPrime 5039 ≤ candidate := by
  rw [mixedExtensionPrimeEq5039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5051 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5051 :
    mixedSupportExtensionPrime 5051 = 5059 := by
  rfl

theorem mixedExtensionSemanticPrime5051 :
    Nat.Prime (mixedSupportExtensionPrime 5051) ∧
      5051 < mixedSupportExtensionPrime 5051 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5051 < candidate →
        mixedSupportExtensionPrime 5051 ≤ candidate := by
  rw [mixedExtensionPrimeEq5051]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5059 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5059 :
    mixedSupportExtensionPrime 5059 = 5077 := by
  rfl

theorem mixedExtensionSemanticPrime5059 :
    Nat.Prime (mixedSupportExtensionPrime 5059) ∧
      5059 < mixedSupportExtensionPrime 5059 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5059 < candidate →
        mixedSupportExtensionPrime 5059 ≤ candidate := by
  rw [mixedExtensionPrimeEq5059]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5077 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5077 :
    mixedSupportExtensionPrime 5077 = 5081 := by
  rfl

theorem mixedExtensionSemanticPrime5077 :
    Nat.Prime (mixedSupportExtensionPrime 5077) ∧
      5077 < mixedSupportExtensionPrime 5077 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5077 < candidate →
        mixedSupportExtensionPrime 5077 ≤ candidate := by
  rw [mixedExtensionPrimeEq5077]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5081 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5081 :
    mixedSupportExtensionPrime 5081 = 5087 := by
  rfl

theorem mixedExtensionSemanticPrime5081 :
    Nat.Prime (mixedSupportExtensionPrime 5081) ∧
      5081 < mixedSupportExtensionPrime 5081 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5081 < candidate →
        mixedSupportExtensionPrime 5081 ≤ candidate := by
  rw [mixedExtensionPrimeEq5081]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5087 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5087 :
    mixedSupportExtensionPrime 5087 = 5099 := by
  rfl

theorem mixedExtensionSemanticPrime5087 :
    Nat.Prime (mixedSupportExtensionPrime 5087) ∧
      5087 < mixedSupportExtensionPrime 5087 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5087 < candidate →
        mixedSupportExtensionPrime 5087 ≤ candidate := by
  rw [mixedExtensionPrimeEq5087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5099 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5099 :
    mixedSupportExtensionPrime 5099 = 5101 := by
  rfl

theorem mixedExtensionSemanticPrime5099 :
    Nat.Prime (mixedSupportExtensionPrime 5099) ∧
      5099 < mixedSupportExtensionPrime 5099 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5099 < candidate →
        mixedSupportExtensionPrime 5099 ≤ candidate := by
  rw [mixedExtensionPrimeEq5099]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5101 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5101 :
    mixedSupportExtensionPrime 5101 = 5107 := by
  rfl

theorem mixedExtensionSemanticPrime5101 :
    Nat.Prime (mixedSupportExtensionPrime 5101) ∧
      5101 < mixedSupportExtensionPrime 5101 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5101 < candidate →
        mixedSupportExtensionPrime 5101 ≤ candidate := by
  rw [mixedExtensionPrimeEq5101]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5107 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5107 :
    mixedSupportExtensionPrime 5107 = 5113 := by
  rfl

theorem mixedExtensionSemanticPrime5107 :
    Nat.Prime (mixedSupportExtensionPrime 5107) ∧
      5107 < mixedSupportExtensionPrime 5107 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5107 < candidate →
        mixedSupportExtensionPrime 5107 ≤ candidate := by
  rw [mixedExtensionPrimeEq5107]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5113 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5113 :
    mixedSupportExtensionPrime 5113 = 5119 := by
  rfl

theorem mixedExtensionSemanticPrime5113 :
    Nat.Prime (mixedSupportExtensionPrime 5113) ∧
      5113 < mixedSupportExtensionPrime 5113 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5113 < candidate →
        mixedSupportExtensionPrime 5113 ≤ candidate := by
  rw [mixedExtensionPrimeEq5113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5119 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5119 :
    mixedSupportExtensionPrime 5119 = 5147 := by
  rfl

theorem mixedExtensionSemanticPrime5119 :
    Nat.Prime (mixedSupportExtensionPrime 5119) ∧
      5119 < mixedSupportExtensionPrime 5119 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5119 < candidate →
        mixedSupportExtensionPrime 5119 ≤ candidate := by
  rw [mixedExtensionPrimeEq5119]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5147 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5147 :
    mixedSupportExtensionPrime 5147 = 5153 := by
  rfl

theorem mixedExtensionSemanticPrime5147 :
    Nat.Prime (mixedSupportExtensionPrime 5147) ∧
      5147 < mixedSupportExtensionPrime 5147 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5147 < candidate →
        mixedSupportExtensionPrime 5147 ≤ candidate := by
  rw [mixedExtensionPrimeEq5147]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5153 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5153 :
    mixedSupportExtensionPrime 5153 = 5167 := by
  rfl

theorem mixedExtensionSemanticPrime5153 :
    Nat.Prime (mixedSupportExtensionPrime 5153) ∧
      5153 < mixedSupportExtensionPrime 5153 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5153 < candidate →
        mixedSupportExtensionPrime 5153 ≤ candidate := by
  rw [mixedExtensionPrimeEq5153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5167 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5167 :
    mixedSupportExtensionPrime 5167 = 5171 := by
  rfl

theorem mixedExtensionSemanticPrime5167 :
    Nat.Prime (mixedSupportExtensionPrime 5167) ∧
      5167 < mixedSupportExtensionPrime 5167 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5167 < candidate →
        mixedSupportExtensionPrime 5167 ≤ candidate := by
  rw [mixedExtensionPrimeEq5167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5171 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5171 :
    mixedSupportExtensionPrime 5171 = 5179 := by
  rfl

theorem mixedExtensionSemanticPrime5171 :
    Nat.Prime (mixedSupportExtensionPrime 5171) ∧
      5171 < mixedSupportExtensionPrime 5171 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5171 < candidate →
        mixedSupportExtensionPrime 5171 ≤ candidate := by
  rw [mixedExtensionPrimeEq5171]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5179 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5179 :
    mixedSupportExtensionPrime 5179 = 5189 := by
  rfl

theorem mixedExtensionSemanticPrime5179 :
    Nat.Prime (mixedSupportExtensionPrime 5179) ∧
      5179 < mixedSupportExtensionPrime 5179 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5179 < candidate →
        mixedSupportExtensionPrime 5179 ≤ candidate := by
  rw [mixedExtensionPrimeEq5179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5189 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5189 :
    mixedSupportExtensionPrime 5189 = 5197 := by
  rfl

theorem mixedExtensionSemanticPrime5189 :
    Nat.Prime (mixedSupportExtensionPrime 5189) ∧
      5189 < mixedSupportExtensionPrime 5189 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5189 < candidate →
        mixedSupportExtensionPrime 5189 ≤ candidate := by
  rw [mixedExtensionPrimeEq5189]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5197 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5197 :
    mixedSupportExtensionPrime 5197 = 5209 := by
  rfl

theorem mixedExtensionSemanticPrime5197 :
    Nat.Prime (mixedSupportExtensionPrime 5197) ∧
      5197 < mixedSupportExtensionPrime 5197 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5197 < candidate →
        mixedSupportExtensionPrime 5197 ≤ candidate := by
  rw [mixedExtensionPrimeEq5197]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5209 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5209 :
    mixedSupportExtensionPrime 5209 = 5227 := by
  rfl

theorem mixedExtensionSemanticPrime5209 :
    Nat.Prime (mixedSupportExtensionPrime 5209) ∧
      5209 < mixedSupportExtensionPrime 5209 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5209 < candidate →
        mixedSupportExtensionPrime 5209 ≤ candidate := by
  rw [mixedExtensionPrimeEq5209]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5227 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5227 :
    mixedSupportExtensionPrime 5227 = 5231 := by
  rfl

theorem mixedExtensionSemanticPrime5227 :
    Nat.Prime (mixedSupportExtensionPrime 5227) ∧
      5227 < mixedSupportExtensionPrime 5227 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5227 < candidate →
        mixedSupportExtensionPrime 5227 ≤ candidate := by
  rw [mixedExtensionPrimeEq5227]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5231 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5231 :
    mixedSupportExtensionPrime 5231 = 5233 := by
  rfl

theorem mixedExtensionSemanticPrime5231 :
    Nat.Prime (mixedSupportExtensionPrime 5231) ∧
      5231 < mixedSupportExtensionPrime 5231 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5231 < candidate →
        mixedSupportExtensionPrime 5231 ≤ candidate := by
  rw [mixedExtensionPrimeEq5231]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5233 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5233 :
    mixedSupportExtensionPrime 5233 = 5237 := by
  rfl

theorem mixedExtensionSemanticPrime5233 :
    Nat.Prime (mixedSupportExtensionPrime 5233) ∧
      5233 < mixedSupportExtensionPrime 5233 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5233 < candidate →
        mixedSupportExtensionPrime 5233 ≤ candidate := by
  rw [mixedExtensionPrimeEq5233]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5237 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5237 :
    mixedSupportExtensionPrime 5237 = 5261 := by
  rfl

theorem mixedExtensionSemanticPrime5237 :
    Nat.Prime (mixedSupportExtensionPrime 5237) ∧
      5237 < mixedSupportExtensionPrime 5237 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5237 < candidate →
        mixedSupportExtensionPrime 5237 ≤ candidate := by
  rw [mixedExtensionPrimeEq5237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5261 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5261 :
    mixedSupportExtensionPrime 5261 = 5273 := by
  rfl

theorem mixedExtensionSemanticPrime5261 :
    Nat.Prime (mixedSupportExtensionPrime 5261) ∧
      5261 < mixedSupportExtensionPrime 5261 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5261 < candidate →
        mixedSupportExtensionPrime 5261 ≤ candidate := by
  rw [mixedExtensionPrimeEq5261]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5273 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5273 :
    mixedSupportExtensionPrime 5273 = 5279 := by
  rfl

theorem mixedExtensionSemanticPrime5273 :
    Nat.Prime (mixedSupportExtensionPrime 5273) ∧
      5273 < mixedSupportExtensionPrime 5273 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5273 < candidate →
        mixedSupportExtensionPrime 5273 ≤ candidate := by
  rw [mixedExtensionPrimeEq5273]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5279 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5279 :
    mixedSupportExtensionPrime 5279 = 5281 := by
  rfl

theorem mixedExtensionSemanticPrime5279 :
    Nat.Prime (mixedSupportExtensionPrime 5279) ∧
      5279 < mixedSupportExtensionPrime 5279 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5279 < candidate →
        mixedSupportExtensionPrime 5279 ≤ candidate := by
  rw [mixedExtensionPrimeEq5279]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5281 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5281 :
    mixedSupportExtensionPrime 5281 = 5297 := by
  rfl

theorem mixedExtensionSemanticPrime5281 :
    Nat.Prime (mixedSupportExtensionPrime 5281) ∧
      5281 < mixedSupportExtensionPrime 5281 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5281 < candidate →
        mixedSupportExtensionPrime 5281 ≤ candidate := by
  rw [mixedExtensionPrimeEq5281]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5297 :
    mixedSupportExtensionPrime 5297 = 5303 := by
  rfl

theorem mixedExtensionSemanticPrime5297 :
    Nat.Prime (mixedSupportExtensionPrime 5297) ∧
      5297 < mixedSupportExtensionPrime 5297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5297 < candidate →
        mixedSupportExtensionPrime 5297 ≤ candidate := by
  rw [mixedExtensionPrimeEq5297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5303 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5303 :
    mixedSupportExtensionPrime 5303 = 5309 := by
  rfl

theorem mixedExtensionSemanticPrime5303 :
    Nat.Prime (mixedSupportExtensionPrime 5303) ∧
      5303 < mixedSupportExtensionPrime 5303 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5303 < candidate →
        mixedSupportExtensionPrime 5303 ≤ candidate := by
  rw [mixedExtensionPrimeEq5303]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5309 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5309 :
    mixedSupportExtensionPrime 5309 = 5323 := by
  rfl

theorem mixedExtensionSemanticPrime5309 :
    Nat.Prime (mixedSupportExtensionPrime 5309) ∧
      5309 < mixedSupportExtensionPrime 5309 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5309 < candidate →
        mixedSupportExtensionPrime 5309 ≤ candidate := by
  rw [mixedExtensionPrimeEq5309]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5323 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5323 :
    mixedSupportExtensionPrime 5323 = 5333 := by
  rfl

theorem mixedExtensionSemanticPrime5323 :
    Nat.Prime (mixedSupportExtensionPrime 5323) ∧
      5323 < mixedSupportExtensionPrime 5323 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5323 < candidate →
        mixedSupportExtensionPrime 5323 ≤ candidate := by
  rw [mixedExtensionPrimeEq5323]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5333 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0021_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0021) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0021, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime5023
  · exact mixedExtensionSemanticPrime5039
  · exact mixedExtensionSemanticPrime5051
  · exact mixedExtensionSemanticPrime5059
  · exact mixedExtensionSemanticPrime5077
  · exact mixedExtensionSemanticPrime5081
  · exact mixedExtensionSemanticPrime5087
  · exact mixedExtensionSemanticPrime5099
  · exact mixedExtensionSemanticPrime5101
  · exact mixedExtensionSemanticPrime5107
  · exact mixedExtensionSemanticPrime5113
  · exact mixedExtensionSemanticPrime5119
  · exact mixedExtensionSemanticPrime5147
  · exact mixedExtensionSemanticPrime5153
  · exact mixedExtensionSemanticPrime5167
  · exact mixedExtensionSemanticPrime5171
  · exact mixedExtensionSemanticPrime5179
  · exact mixedExtensionSemanticPrime5189
  · exact mixedExtensionSemanticPrime5197
  · exact mixedExtensionSemanticPrime5209
  · exact mixedExtensionSemanticPrime5227
  · exact mixedExtensionSemanticPrime5231
  · exact mixedExtensionSemanticPrime5233
  · exact mixedExtensionSemanticPrime5237
  · exact mixedExtensionSemanticPrime5261
  · exact mixedExtensionSemanticPrime5273
  · exact mixedExtensionSemanticPrime5279
  · exact mixedExtensionSemanticPrime5281
  · exact mixedExtensionSemanticPrime5297
  · exact mixedExtensionSemanticPrime5303
  · exact mixedExtensionSemanticPrime5309
  · exact mixedExtensionSemanticPrime5323

#print axioms mixedExtensionSemanticInputs0021_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
