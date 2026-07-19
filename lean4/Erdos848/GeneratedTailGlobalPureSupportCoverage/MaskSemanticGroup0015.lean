import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime997 :
    supportQrMaskWords 997 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        997).take 11 := by
  rfl

theorem baseSupportPrimeMem997 :
    997 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq997 :
    supportExtensionPrime 997 = 1009 := by
  rfl

theorem extensionSemanticPrime997 :
    Nat.Prime (supportExtensionPrime 997) ∧
      997 < supportExtensionPrime 997 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        997 < q → supportExtensionPrime 997 ≤ q := by
  rw [extensionPrimeEq997]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1009 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1009 :
    supportQrMaskWords 1009 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1009).take 11 := by
  rfl

theorem baseSupportPrimeMem1009 :
    1009 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1009 :
    supportExtensionPrime 1009 = 1013 := by
  rfl

theorem extensionSemanticPrime1009 :
    Nat.Prime (supportExtensionPrime 1009) ∧
      1009 < supportExtensionPrime 1009 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1009 < q → supportExtensionPrime 1009 ≤ q := by
  rw [extensionPrimeEq1009]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1013 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1013 :
    supportQrMaskWords 1013 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1013).take 11 := by
  rfl

theorem baseSupportPrimeMem1013 :
    1013 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1013 :
    supportExtensionPrime 1013 = 1019 := by
  rfl

theorem extensionSemanticPrime1013 :
    Nat.Prime (supportExtensionPrime 1013) ∧
      1013 < supportExtensionPrime 1013 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1013 < q → supportExtensionPrime 1013 ≤ q := by
  rw [extensionPrimeEq1013]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1019 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1019 :
    supportQrMaskWords 1019 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1019).take 11 := by
  rfl

theorem baseSupportPrimeMem1019 :
    1019 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1019 :
    supportExtensionPrime 1019 = 1021 := by
  rfl

theorem extensionSemanticPrime1019 :
    Nat.Prime (supportExtensionPrime 1019) ∧
      1019 < supportExtensionPrime 1019 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1019 < q → supportExtensionPrime 1019 ≤ q := by
  rw [extensionPrimeEq1019]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1021 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1021 :
    supportQrMaskWords 1021 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1021).take 11 := by
  rfl

theorem baseSupportPrimeMem1021 :
    1021 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1021 :
    supportExtensionPrime 1021 = 1031 := by
  rfl

theorem extensionSemanticPrime1021 :
    Nat.Prime (supportExtensionPrime 1021) ∧
      1021 < supportExtensionPrime 1021 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1021 < q → supportExtensionPrime 1021 ≤ q := by
  rw [extensionPrimeEq1021]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1031 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1031 :
    supportQrMaskWords 1031 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1031).take 11 := by
  rfl

theorem baseSupportPrimeMem1031 :
    1031 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1031 :
    supportExtensionPrime 1031 = 1033 := by
  rfl

theorem extensionSemanticPrime1031 :
    Nat.Prime (supportExtensionPrime 1031) ∧
      1031 < supportExtensionPrime 1031 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1031 < q → supportExtensionPrime 1031 ≤ q := by
  rw [extensionPrimeEq1031]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1033 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1033 :
    supportQrMaskWords 1033 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1033).take 11 := by
  rfl

theorem baseSupportPrimeMem1033 :
    1033 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1033 :
    supportExtensionPrime 1033 = 1039 := by
  rfl

theorem extensionSemanticPrime1033 :
    Nat.Prime (supportExtensionPrime 1033) ∧
      1033 < supportExtensionPrime 1033 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1033 < q → supportExtensionPrime 1033 ≤ q := by
  rw [extensionPrimeEq1033]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1039 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1039 :
    supportQrMaskWords 1039 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1039).take 11 := by
  rfl

theorem baseSupportPrimeMem1039 :
    1039 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1039 :
    supportExtensionPrime 1039 = 1049 := by
  rfl

theorem extensionSemanticPrime1039 :
    Nat.Prime (supportExtensionPrime 1039) ∧
      1039 < supportExtensionPrime 1039 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1039 < q → supportExtensionPrime 1039 ≤ q := by
  rw [extensionPrimeEq1039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1049 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1049 :
    supportQrMaskWords 1049 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1049).take 11 := by
  rfl

theorem baseSupportPrimeMem1049 :
    1049 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1049 :
    supportExtensionPrime 1049 = 1051 := by
  rfl

theorem extensionSemanticPrime1049 :
    Nat.Prime (supportExtensionPrime 1049) ∧
      1049 < supportExtensionPrime 1049 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1049 < q → supportExtensionPrime 1049 ≤ q := by
  rw [extensionPrimeEq1049]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1051 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1051 :
    supportQrMaskWords 1051 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1051).take 11 := by
  rfl

theorem baseSupportPrimeMem1051 :
    1051 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1051 :
    supportExtensionPrime 1051 = 1061 := by
  rfl

theorem extensionSemanticPrime1051 :
    Nat.Prime (supportExtensionPrime 1051) ∧
      1051 < supportExtensionPrime 1051 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1051 < q → supportExtensionPrime 1051 ≤ q := by
  rw [extensionPrimeEq1051]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1061 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1061 :
    supportQrMaskWords 1061 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1061).take 11 := by
  rfl

theorem baseSupportPrimeMem1061 :
    1061 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1061 :
    supportExtensionPrime 1061 = 1063 := by
  rfl

theorem extensionSemanticPrime1061 :
    Nat.Prime (supportExtensionPrime 1061) ∧
      1061 < supportExtensionPrime 1061 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1061 < q → supportExtensionPrime 1061 ≤ q := by
  rw [extensionPrimeEq1061]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1063 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0015
    {p : ℕ}
    (hLower : 992 ≤ p) (hUpper : p ≤ 1061)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime997
  · exact maskSemanticPrime1009
  · exact maskSemanticPrime1013
  · exact maskSemanticPrime1019
  · exact maskSemanticPrime1021
  · exact maskSemanticPrime1031
  · exact maskSemanticPrime1033
  · exact maskSemanticPrime1039
  · exact maskSemanticPrime1049
  · exact maskSemanticPrime1051
  · exact maskSemanticPrime1061

theorem baseSupportPrimeMemGroup0015
    {p : ℕ}
    (hLower : 992 ≤ p) (hUpper : p ≤ 1061)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem997
  · exact baseSupportPrimeMem1009
  · exact baseSupportPrimeMem1013
  · exact baseSupportPrimeMem1019
  · exact baseSupportPrimeMem1021
  · exact baseSupportPrimeMem1031
  · exact baseSupportPrimeMem1033
  · exact baseSupportPrimeMem1039
  · exact baseSupportPrimeMem1049
  · exact baseSupportPrimeMem1051
  · exact baseSupportPrimeMem1061

theorem extensionSemanticGroup0015
    {p : ℕ}
    (hLower : 992 ≤ p) (hUpper : p ≤ 1061)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime997
  · exact extensionSemanticPrime1009
  · exact extensionSemanticPrime1013
  · exact extensionSemanticPrime1019
  · exact extensionSemanticPrime1021
  · exact extensionSemanticPrime1031
  · exact extensionSemanticPrime1033
  · exact extensionSemanticPrime1039
  · exact extensionSemanticPrime1049
  · exact extensionSemanticPrime1051
  · exact extensionSemanticPrime1061

end Erdos848.GeneratedTailGlobalPureSupportCoverage
