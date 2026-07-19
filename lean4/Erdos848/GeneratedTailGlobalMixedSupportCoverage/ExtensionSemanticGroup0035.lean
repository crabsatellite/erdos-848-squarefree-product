import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0035 : List ℕ :=
  [9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157]

theorem mixedExtensionPrimeEq9029 :
    mixedSupportExtensionPrime 9029 = 9041 := by
  rfl

theorem mixedExtensionSemanticPrime9029 :
    Nat.Prime (mixedSupportExtensionPrime 9029) ∧
      9029 < mixedSupportExtensionPrime 9029 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9029 < candidate →
        mixedSupportExtensionPrime 9029 ≤ candidate := by
  rw [mixedExtensionPrimeEq9029]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9041 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9041 :
    mixedSupportExtensionPrime 9041 = 9043 := by
  rfl

theorem mixedExtensionSemanticPrime9041 :
    Nat.Prime (mixedSupportExtensionPrime 9041) ∧
      9041 < mixedSupportExtensionPrime 9041 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9041 < candidate →
        mixedSupportExtensionPrime 9041 ≤ candidate := by
  rw [mixedExtensionPrimeEq9041]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9043 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9043 :
    mixedSupportExtensionPrime 9043 = 9049 := by
  rfl

theorem mixedExtensionSemanticPrime9043 :
    Nat.Prime (mixedSupportExtensionPrime 9043) ∧
      9043 < mixedSupportExtensionPrime 9043 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9043 < candidate →
        mixedSupportExtensionPrime 9043 ≤ candidate := by
  rw [mixedExtensionPrimeEq9043]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9049 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9049 :
    mixedSupportExtensionPrime 9049 = 9059 := by
  rfl

theorem mixedExtensionSemanticPrime9049 :
    Nat.Prime (mixedSupportExtensionPrime 9049) ∧
      9049 < mixedSupportExtensionPrime 9049 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9049 < candidate →
        mixedSupportExtensionPrime 9049 ≤ candidate := by
  rw [mixedExtensionPrimeEq9049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9059 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9059 :
    mixedSupportExtensionPrime 9059 = 9067 := by
  rfl

theorem mixedExtensionSemanticPrime9059 :
    Nat.Prime (mixedSupportExtensionPrime 9059) ∧
      9059 < mixedSupportExtensionPrime 9059 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9059 < candidate →
        mixedSupportExtensionPrime 9059 ≤ candidate := by
  rw [mixedExtensionPrimeEq9059]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9067 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9067 :
    mixedSupportExtensionPrime 9067 = 9091 := by
  rfl

theorem mixedExtensionSemanticPrime9067 :
    Nat.Prime (mixedSupportExtensionPrime 9067) ∧
      9067 < mixedSupportExtensionPrime 9067 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9067 < candidate →
        mixedSupportExtensionPrime 9067 ≤ candidate := by
  rw [mixedExtensionPrimeEq9067]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9091 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9091 :
    mixedSupportExtensionPrime 9091 = 9103 := by
  rfl

theorem mixedExtensionSemanticPrime9091 :
    Nat.Prime (mixedSupportExtensionPrime 9091) ∧
      9091 < mixedSupportExtensionPrime 9091 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9091 < candidate →
        mixedSupportExtensionPrime 9091 ≤ candidate := by
  rw [mixedExtensionPrimeEq9091]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9103 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9103 :
    mixedSupportExtensionPrime 9103 = 9109 := by
  rfl

theorem mixedExtensionSemanticPrime9103 :
    Nat.Prime (mixedSupportExtensionPrime 9103) ∧
      9103 < mixedSupportExtensionPrime 9103 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9103 < candidate →
        mixedSupportExtensionPrime 9103 ≤ candidate := by
  rw [mixedExtensionPrimeEq9103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9109 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9109 :
    mixedSupportExtensionPrime 9109 = 9127 := by
  rfl

theorem mixedExtensionSemanticPrime9109 :
    Nat.Prime (mixedSupportExtensionPrime 9109) ∧
      9109 < mixedSupportExtensionPrime 9109 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9109 < candidate →
        mixedSupportExtensionPrime 9109 ≤ candidate := by
  rw [mixedExtensionPrimeEq9109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9127 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9127 :
    mixedSupportExtensionPrime 9127 = 9133 := by
  rfl

theorem mixedExtensionSemanticPrime9127 :
    Nat.Prime (mixedSupportExtensionPrime 9127) ∧
      9127 < mixedSupportExtensionPrime 9127 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9127 < candidate →
        mixedSupportExtensionPrime 9127 ≤ candidate := by
  rw [mixedExtensionPrimeEq9127]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9133 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9133 :
    mixedSupportExtensionPrime 9133 = 9137 := by
  rfl

theorem mixedExtensionSemanticPrime9133 :
    Nat.Prime (mixedSupportExtensionPrime 9133) ∧
      9133 < mixedSupportExtensionPrime 9133 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9133 < candidate →
        mixedSupportExtensionPrime 9133 ≤ candidate := by
  rw [mixedExtensionPrimeEq9133]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9137 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9137 :
    mixedSupportExtensionPrime 9137 = 9151 := by
  rfl

theorem mixedExtensionSemanticPrime9137 :
    Nat.Prime (mixedSupportExtensionPrime 9137) ∧
      9137 < mixedSupportExtensionPrime 9137 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9137 < candidate →
        mixedSupportExtensionPrime 9137 ≤ candidate := by
  rw [mixedExtensionPrimeEq9137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9151 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9151 :
    mixedSupportExtensionPrime 9151 = 9157 := by
  rfl

theorem mixedExtensionSemanticPrime9151 :
    Nat.Prime (mixedSupportExtensionPrime 9151) ∧
      9151 < mixedSupportExtensionPrime 9151 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9151 < candidate →
        mixedSupportExtensionPrime 9151 ≤ candidate := by
  rw [mixedExtensionPrimeEq9151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9157 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq9157 :
    mixedSupportExtensionPrime 9157 = 9161 := by
  rfl

theorem mixedExtensionSemanticPrime9157 :
    Nat.Prime (mixedSupportExtensionPrime 9157) ∧
      9157 < mixedSupportExtensionPrime 9157 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9157 < candidate →
        mixedSupportExtensionPrime 9157 ≤ candidate := by
  rw [mixedExtensionPrimeEq9157]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9161 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0035_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0035) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0035, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime9029
  · exact mixedExtensionSemanticPrime9041
  · exact mixedExtensionSemanticPrime9043
  · exact mixedExtensionSemanticPrime9049
  · exact mixedExtensionSemanticPrime9059
  · exact mixedExtensionSemanticPrime9067
  · exact mixedExtensionSemanticPrime9091
  · exact mixedExtensionSemanticPrime9103
  · exact mixedExtensionSemanticPrime9109
  · exact mixedExtensionSemanticPrime9127
  · exact mixedExtensionSemanticPrime9133
  · exact mixedExtensionSemanticPrime9137
  · exact mixedExtensionSemanticPrime9151
  · exact mixedExtensionSemanticPrime9157

#print axioms mixedExtensionSemanticInputs0035_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
