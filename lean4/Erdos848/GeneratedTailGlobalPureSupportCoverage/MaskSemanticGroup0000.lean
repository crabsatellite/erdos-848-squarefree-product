import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3 :
    supportQrMaskWords 3 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3).take 11 := by
  rfl

theorem baseSupportPrimeMem3 :
    3 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3 :
    supportExtensionPrime 3 = 7 := by
  rfl

theorem extensionSemanticPrime3 :
    Nat.Prime (supportExtensionPrime 3) ∧
      3 < supportExtensionPrime 3 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3 < q → supportExtensionPrime 3 ≤ q := by
  rw [extensionPrimeEq3]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 7 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime7 :
    supportQrMaskWords 7 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        7).take 11 := by
  rfl

theorem baseSupportPrimeMem7 :
    7 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq7 :
    supportExtensionPrime 7 = 11 := by
  rfl

theorem extensionSemanticPrime7 :
    Nat.Prime (supportExtensionPrime 7) ∧
      7 < supportExtensionPrime 7 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        7 < q → supportExtensionPrime 7 ≤ q := by
  rw [extensionPrimeEq7]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 11 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime11 :
    supportQrMaskWords 11 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        11).take 11 := by
  rfl

theorem baseSupportPrimeMem11 :
    11 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq11 :
    supportExtensionPrime 11 = 13 := by
  rfl

theorem extensionSemanticPrime11 :
    Nat.Prime (supportExtensionPrime 11) ∧
      11 < supportExtensionPrime 11 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        11 < q → supportExtensionPrime 11 ≤ q := by
  rw [extensionPrimeEq11]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 13 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime13 :
    supportQrMaskWords 13 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        13).take 11 := by
  rfl

theorem baseSupportPrimeMem13 :
    13 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq13 :
    supportExtensionPrime 13 = 17 := by
  rfl

theorem extensionSemanticPrime13 :
    Nat.Prime (supportExtensionPrime 13) ∧
      13 < supportExtensionPrime 13 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        13 < q → supportExtensionPrime 13 ≤ q := by
  rw [extensionPrimeEq13]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 17 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime17 :
    supportQrMaskWords 17 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        17).take 11 := by
  rfl

theorem baseSupportPrimeMem17 :
    17 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq17 :
    supportExtensionPrime 17 = 19 := by
  rfl

theorem extensionSemanticPrime17 :
    Nat.Prime (supportExtensionPrime 17) ∧
      17 < supportExtensionPrime 17 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        17 < q → supportExtensionPrime 17 ≤ q := by
  rw [extensionPrimeEq17]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 19 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime19 :
    supportQrMaskWords 19 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        19).take 11 := by
  rfl

theorem baseSupportPrimeMem19 :
    19 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq19 :
    supportExtensionPrime 19 = 23 := by
  rfl

theorem extensionSemanticPrime19 :
    Nat.Prime (supportExtensionPrime 19) ∧
      19 < supportExtensionPrime 19 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        19 < q → supportExtensionPrime 19 ≤ q := by
  rw [extensionPrimeEq19]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 23 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime23 :
    supportQrMaskWords 23 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        23).take 11 := by
  rfl

theorem baseSupportPrimeMem23 :
    23 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq23 :
    supportExtensionPrime 23 = 29 := by
  rfl

theorem extensionSemanticPrime23 :
    Nat.Prime (supportExtensionPrime 23) ∧
      23 < supportExtensionPrime 23 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        23 < q → supportExtensionPrime 23 ≤ q := by
  rw [extensionPrimeEq23]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 29 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime29 :
    supportQrMaskWords 29 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        29).take 11 := by
  rfl

theorem baseSupportPrimeMem29 :
    29 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq29 :
    supportExtensionPrime 29 = 31 := by
  rfl

theorem extensionSemanticPrime29 :
    Nat.Prime (supportExtensionPrime 29) ∧
      29 < supportExtensionPrime 29 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        29 < q → supportExtensionPrime 29 ≤ q := by
  rw [extensionPrimeEq29]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 31 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime31 :
    supportQrMaskWords 31 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        31).take 11 := by
  rfl

theorem baseSupportPrimeMem31 :
    31 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq31 :
    supportExtensionPrime 31 = 37 := by
  rfl

theorem extensionSemanticPrime31 :
    Nat.Prime (supportExtensionPrime 31) ∧
      31 < supportExtensionPrime 31 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        31 < q → supportExtensionPrime 31 ≤ q := by
  rw [extensionPrimeEq31]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 37 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime37 :
    supportQrMaskWords 37 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        37).take 11 := by
  rfl

theorem baseSupportPrimeMem37 :
    37 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq37 :
    supportExtensionPrime 37 = 41 := by
  rfl

theorem extensionSemanticPrime37 :
    Nat.Prime (supportExtensionPrime 37) ∧
      37 < supportExtensionPrime 37 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        37 < q → supportExtensionPrime 37 ≤ q := by
  rw [extensionPrimeEq37]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 41 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime41 :
    supportQrMaskWords 41 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        41).take 11 := by
  rfl

theorem baseSupportPrimeMem41 :
    41 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq41 :
    supportExtensionPrime 41 = 43 := by
  rfl

theorem extensionSemanticPrime41 :
    Nat.Prime (supportExtensionPrime 41) ∧
      41 < supportExtensionPrime 41 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        41 < q → supportExtensionPrime 41 ≤ q := by
  rw [extensionPrimeEq41]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 43 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0000
    {p : ℕ}
    (hLower : 3 ≤ p) (hUpper : p ≤ 41)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3
  · exact maskSemanticPrime7
  · exact maskSemanticPrime11
  · exact maskSemanticPrime13
  · exact maskSemanticPrime17
  · exact maskSemanticPrime19
  · exact maskSemanticPrime23
  · exact maskSemanticPrime29
  · exact maskSemanticPrime31
  · exact maskSemanticPrime37
  · exact maskSemanticPrime41

theorem baseSupportPrimeMemGroup0000
    {p : ℕ}
    (hLower : 3 ≤ p) (hUpper : p ≤ 41)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3
  · exact baseSupportPrimeMem7
  · exact baseSupportPrimeMem11
  · exact baseSupportPrimeMem13
  · exact baseSupportPrimeMem17
  · exact baseSupportPrimeMem19
  · exact baseSupportPrimeMem23
  · exact baseSupportPrimeMem29
  · exact baseSupportPrimeMem31
  · exact baseSupportPrimeMem37
  · exact baseSupportPrimeMem41

theorem extensionSemanticGroup0000
    {p : ℕ}
    (hLower : 3 ≤ p) (hUpper : p ≤ 41)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3
  · exact extensionSemanticPrime7
  · exact extensionSemanticPrime11
  · exact extensionSemanticPrime13
  · exact extensionSemanticPrime17
  · exact extensionSemanticPrime19
  · exact extensionSemanticPrime23
  · exact extensionSemanticPrime29
  · exact extensionSemanticPrime31
  · exact extensionSemanticPrime37
  · exact extensionSemanticPrime41

end Erdos848.GeneratedTailGlobalPureSupportCoverage
