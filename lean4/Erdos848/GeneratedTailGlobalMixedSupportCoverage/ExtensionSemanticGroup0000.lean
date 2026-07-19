import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0000 : List ℕ :=
  [0, 3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137]

theorem mixedExtensionPrimeEq0 :
    mixedSupportExtensionPrime 0 = 3 := by
  rfl

theorem mixedExtensionSemanticPrime0 :
    Nat.Prime (mixedSupportExtensionPrime 0) ∧
      0 < mixedSupportExtensionPrime 0 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        0 < candidate →
        mixedSupportExtensionPrime 0 ≤ candidate := by
  rw [mixedExtensionPrimeEq0]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3 :
    mixedSupportExtensionPrime 3 = 7 := by
  rfl

theorem mixedExtensionSemanticPrime3 :
    Nat.Prime (mixedSupportExtensionPrime 3) ∧
      3 < mixedSupportExtensionPrime 3 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3 < candidate →
        mixedSupportExtensionPrime 3 ≤ candidate := by
  rw [mixedExtensionPrimeEq3]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7 :
    mixedSupportExtensionPrime 7 = 11 := by
  rfl

theorem mixedExtensionSemanticPrime7 :
    Nat.Prime (mixedSupportExtensionPrime 7) ∧
      7 < mixedSupportExtensionPrime 7 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7 < candidate →
        mixedSupportExtensionPrime 7 ≤ candidate := by
  rw [mixedExtensionPrimeEq7]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 11 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq11 :
    mixedSupportExtensionPrime 11 = 13 := by
  rfl

theorem mixedExtensionSemanticPrime11 :
    Nat.Prime (mixedSupportExtensionPrime 11) ∧
      11 < mixedSupportExtensionPrime 11 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        11 < candidate →
        mixedSupportExtensionPrime 11 ≤ candidate := by
  rw [mixedExtensionPrimeEq11]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 13 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq13 :
    mixedSupportExtensionPrime 13 = 17 := by
  rfl

theorem mixedExtensionSemanticPrime13 :
    Nat.Prime (mixedSupportExtensionPrime 13) ∧
      13 < mixedSupportExtensionPrime 13 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        13 < candidate →
        mixedSupportExtensionPrime 13 ≤ candidate := by
  rw [mixedExtensionPrimeEq13]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 17 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq17 :
    mixedSupportExtensionPrime 17 = 19 := by
  rfl

theorem mixedExtensionSemanticPrime17 :
    Nat.Prime (mixedSupportExtensionPrime 17) ∧
      17 < mixedSupportExtensionPrime 17 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        17 < candidate →
        mixedSupportExtensionPrime 17 ≤ candidate := by
  rw [mixedExtensionPrimeEq17]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 19 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq19 :
    mixedSupportExtensionPrime 19 = 23 := by
  rfl

theorem mixedExtensionSemanticPrime19 :
    Nat.Prime (mixedSupportExtensionPrime 19) ∧
      19 < mixedSupportExtensionPrime 19 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        19 < candidate →
        mixedSupportExtensionPrime 19 ≤ candidate := by
  rw [mixedExtensionPrimeEq19]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 23 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq23 :
    mixedSupportExtensionPrime 23 = 29 := by
  rfl

theorem mixedExtensionSemanticPrime23 :
    Nat.Prime (mixedSupportExtensionPrime 23) ∧
      23 < mixedSupportExtensionPrime 23 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        23 < candidate →
        mixedSupportExtensionPrime 23 ≤ candidate := by
  rw [mixedExtensionPrimeEq23]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 29 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq29 :
    mixedSupportExtensionPrime 29 = 31 := by
  rfl

theorem mixedExtensionSemanticPrime29 :
    Nat.Prime (mixedSupportExtensionPrime 29) ∧
      29 < mixedSupportExtensionPrime 29 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        29 < candidate →
        mixedSupportExtensionPrime 29 ≤ candidate := by
  rw [mixedExtensionPrimeEq29]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 31 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq31 :
    mixedSupportExtensionPrime 31 = 37 := by
  rfl

theorem mixedExtensionSemanticPrime31 :
    Nat.Prime (mixedSupportExtensionPrime 31) ∧
      31 < mixedSupportExtensionPrime 31 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        31 < candidate →
        mixedSupportExtensionPrime 31 ≤ candidate := by
  rw [mixedExtensionPrimeEq31]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 37 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq37 :
    mixedSupportExtensionPrime 37 = 41 := by
  rfl

theorem mixedExtensionSemanticPrime37 :
    Nat.Prime (mixedSupportExtensionPrime 37) ∧
      37 < mixedSupportExtensionPrime 37 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        37 < candidate →
        mixedSupportExtensionPrime 37 ≤ candidate := by
  rw [mixedExtensionPrimeEq37]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 41 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq41 :
    mixedSupportExtensionPrime 41 = 43 := by
  rfl

theorem mixedExtensionSemanticPrime41 :
    Nat.Prime (mixedSupportExtensionPrime 41) ∧
      41 < mixedSupportExtensionPrime 41 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        41 < candidate →
        mixedSupportExtensionPrime 41 ≤ candidate := by
  rw [mixedExtensionPrimeEq41]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 43 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq43 :
    mixedSupportExtensionPrime 43 = 47 := by
  rfl

theorem mixedExtensionSemanticPrime43 :
    Nat.Prime (mixedSupportExtensionPrime 43) ∧
      43 < mixedSupportExtensionPrime 43 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        43 < candidate →
        mixedSupportExtensionPrime 43 ≤ candidate := by
  rw [mixedExtensionPrimeEq43]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 47 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq47 :
    mixedSupportExtensionPrime 47 = 53 := by
  rfl

theorem mixedExtensionSemanticPrime47 :
    Nat.Prime (mixedSupportExtensionPrime 47) ∧
      47 < mixedSupportExtensionPrime 47 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        47 < candidate →
        mixedSupportExtensionPrime 47 ≤ candidate := by
  rw [mixedExtensionPrimeEq47]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 53 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq53 :
    mixedSupportExtensionPrime 53 = 59 := by
  rfl

theorem mixedExtensionSemanticPrime53 :
    Nat.Prime (mixedSupportExtensionPrime 53) ∧
      53 < mixedSupportExtensionPrime 53 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        53 < candidate →
        mixedSupportExtensionPrime 53 ≤ candidate := by
  rw [mixedExtensionPrimeEq53]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 59 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq59 :
    mixedSupportExtensionPrime 59 = 61 := by
  rfl

theorem mixedExtensionSemanticPrime59 :
    Nat.Prime (mixedSupportExtensionPrime 59) ∧
      59 < mixedSupportExtensionPrime 59 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        59 < candidate →
        mixedSupportExtensionPrime 59 ≤ candidate := by
  rw [mixedExtensionPrimeEq59]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 61 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq61 :
    mixedSupportExtensionPrime 61 = 67 := by
  rfl

theorem mixedExtensionSemanticPrime61 :
    Nat.Prime (mixedSupportExtensionPrime 61) ∧
      61 < mixedSupportExtensionPrime 61 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        61 < candidate →
        mixedSupportExtensionPrime 61 ≤ candidate := by
  rw [mixedExtensionPrimeEq61]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 67 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq67 :
    mixedSupportExtensionPrime 67 = 71 := by
  rfl

theorem mixedExtensionSemanticPrime67 :
    Nat.Prime (mixedSupportExtensionPrime 67) ∧
      67 < mixedSupportExtensionPrime 67 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        67 < candidate →
        mixedSupportExtensionPrime 67 ≤ candidate := by
  rw [mixedExtensionPrimeEq67]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 71 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq71 :
    mixedSupportExtensionPrime 71 = 73 := by
  rfl

theorem mixedExtensionSemanticPrime71 :
    Nat.Prime (mixedSupportExtensionPrime 71) ∧
      71 < mixedSupportExtensionPrime 71 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        71 < candidate →
        mixedSupportExtensionPrime 71 ≤ candidate := by
  rw [mixedExtensionPrimeEq71]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 73 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq73 :
    mixedSupportExtensionPrime 73 = 79 := by
  rfl

theorem mixedExtensionSemanticPrime73 :
    Nat.Prime (mixedSupportExtensionPrime 73) ∧
      73 < mixedSupportExtensionPrime 73 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        73 < candidate →
        mixedSupportExtensionPrime 73 ≤ candidate := by
  rw [mixedExtensionPrimeEq73]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 79 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq79 :
    mixedSupportExtensionPrime 79 = 83 := by
  rfl

theorem mixedExtensionSemanticPrime79 :
    Nat.Prime (mixedSupportExtensionPrime 79) ∧
      79 < mixedSupportExtensionPrime 79 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        79 < candidate →
        mixedSupportExtensionPrime 79 ≤ candidate := by
  rw [mixedExtensionPrimeEq79]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 83 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq83 :
    mixedSupportExtensionPrime 83 = 89 := by
  rfl

theorem mixedExtensionSemanticPrime83 :
    Nat.Prime (mixedSupportExtensionPrime 83) ∧
      83 < mixedSupportExtensionPrime 83 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        83 < candidate →
        mixedSupportExtensionPrime 83 ≤ candidate := by
  rw [mixedExtensionPrimeEq83]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 89 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq89 :
    mixedSupportExtensionPrime 89 = 97 := by
  rfl

theorem mixedExtensionSemanticPrime89 :
    Nat.Prime (mixedSupportExtensionPrime 89) ∧
      89 < mixedSupportExtensionPrime 89 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        89 < candidate →
        mixedSupportExtensionPrime 89 ≤ candidate := by
  rw [mixedExtensionPrimeEq89]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 97 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq97 :
    mixedSupportExtensionPrime 97 = 101 := by
  rfl

theorem mixedExtensionSemanticPrime97 :
    Nat.Prime (mixedSupportExtensionPrime 97) ∧
      97 < mixedSupportExtensionPrime 97 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        97 < candidate →
        mixedSupportExtensionPrime 97 ≤ candidate := by
  rw [mixedExtensionPrimeEq97]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 101 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq101 :
    mixedSupportExtensionPrime 101 = 103 := by
  rfl

theorem mixedExtensionSemanticPrime101 :
    Nat.Prime (mixedSupportExtensionPrime 101) ∧
      101 < mixedSupportExtensionPrime 101 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        101 < candidate →
        mixedSupportExtensionPrime 101 ≤ candidate := by
  rw [mixedExtensionPrimeEq101]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 103 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq103 :
    mixedSupportExtensionPrime 103 = 107 := by
  rfl

theorem mixedExtensionSemanticPrime103 :
    Nat.Prime (mixedSupportExtensionPrime 103) ∧
      103 < mixedSupportExtensionPrime 103 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        103 < candidate →
        mixedSupportExtensionPrime 103 ≤ candidate := by
  rw [mixedExtensionPrimeEq103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 107 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq107 :
    mixedSupportExtensionPrime 107 = 109 := by
  rfl

theorem mixedExtensionSemanticPrime107 :
    Nat.Prime (mixedSupportExtensionPrime 107) ∧
      107 < mixedSupportExtensionPrime 107 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        107 < candidate →
        mixedSupportExtensionPrime 107 ≤ candidate := by
  rw [mixedExtensionPrimeEq107]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 109 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq109 :
    mixedSupportExtensionPrime 109 = 113 := by
  rfl

theorem mixedExtensionSemanticPrime109 :
    Nat.Prime (mixedSupportExtensionPrime 109) ∧
      109 < mixedSupportExtensionPrime 109 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        109 < candidate →
        mixedSupportExtensionPrime 109 ≤ candidate := by
  rw [mixedExtensionPrimeEq109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 113 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq113 :
    mixedSupportExtensionPrime 113 = 127 := by
  rfl

theorem mixedExtensionSemanticPrime113 :
    Nat.Prime (mixedSupportExtensionPrime 113) ∧
      113 < mixedSupportExtensionPrime 113 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        113 < candidate →
        mixedSupportExtensionPrime 113 ≤ candidate := by
  rw [mixedExtensionPrimeEq113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 127 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq127 :
    mixedSupportExtensionPrime 127 = 131 := by
  rfl

theorem mixedExtensionSemanticPrime127 :
    Nat.Prime (mixedSupportExtensionPrime 127) ∧
      127 < mixedSupportExtensionPrime 127 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        127 < candidate →
        mixedSupportExtensionPrime 127 ≤ candidate := by
  rw [mixedExtensionPrimeEq127]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 131 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq131 :
    mixedSupportExtensionPrime 131 = 137 := by
  rfl

theorem mixedExtensionSemanticPrime131 :
    Nat.Prime (mixedSupportExtensionPrime 131) ∧
      131 < mixedSupportExtensionPrime 131 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        131 < candidate →
        mixedSupportExtensionPrime 131 ≤ candidate := by
  rw [mixedExtensionPrimeEq131]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 137 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq137 :
    mixedSupportExtensionPrime 137 = 139 := by
  rfl

theorem mixedExtensionSemanticPrime137 :
    Nat.Prime (mixedSupportExtensionPrime 137) ∧
      137 < mixedSupportExtensionPrime 137 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        137 < candidate →
        mixedSupportExtensionPrime 137 ≤ candidate := by
  rw [mixedExtensionPrimeEq137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 139 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0000_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0000) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0000, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime0
  · exact mixedExtensionSemanticPrime3
  · exact mixedExtensionSemanticPrime7
  · exact mixedExtensionSemanticPrime11
  · exact mixedExtensionSemanticPrime13
  · exact mixedExtensionSemanticPrime17
  · exact mixedExtensionSemanticPrime19
  · exact mixedExtensionSemanticPrime23
  · exact mixedExtensionSemanticPrime29
  · exact mixedExtensionSemanticPrime31
  · exact mixedExtensionSemanticPrime37
  · exact mixedExtensionSemanticPrime41
  · exact mixedExtensionSemanticPrime43
  · exact mixedExtensionSemanticPrime47
  · exact mixedExtensionSemanticPrime53
  · exact mixedExtensionSemanticPrime59
  · exact mixedExtensionSemanticPrime61
  · exact mixedExtensionSemanticPrime67
  · exact mixedExtensionSemanticPrime71
  · exact mixedExtensionSemanticPrime73
  · exact mixedExtensionSemanticPrime79
  · exact mixedExtensionSemanticPrime83
  · exact mixedExtensionSemanticPrime89
  · exact mixedExtensionSemanticPrime97
  · exact mixedExtensionSemanticPrime101
  · exact mixedExtensionSemanticPrime103
  · exact mixedExtensionSemanticPrime107
  · exact mixedExtensionSemanticPrime109
  · exact mixedExtensionSemanticPrime113
  · exact mixedExtensionSemanticPrime127
  · exact mixedExtensionSemanticPrime131
  · exact mixedExtensionSemanticPrime137

#print axioms mixedExtensionSemanticInputs0000_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
