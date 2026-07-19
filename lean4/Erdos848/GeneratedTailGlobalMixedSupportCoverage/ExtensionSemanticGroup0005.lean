import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0005 : List ℕ :=
  [953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171]

theorem mixedExtensionPrimeEq953 :
    mixedSupportExtensionPrime 953 = 967 := by
  rfl

theorem mixedExtensionSemanticPrime953 :
    Nat.Prime (mixedSupportExtensionPrime 953) ∧
      953 < mixedSupportExtensionPrime 953 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        953 < candidate →
        mixedSupportExtensionPrime 953 ≤ candidate := by
  rw [mixedExtensionPrimeEq953]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 967 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq967 :
    mixedSupportExtensionPrime 967 = 971 := by
  rfl

theorem mixedExtensionSemanticPrime967 :
    Nat.Prime (mixedSupportExtensionPrime 967) ∧
      967 < mixedSupportExtensionPrime 967 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        967 < candidate →
        mixedSupportExtensionPrime 967 ≤ candidate := by
  rw [mixedExtensionPrimeEq967]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 971 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq971 :
    mixedSupportExtensionPrime 971 = 977 := by
  rfl

theorem mixedExtensionSemanticPrime971 :
    Nat.Prime (mixedSupportExtensionPrime 971) ∧
      971 < mixedSupportExtensionPrime 971 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        971 < candidate →
        mixedSupportExtensionPrime 971 ≤ candidate := by
  rw [mixedExtensionPrimeEq971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 977 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq977 :
    mixedSupportExtensionPrime 977 = 983 := by
  rfl

theorem mixedExtensionSemanticPrime977 :
    Nat.Prime (mixedSupportExtensionPrime 977) ∧
      977 < mixedSupportExtensionPrime 977 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        977 < candidate →
        mixedSupportExtensionPrime 977 ≤ candidate := by
  rw [mixedExtensionPrimeEq977]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 983 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq983 :
    mixedSupportExtensionPrime 983 = 991 := by
  rfl

theorem mixedExtensionSemanticPrime983 :
    Nat.Prime (mixedSupportExtensionPrime 983) ∧
      983 < mixedSupportExtensionPrime 983 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        983 < candidate →
        mixedSupportExtensionPrime 983 ≤ candidate := by
  rw [mixedExtensionPrimeEq983]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 991 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq991 :
    mixedSupportExtensionPrime 991 = 997 := by
  rfl

theorem mixedExtensionSemanticPrime991 :
    Nat.Prime (mixedSupportExtensionPrime 991) ∧
      991 < mixedSupportExtensionPrime 991 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        991 < candidate →
        mixedSupportExtensionPrime 991 ≤ candidate := by
  rw [mixedExtensionPrimeEq991]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 997 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq997 :
    mixedSupportExtensionPrime 997 = 1009 := by
  rfl

theorem mixedExtensionSemanticPrime997 :
    Nat.Prime (mixedSupportExtensionPrime 997) ∧
      997 < mixedSupportExtensionPrime 997 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        997 < candidate →
        mixedSupportExtensionPrime 997 ≤ candidate := by
  rw [mixedExtensionPrimeEq997]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1009 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1009 :
    mixedSupportExtensionPrime 1009 = 1013 := by
  rfl

theorem mixedExtensionSemanticPrime1009 :
    Nat.Prime (mixedSupportExtensionPrime 1009) ∧
      1009 < mixedSupportExtensionPrime 1009 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1009 < candidate →
        mixedSupportExtensionPrime 1009 ≤ candidate := by
  rw [mixedExtensionPrimeEq1009]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1013 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1013 :
    mixedSupportExtensionPrime 1013 = 1019 := by
  rfl

theorem mixedExtensionSemanticPrime1013 :
    Nat.Prime (mixedSupportExtensionPrime 1013) ∧
      1013 < mixedSupportExtensionPrime 1013 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1013 < candidate →
        mixedSupportExtensionPrime 1013 ≤ candidate := by
  rw [mixedExtensionPrimeEq1013]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1019 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1019 :
    mixedSupportExtensionPrime 1019 = 1021 := by
  rfl

theorem mixedExtensionSemanticPrime1019 :
    Nat.Prime (mixedSupportExtensionPrime 1019) ∧
      1019 < mixedSupportExtensionPrime 1019 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1019 < candidate →
        mixedSupportExtensionPrime 1019 ≤ candidate := by
  rw [mixedExtensionPrimeEq1019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1021 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1021 :
    mixedSupportExtensionPrime 1021 = 1031 := by
  rfl

theorem mixedExtensionSemanticPrime1021 :
    Nat.Prime (mixedSupportExtensionPrime 1021) ∧
      1021 < mixedSupportExtensionPrime 1021 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1021 < candidate →
        mixedSupportExtensionPrime 1021 ≤ candidate := by
  rw [mixedExtensionPrimeEq1021]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1031 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1031 :
    mixedSupportExtensionPrime 1031 = 1033 := by
  rfl

theorem mixedExtensionSemanticPrime1031 :
    Nat.Prime (mixedSupportExtensionPrime 1031) ∧
      1031 < mixedSupportExtensionPrime 1031 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1031 < candidate →
        mixedSupportExtensionPrime 1031 ≤ candidate := by
  rw [mixedExtensionPrimeEq1031]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1033 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1033 :
    mixedSupportExtensionPrime 1033 = 1039 := by
  rfl

theorem mixedExtensionSemanticPrime1033 :
    Nat.Prime (mixedSupportExtensionPrime 1033) ∧
      1033 < mixedSupportExtensionPrime 1033 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1033 < candidate →
        mixedSupportExtensionPrime 1033 ≤ candidate := by
  rw [mixedExtensionPrimeEq1033]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1039 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1039 :
    mixedSupportExtensionPrime 1039 = 1049 := by
  rfl

theorem mixedExtensionSemanticPrime1039 :
    Nat.Prime (mixedSupportExtensionPrime 1039) ∧
      1039 < mixedSupportExtensionPrime 1039 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1039 < candidate →
        mixedSupportExtensionPrime 1039 ≤ candidate := by
  rw [mixedExtensionPrimeEq1039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1049 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1049 :
    mixedSupportExtensionPrime 1049 = 1051 := by
  rfl

theorem mixedExtensionSemanticPrime1049 :
    Nat.Prime (mixedSupportExtensionPrime 1049) ∧
      1049 < mixedSupportExtensionPrime 1049 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1049 < candidate →
        mixedSupportExtensionPrime 1049 ≤ candidate := by
  rw [mixedExtensionPrimeEq1049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1051 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1051 :
    mixedSupportExtensionPrime 1051 = 1061 := by
  rfl

theorem mixedExtensionSemanticPrime1051 :
    Nat.Prime (mixedSupportExtensionPrime 1051) ∧
      1051 < mixedSupportExtensionPrime 1051 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1051 < candidate →
        mixedSupportExtensionPrime 1051 ≤ candidate := by
  rw [mixedExtensionPrimeEq1051]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1061 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1061 :
    mixedSupportExtensionPrime 1061 = 1063 := by
  rfl

theorem mixedExtensionSemanticPrime1061 :
    Nat.Prime (mixedSupportExtensionPrime 1061) ∧
      1061 < mixedSupportExtensionPrime 1061 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1061 < candidate →
        mixedSupportExtensionPrime 1061 ≤ candidate := by
  rw [mixedExtensionPrimeEq1061]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1063 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1063 :
    mixedSupportExtensionPrime 1063 = 1069 := by
  rfl

theorem mixedExtensionSemanticPrime1063 :
    Nat.Prime (mixedSupportExtensionPrime 1063) ∧
      1063 < mixedSupportExtensionPrime 1063 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1063 < candidate →
        mixedSupportExtensionPrime 1063 ≤ candidate := by
  rw [mixedExtensionPrimeEq1063]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1069 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1069 :
    mixedSupportExtensionPrime 1069 = 1087 := by
  rfl

theorem mixedExtensionSemanticPrime1069 :
    Nat.Prime (mixedSupportExtensionPrime 1069) ∧
      1069 < mixedSupportExtensionPrime 1069 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1069 < candidate →
        mixedSupportExtensionPrime 1069 ≤ candidate := by
  rw [mixedExtensionPrimeEq1069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1087 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1087 :
    mixedSupportExtensionPrime 1087 = 1091 := by
  rfl

theorem mixedExtensionSemanticPrime1087 :
    Nat.Prime (mixedSupportExtensionPrime 1087) ∧
      1087 < mixedSupportExtensionPrime 1087 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1087 < candidate →
        mixedSupportExtensionPrime 1087 ≤ candidate := by
  rw [mixedExtensionPrimeEq1087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1091 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1091 :
    mixedSupportExtensionPrime 1091 = 1093 := by
  rfl

theorem mixedExtensionSemanticPrime1091 :
    Nat.Prime (mixedSupportExtensionPrime 1091) ∧
      1091 < mixedSupportExtensionPrime 1091 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1091 < candidate →
        mixedSupportExtensionPrime 1091 ≤ candidate := by
  rw [mixedExtensionPrimeEq1091]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1093 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1093 :
    mixedSupportExtensionPrime 1093 = 1097 := by
  rfl

theorem mixedExtensionSemanticPrime1093 :
    Nat.Prime (mixedSupportExtensionPrime 1093) ∧
      1093 < mixedSupportExtensionPrime 1093 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1093 < candidate →
        mixedSupportExtensionPrime 1093 ≤ candidate := by
  rw [mixedExtensionPrimeEq1093]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1097 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1097 :
    mixedSupportExtensionPrime 1097 = 1103 := by
  rfl

theorem mixedExtensionSemanticPrime1097 :
    Nat.Prime (mixedSupportExtensionPrime 1097) ∧
      1097 < mixedSupportExtensionPrime 1097 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1097 < candidate →
        mixedSupportExtensionPrime 1097 ≤ candidate := by
  rw [mixedExtensionPrimeEq1097]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1103 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1103 :
    mixedSupportExtensionPrime 1103 = 1109 := by
  rfl

theorem mixedExtensionSemanticPrime1103 :
    Nat.Prime (mixedSupportExtensionPrime 1103) ∧
      1103 < mixedSupportExtensionPrime 1103 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1103 < candidate →
        mixedSupportExtensionPrime 1103 ≤ candidate := by
  rw [mixedExtensionPrimeEq1103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1109 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1109 :
    mixedSupportExtensionPrime 1109 = 1117 := by
  rfl

theorem mixedExtensionSemanticPrime1109 :
    Nat.Prime (mixedSupportExtensionPrime 1109) ∧
      1109 < mixedSupportExtensionPrime 1109 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1109 < candidate →
        mixedSupportExtensionPrime 1109 ≤ candidate := by
  rw [mixedExtensionPrimeEq1109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1117 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1117 :
    mixedSupportExtensionPrime 1117 = 1123 := by
  rfl

theorem mixedExtensionSemanticPrime1117 :
    Nat.Prime (mixedSupportExtensionPrime 1117) ∧
      1117 < mixedSupportExtensionPrime 1117 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1117 < candidate →
        mixedSupportExtensionPrime 1117 ≤ candidate := by
  rw [mixedExtensionPrimeEq1117]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1123 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1123 :
    mixedSupportExtensionPrime 1123 = 1129 := by
  rfl

theorem mixedExtensionSemanticPrime1123 :
    Nat.Prime (mixedSupportExtensionPrime 1123) ∧
      1123 < mixedSupportExtensionPrime 1123 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1123 < candidate →
        mixedSupportExtensionPrime 1123 ≤ candidate := by
  rw [mixedExtensionPrimeEq1123]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1129 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1129 :
    mixedSupportExtensionPrime 1129 = 1151 := by
  rfl

theorem mixedExtensionSemanticPrime1129 :
    Nat.Prime (mixedSupportExtensionPrime 1129) ∧
      1129 < mixedSupportExtensionPrime 1129 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1129 < candidate →
        mixedSupportExtensionPrime 1129 ≤ candidate := by
  rw [mixedExtensionPrimeEq1129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1151 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1151 :
    mixedSupportExtensionPrime 1151 = 1153 := by
  rfl

theorem mixedExtensionSemanticPrime1151 :
    Nat.Prime (mixedSupportExtensionPrime 1151) ∧
      1151 < mixedSupportExtensionPrime 1151 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1151 < candidate →
        mixedSupportExtensionPrime 1151 ≤ candidate := by
  rw [mixedExtensionPrimeEq1151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1153 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1153 :
    mixedSupportExtensionPrime 1153 = 1163 := by
  rfl

theorem mixedExtensionSemanticPrime1153 :
    Nat.Prime (mixedSupportExtensionPrime 1153) ∧
      1153 < mixedSupportExtensionPrime 1153 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1153 < candidate →
        mixedSupportExtensionPrime 1153 ≤ candidate := by
  rw [mixedExtensionPrimeEq1153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1163 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1163 :
    mixedSupportExtensionPrime 1163 = 1171 := by
  rfl

theorem mixedExtensionSemanticPrime1163 :
    Nat.Prime (mixedSupportExtensionPrime 1163) ∧
      1163 < mixedSupportExtensionPrime 1163 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1163 < candidate →
        mixedSupportExtensionPrime 1163 ≤ candidate := by
  rw [mixedExtensionPrimeEq1163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1171 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1171 :
    mixedSupportExtensionPrime 1171 = 1181 := by
  rfl

theorem mixedExtensionSemanticPrime1171 :
    Nat.Prime (mixedSupportExtensionPrime 1171) ∧
      1171 < mixedSupportExtensionPrime 1171 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1171 < candidate →
        mixedSupportExtensionPrime 1171 ≤ candidate := by
  rw [mixedExtensionPrimeEq1171]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1181 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0005_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0005) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0005, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime953
  · exact mixedExtensionSemanticPrime967
  · exact mixedExtensionSemanticPrime971
  · exact mixedExtensionSemanticPrime977
  · exact mixedExtensionSemanticPrime983
  · exact mixedExtensionSemanticPrime991
  · exact mixedExtensionSemanticPrime997
  · exact mixedExtensionSemanticPrime1009
  · exact mixedExtensionSemanticPrime1013
  · exact mixedExtensionSemanticPrime1019
  · exact mixedExtensionSemanticPrime1021
  · exact mixedExtensionSemanticPrime1031
  · exact mixedExtensionSemanticPrime1033
  · exact mixedExtensionSemanticPrime1039
  · exact mixedExtensionSemanticPrime1049
  · exact mixedExtensionSemanticPrime1051
  · exact mixedExtensionSemanticPrime1061
  · exact mixedExtensionSemanticPrime1063
  · exact mixedExtensionSemanticPrime1069
  · exact mixedExtensionSemanticPrime1087
  · exact mixedExtensionSemanticPrime1091
  · exact mixedExtensionSemanticPrime1093
  · exact mixedExtensionSemanticPrime1097
  · exact mixedExtensionSemanticPrime1103
  · exact mixedExtensionSemanticPrime1109
  · exact mixedExtensionSemanticPrime1117
  · exact mixedExtensionSemanticPrime1123
  · exact mixedExtensionSemanticPrime1129
  · exact mixedExtensionSemanticPrime1151
  · exact mixedExtensionSemanticPrime1153
  · exact mixedExtensionSemanticPrime1163
  · exact mixedExtensionSemanticPrime1171

#print axioms mixedExtensionSemanticInputs0005_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
