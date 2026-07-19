import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime97 :
    supportQrMaskWords 97 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        97).take 11 := by
  rfl

theorem baseSupportPrimeMem97 :
    97 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq97 :
    supportExtensionPrime 97 = 101 := by
  rfl

theorem extensionSemanticPrime97 :
    Nat.Prime (supportExtensionPrime 97) ∧
      97 < supportExtensionPrime 97 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        97 < q → supportExtensionPrime 97 ≤ q := by
  rw [extensionPrimeEq97]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 101 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime101 :
    supportQrMaskWords 101 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        101).take 11 := by
  rfl

theorem baseSupportPrimeMem101 :
    101 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq101 :
    supportExtensionPrime 101 = 103 := by
  rfl

theorem extensionSemanticPrime101 :
    Nat.Prime (supportExtensionPrime 101) ∧
      101 < supportExtensionPrime 101 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        101 < q → supportExtensionPrime 101 ≤ q := by
  rw [extensionPrimeEq101]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 103 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime103 :
    supportQrMaskWords 103 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        103).take 11 := by
  rfl

theorem baseSupportPrimeMem103 :
    103 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq103 :
    supportExtensionPrime 103 = 107 := by
  rfl

theorem extensionSemanticPrime103 :
    Nat.Prime (supportExtensionPrime 103) ∧
      103 < supportExtensionPrime 103 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        103 < q → supportExtensionPrime 103 ≤ q := by
  rw [extensionPrimeEq103]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 107 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime107 :
    supportQrMaskWords 107 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        107).take 11 := by
  rfl

theorem baseSupportPrimeMem107 :
    107 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq107 :
    supportExtensionPrime 107 = 109 := by
  rfl

theorem extensionSemanticPrime107 :
    Nat.Prime (supportExtensionPrime 107) ∧
      107 < supportExtensionPrime 107 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        107 < q → supportExtensionPrime 107 ≤ q := by
  rw [extensionPrimeEq107]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 109 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime109 :
    supportQrMaskWords 109 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        109).take 11 := by
  rfl

theorem baseSupportPrimeMem109 :
    109 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq109 :
    supportExtensionPrime 109 = 113 := by
  rfl

theorem extensionSemanticPrime109 :
    Nat.Prime (supportExtensionPrime 109) ∧
      109 < supportExtensionPrime 109 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        109 < q → supportExtensionPrime 109 ≤ q := by
  rw [extensionPrimeEq109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 113 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime113 :
    supportQrMaskWords 113 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        113).take 11 := by
  rfl

theorem baseSupportPrimeMem113 :
    113 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq113 :
    supportExtensionPrime 113 = 127 := by
  rfl

theorem extensionSemanticPrime113 :
    Nat.Prime (supportExtensionPrime 113) ∧
      113 < supportExtensionPrime 113 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        113 < q → supportExtensionPrime 113 ≤ q := by
  rw [extensionPrimeEq113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 127 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime127 :
    supportQrMaskWords 127 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        127).take 11 := by
  rfl

theorem baseSupportPrimeMem127 :
    127 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq127 :
    supportExtensionPrime 127 = 131 := by
  rfl

theorem extensionSemanticPrime127 :
    Nat.Prime (supportExtensionPrime 127) ∧
      127 < supportExtensionPrime 127 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        127 < q → supportExtensionPrime 127 ≤ q := by
  rw [extensionPrimeEq127]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 131 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime131 :
    supportQrMaskWords 131 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        131).take 11 := by
  rfl

theorem baseSupportPrimeMem131 :
    131 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq131 :
    supportExtensionPrime 131 = 137 := by
  rfl

theorem extensionSemanticPrime131 :
    Nat.Prime (supportExtensionPrime 131) ∧
      131 < supportExtensionPrime 131 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        131 < q → supportExtensionPrime 131 ≤ q := by
  rw [extensionPrimeEq131]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 137 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime137 :
    supportQrMaskWords 137 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        137).take 11 := by
  rfl

theorem baseSupportPrimeMem137 :
    137 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq137 :
    supportExtensionPrime 137 = 139 := by
  rfl

theorem extensionSemanticPrime137 :
    Nat.Prime (supportExtensionPrime 137) ∧
      137 < supportExtensionPrime 137 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        137 < q → supportExtensionPrime 137 ≤ q := by
  rw [extensionPrimeEq137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 139 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime139 :
    supportQrMaskWords 139 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        139).take 11 := by
  rfl

theorem baseSupportPrimeMem139 :
    139 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq139 :
    supportExtensionPrime 139 = 149 := by
  rfl

theorem extensionSemanticPrime139 :
    Nat.Prime (supportExtensionPrime 139) ∧
      139 < supportExtensionPrime 139 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        139 < q → supportExtensionPrime 139 ≤ q := by
  rw [extensionPrimeEq139]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 149 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime149 :
    supportQrMaskWords 149 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        149).take 11 := by
  rfl

theorem baseSupportPrimeMem149 :
    149 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq149 :
    supportExtensionPrime 149 = 151 := by
  rfl

theorem extensionSemanticPrime149 :
    Nat.Prime (supportExtensionPrime 149) ∧
      149 < supportExtensionPrime 149 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        149 < q → supportExtensionPrime 149 ≤ q := by
  rw [extensionPrimeEq149]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 151 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0002
    {p : ℕ}
    (hLower : 90 ≤ p) (hUpper : p ≤ 149)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime97
  · exact maskSemanticPrime101
  · exact maskSemanticPrime103
  · exact maskSemanticPrime107
  · exact maskSemanticPrime109
  · exact maskSemanticPrime113
  · exact maskSemanticPrime127
  · exact maskSemanticPrime131
  · exact maskSemanticPrime137
  · exact maskSemanticPrime139
  · exact maskSemanticPrime149

theorem baseSupportPrimeMemGroup0002
    {p : ℕ}
    (hLower : 90 ≤ p) (hUpper : p ≤ 149)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem97
  · exact baseSupportPrimeMem101
  · exact baseSupportPrimeMem103
  · exact baseSupportPrimeMem107
  · exact baseSupportPrimeMem109
  · exact baseSupportPrimeMem113
  · exact baseSupportPrimeMem127
  · exact baseSupportPrimeMem131
  · exact baseSupportPrimeMem137
  · exact baseSupportPrimeMem139
  · exact baseSupportPrimeMem149

theorem extensionSemanticGroup0002
    {p : ℕ}
    (hLower : 90 ≤ p) (hUpper : p ≤ 149)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime97
  · exact extensionSemanticPrime101
  · exact extensionSemanticPrime103
  · exact extensionSemanticPrime107
  · exact extensionSemanticPrime109
  · exact extensionSemanticPrime113
  · exact extensionSemanticPrime127
  · exact extensionSemanticPrime131
  · exact extensionSemanticPrime137
  · exact extensionSemanticPrime139
  · exact extensionSemanticPrime149

end Erdos848.GeneratedTailGlobalPureSupportCoverage
