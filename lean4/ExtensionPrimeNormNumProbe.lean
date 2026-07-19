import Erdos848.TailGlobalMixedExtensionChecker

example : Nat.Prime 9041 := by norm_num
example : Nat.Prime 9043 := by norm_num
example : Nat.Prime 9049 := by norm_num
example : Nat.Prime 9059 := by norm_num
example : Nat.Prime 9067 := by norm_num
example : Nat.Prime 9091 := by norm_num
example : Nat.Prime 9103 := by norm_num
example : Nat.Prime 9109 := by norm_num
example : Nat.Prime 9127 := by norm_num
example : Nat.Prime 9133 := by norm_num
example : Nat.Prime 9137 := by norm_num
example : Nat.Prime 9151 := by norm_num
example : Nat.Prime 9157 := by norm_num
example : Nat.Prime 9173 := by norm_num

example :
    Nat.Prime 9173 ∧
      9157 < 9173 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        9157 < candidate → 9173 ≤ candidate := by
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 9173 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime
