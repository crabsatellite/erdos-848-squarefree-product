import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0001 : List ℕ :=
  [139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313]

theorem mixedExtensionPrimeEq139 :
    mixedSupportExtensionPrime 139 = 149 := by
  rfl

theorem mixedExtensionSemanticPrime139 :
    Nat.Prime (mixedSupportExtensionPrime 139) ∧
      139 < mixedSupportExtensionPrime 139 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        139 < candidate →
        mixedSupportExtensionPrime 139 ≤ candidate := by
  rw [mixedExtensionPrimeEq139]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 149 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq149 :
    mixedSupportExtensionPrime 149 = 151 := by
  rfl

theorem mixedExtensionSemanticPrime149 :
    Nat.Prime (mixedSupportExtensionPrime 149) ∧
      149 < mixedSupportExtensionPrime 149 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        149 < candidate →
        mixedSupportExtensionPrime 149 ≤ candidate := by
  rw [mixedExtensionPrimeEq149]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 151 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq151 :
    mixedSupportExtensionPrime 151 = 157 := by
  rfl

theorem mixedExtensionSemanticPrime151 :
    Nat.Prime (mixedSupportExtensionPrime 151) ∧
      151 < mixedSupportExtensionPrime 151 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        151 < candidate →
        mixedSupportExtensionPrime 151 ≤ candidate := by
  rw [mixedExtensionPrimeEq151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 157 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq157 :
    mixedSupportExtensionPrime 157 = 163 := by
  rfl

theorem mixedExtensionSemanticPrime157 :
    Nat.Prime (mixedSupportExtensionPrime 157) ∧
      157 < mixedSupportExtensionPrime 157 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        157 < candidate →
        mixedSupportExtensionPrime 157 ≤ candidate := by
  rw [mixedExtensionPrimeEq157]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 163 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq163 :
    mixedSupportExtensionPrime 163 = 167 := by
  rfl

theorem mixedExtensionSemanticPrime163 :
    Nat.Prime (mixedSupportExtensionPrime 163) ∧
      163 < mixedSupportExtensionPrime 163 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        163 < candidate →
        mixedSupportExtensionPrime 163 ≤ candidate := by
  rw [mixedExtensionPrimeEq163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 167 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq167 :
    mixedSupportExtensionPrime 167 = 173 := by
  rfl

theorem mixedExtensionSemanticPrime167 :
    Nat.Prime (mixedSupportExtensionPrime 167) ∧
      167 < mixedSupportExtensionPrime 167 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        167 < candidate →
        mixedSupportExtensionPrime 167 ≤ candidate := by
  rw [mixedExtensionPrimeEq167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 173 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq173 :
    mixedSupportExtensionPrime 173 = 179 := by
  rfl

theorem mixedExtensionSemanticPrime173 :
    Nat.Prime (mixedSupportExtensionPrime 173) ∧
      173 < mixedSupportExtensionPrime 173 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        173 < candidate →
        mixedSupportExtensionPrime 173 ≤ candidate := by
  rw [mixedExtensionPrimeEq173]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 179 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq179 :
    mixedSupportExtensionPrime 179 = 181 := by
  rfl

theorem mixedExtensionSemanticPrime179 :
    Nat.Prime (mixedSupportExtensionPrime 179) ∧
      179 < mixedSupportExtensionPrime 179 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        179 < candidate →
        mixedSupportExtensionPrime 179 ≤ candidate := by
  rw [mixedExtensionPrimeEq179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 181 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq181 :
    mixedSupportExtensionPrime 181 = 191 := by
  rfl

theorem mixedExtensionSemanticPrime181 :
    Nat.Prime (mixedSupportExtensionPrime 181) ∧
      181 < mixedSupportExtensionPrime 181 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        181 < candidate →
        mixedSupportExtensionPrime 181 ≤ candidate := by
  rw [mixedExtensionPrimeEq181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 191 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq191 :
    mixedSupportExtensionPrime 191 = 193 := by
  rfl

theorem mixedExtensionSemanticPrime191 :
    Nat.Prime (mixedSupportExtensionPrime 191) ∧
      191 < mixedSupportExtensionPrime 191 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        191 < candidate →
        mixedSupportExtensionPrime 191 ≤ candidate := by
  rw [mixedExtensionPrimeEq191]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 193 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq193 :
    mixedSupportExtensionPrime 193 = 197 := by
  rfl

theorem mixedExtensionSemanticPrime193 :
    Nat.Prime (mixedSupportExtensionPrime 193) ∧
      193 < mixedSupportExtensionPrime 193 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        193 < candidate →
        mixedSupportExtensionPrime 193 ≤ candidate := by
  rw [mixedExtensionPrimeEq193]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 197 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq197 :
    mixedSupportExtensionPrime 197 = 199 := by
  rfl

theorem mixedExtensionSemanticPrime197 :
    Nat.Prime (mixedSupportExtensionPrime 197) ∧
      197 < mixedSupportExtensionPrime 197 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        197 < candidate →
        mixedSupportExtensionPrime 197 ≤ candidate := by
  rw [mixedExtensionPrimeEq197]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 199 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq199 :
    mixedSupportExtensionPrime 199 = 211 := by
  rfl

theorem mixedExtensionSemanticPrime199 :
    Nat.Prime (mixedSupportExtensionPrime 199) ∧
      199 < mixedSupportExtensionPrime 199 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        199 < candidate →
        mixedSupportExtensionPrime 199 ≤ candidate := by
  rw [mixedExtensionPrimeEq199]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 211 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq211 :
    mixedSupportExtensionPrime 211 = 223 := by
  rfl

theorem mixedExtensionSemanticPrime211 :
    Nat.Prime (mixedSupportExtensionPrime 211) ∧
      211 < mixedSupportExtensionPrime 211 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        211 < candidate →
        mixedSupportExtensionPrime 211 ≤ candidate := by
  rw [mixedExtensionPrimeEq211]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 223 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq223 :
    mixedSupportExtensionPrime 223 = 227 := by
  rfl

theorem mixedExtensionSemanticPrime223 :
    Nat.Prime (mixedSupportExtensionPrime 223) ∧
      223 < mixedSupportExtensionPrime 223 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        223 < candidate →
        mixedSupportExtensionPrime 223 ≤ candidate := by
  rw [mixedExtensionPrimeEq223]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 227 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq227 :
    mixedSupportExtensionPrime 227 = 229 := by
  rfl

theorem mixedExtensionSemanticPrime227 :
    Nat.Prime (mixedSupportExtensionPrime 227) ∧
      227 < mixedSupportExtensionPrime 227 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        227 < candidate →
        mixedSupportExtensionPrime 227 ≤ candidate := by
  rw [mixedExtensionPrimeEq227]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq229 :
    mixedSupportExtensionPrime 229 = 233 := by
  rfl

theorem mixedExtensionSemanticPrime229 :
    Nat.Prime (mixedSupportExtensionPrime 229) ∧
      229 < mixedSupportExtensionPrime 229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        229 < candidate →
        mixedSupportExtensionPrime 229 ≤ candidate := by
  rw [mixedExtensionPrimeEq229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 233 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq233 :
    mixedSupportExtensionPrime 233 = 239 := by
  rfl

theorem mixedExtensionSemanticPrime233 :
    Nat.Prime (mixedSupportExtensionPrime 233) ∧
      233 < mixedSupportExtensionPrime 233 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        233 < candidate →
        mixedSupportExtensionPrime 233 ≤ candidate := by
  rw [mixedExtensionPrimeEq233]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 239 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq239 :
    mixedSupportExtensionPrime 239 = 241 := by
  rfl

theorem mixedExtensionSemanticPrime239 :
    Nat.Prime (mixedSupportExtensionPrime 239) ∧
      239 < mixedSupportExtensionPrime 239 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        239 < candidate →
        mixedSupportExtensionPrime 239 ≤ candidate := by
  rw [mixedExtensionPrimeEq239]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 241 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq241 :
    mixedSupportExtensionPrime 241 = 251 := by
  rfl

theorem mixedExtensionSemanticPrime241 :
    Nat.Prime (mixedSupportExtensionPrime 241) ∧
      241 < mixedSupportExtensionPrime 241 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        241 < candidate →
        mixedSupportExtensionPrime 241 ≤ candidate := by
  rw [mixedExtensionPrimeEq241]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 251 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq251 :
    mixedSupportExtensionPrime 251 = 257 := by
  rfl

theorem mixedExtensionSemanticPrime251 :
    Nat.Prime (mixedSupportExtensionPrime 251) ∧
      251 < mixedSupportExtensionPrime 251 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        251 < candidate →
        mixedSupportExtensionPrime 251 ≤ candidate := by
  rw [mixedExtensionPrimeEq251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 257 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq257 :
    mixedSupportExtensionPrime 257 = 263 := by
  rfl

theorem mixedExtensionSemanticPrime257 :
    Nat.Prime (mixedSupportExtensionPrime 257) ∧
      257 < mixedSupportExtensionPrime 257 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        257 < candidate →
        mixedSupportExtensionPrime 257 ≤ candidate := by
  rw [mixedExtensionPrimeEq257]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 263 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq263 :
    mixedSupportExtensionPrime 263 = 269 := by
  rfl

theorem mixedExtensionSemanticPrime263 :
    Nat.Prime (mixedSupportExtensionPrime 263) ∧
      263 < mixedSupportExtensionPrime 263 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        263 < candidate →
        mixedSupportExtensionPrime 263 ≤ candidate := by
  rw [mixedExtensionPrimeEq263]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 269 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq269 :
    mixedSupportExtensionPrime 269 = 271 := by
  rfl

theorem mixedExtensionSemanticPrime269 :
    Nat.Prime (mixedSupportExtensionPrime 269) ∧
      269 < mixedSupportExtensionPrime 269 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        269 < candidate →
        mixedSupportExtensionPrime 269 ≤ candidate := by
  rw [mixedExtensionPrimeEq269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 271 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq271 :
    mixedSupportExtensionPrime 271 = 277 := by
  rfl

theorem mixedExtensionSemanticPrime271 :
    Nat.Prime (mixedSupportExtensionPrime 271) ∧
      271 < mixedSupportExtensionPrime 271 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        271 < candidate →
        mixedSupportExtensionPrime 271 ≤ candidate := by
  rw [mixedExtensionPrimeEq271]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 277 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq277 :
    mixedSupportExtensionPrime 277 = 281 := by
  rfl

theorem mixedExtensionSemanticPrime277 :
    Nat.Prime (mixedSupportExtensionPrime 277) ∧
      277 < mixedSupportExtensionPrime 277 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        277 < candidate →
        mixedSupportExtensionPrime 277 ≤ candidate := by
  rw [mixedExtensionPrimeEq277]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 281 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq281 :
    mixedSupportExtensionPrime 281 = 283 := by
  rfl

theorem mixedExtensionSemanticPrime281 :
    Nat.Prime (mixedSupportExtensionPrime 281) ∧
      281 < mixedSupportExtensionPrime 281 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        281 < candidate →
        mixedSupportExtensionPrime 281 ≤ candidate := by
  rw [mixedExtensionPrimeEq281]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 283 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq283 :
    mixedSupportExtensionPrime 283 = 293 := by
  rfl

theorem mixedExtensionSemanticPrime283 :
    Nat.Prime (mixedSupportExtensionPrime 283) ∧
      283 < mixedSupportExtensionPrime 283 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        283 < candidate →
        mixedSupportExtensionPrime 283 ≤ candidate := by
  rw [mixedExtensionPrimeEq283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 293 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq293 :
    mixedSupportExtensionPrime 293 = 307 := by
  rfl

theorem mixedExtensionSemanticPrime293 :
    Nat.Prime (mixedSupportExtensionPrime 293) ∧
      293 < mixedSupportExtensionPrime 293 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        293 < candidate →
        mixedSupportExtensionPrime 293 ≤ candidate := by
  rw [mixedExtensionPrimeEq293]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 307 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq307 :
    mixedSupportExtensionPrime 307 = 311 := by
  rfl

theorem mixedExtensionSemanticPrime307 :
    Nat.Prime (mixedSupportExtensionPrime 307) ∧
      307 < mixedSupportExtensionPrime 307 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        307 < candidate →
        mixedSupportExtensionPrime 307 ≤ candidate := by
  rw [mixedExtensionPrimeEq307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 311 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq311 :
    mixedSupportExtensionPrime 311 = 313 := by
  rfl

theorem mixedExtensionSemanticPrime311 :
    Nat.Prime (mixedSupportExtensionPrime 311) ∧
      311 < mixedSupportExtensionPrime 311 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        311 < candidate →
        mixedSupportExtensionPrime 311 ≤ candidate := by
  rw [mixedExtensionPrimeEq311]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 313 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq313 :
    mixedSupportExtensionPrime 313 = 317 := by
  rfl

theorem mixedExtensionSemanticPrime313 :
    Nat.Prime (mixedSupportExtensionPrime 313) ∧
      313 < mixedSupportExtensionPrime 313 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        313 < candidate →
        mixedSupportExtensionPrime 313 ≤ candidate := by
  rw [mixedExtensionPrimeEq313]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 317 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0001_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0001) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0001, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime139
  · exact mixedExtensionSemanticPrime149
  · exact mixedExtensionSemanticPrime151
  · exact mixedExtensionSemanticPrime157
  · exact mixedExtensionSemanticPrime163
  · exact mixedExtensionSemanticPrime167
  · exact mixedExtensionSemanticPrime173
  · exact mixedExtensionSemanticPrime179
  · exact mixedExtensionSemanticPrime181
  · exact mixedExtensionSemanticPrime191
  · exact mixedExtensionSemanticPrime193
  · exact mixedExtensionSemanticPrime197
  · exact mixedExtensionSemanticPrime199
  · exact mixedExtensionSemanticPrime211
  · exact mixedExtensionSemanticPrime223
  · exact mixedExtensionSemanticPrime227
  · exact mixedExtensionSemanticPrime229
  · exact mixedExtensionSemanticPrime233
  · exact mixedExtensionSemanticPrime239
  · exact mixedExtensionSemanticPrime241
  · exact mixedExtensionSemanticPrime251
  · exact mixedExtensionSemanticPrime257
  · exact mixedExtensionSemanticPrime263
  · exact mixedExtensionSemanticPrime269
  · exact mixedExtensionSemanticPrime271
  · exact mixedExtensionSemanticPrime277
  · exact mixedExtensionSemanticPrime281
  · exact mixedExtensionSemanticPrime283
  · exact mixedExtensionSemanticPrime293
  · exact mixedExtensionSemanticPrime307
  · exact mixedExtensionSemanticPrime311
  · exact mixedExtensionSemanticPrime313

#print axioms mixedExtensionSemanticInputs0001_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
