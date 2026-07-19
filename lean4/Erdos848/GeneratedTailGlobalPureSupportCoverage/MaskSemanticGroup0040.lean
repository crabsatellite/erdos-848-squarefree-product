import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3109 :
    supportQrMaskWords 3109 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3109).take 11 := by
  rfl

theorem baseSupportPrimeMem3109 :
    3109 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3109 :
    supportExtensionPrime 3109 = 3119 := by
  rfl

theorem extensionSemanticPrime3109 :
    Nat.Prime (supportExtensionPrime 3109) ∧
      3109 < supportExtensionPrime 3109 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3109 < q → supportExtensionPrime 3109 ≤ q := by
  rw [extensionPrimeEq3109]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3119 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3119 :
    supportQrMaskWords 3119 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3119).take 11 := by
  rfl

theorem baseSupportPrimeMem3119 :
    3119 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3119 :
    supportExtensionPrime 3119 = 3121 := by
  rfl

theorem extensionSemanticPrime3119 :
    Nat.Prime (supportExtensionPrime 3119) ∧
      3119 < supportExtensionPrime 3119 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3119 < q → supportExtensionPrime 3119 ≤ q := by
  rw [extensionPrimeEq3119]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3121 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3121 :
    supportQrMaskWords 3121 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3121).take 11 := by
  rfl

theorem baseSupportPrimeMem3121 :
    3121 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3121 :
    supportExtensionPrime 3121 = 3137 := by
  rfl

theorem extensionSemanticPrime3121 :
    Nat.Prime (supportExtensionPrime 3121) ∧
      3121 < supportExtensionPrime 3121 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3121 < q → supportExtensionPrime 3121 ≤ q := by
  rw [extensionPrimeEq3121]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3137 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3137 :
    supportQrMaskWords 3137 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3137).take 11 := by
  rfl

theorem baseSupportPrimeMem3137 :
    3137 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3137 :
    supportExtensionPrime 3137 = 3163 := by
  rfl

theorem extensionSemanticPrime3137 :
    Nat.Prime (supportExtensionPrime 3137) ∧
      3137 < supportExtensionPrime 3137 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3137 < q → supportExtensionPrime 3137 ≤ q := by
  rw [extensionPrimeEq3137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3163 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3163 :
    supportQrMaskWords 3163 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3163).take 11 := by
  rfl

theorem baseSupportPrimeMem3163 :
    3163 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3163 :
    supportExtensionPrime 3163 = 3167 := by
  rfl

theorem extensionSemanticPrime3163 :
    Nat.Prime (supportExtensionPrime 3163) ∧
      3163 < supportExtensionPrime 3163 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3163 < q → supportExtensionPrime 3163 ≤ q := by
  rw [extensionPrimeEq3163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3167 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3167 :
    supportQrMaskWords 3167 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3167).take 11 := by
  rfl

theorem baseSupportPrimeMem3167 :
    3167 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3167 :
    supportExtensionPrime 3167 = 3169 := by
  rfl

theorem extensionSemanticPrime3167 :
    Nat.Prime (supportExtensionPrime 3167) ∧
      3167 < supportExtensionPrime 3167 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3167 < q → supportExtensionPrime 3167 ≤ q := by
  rw [extensionPrimeEq3167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3169 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3169 :
    supportQrMaskWords 3169 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3169).take 11 := by
  rfl

theorem baseSupportPrimeMem3169 :
    3169 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3169 :
    supportExtensionPrime 3169 = 3181 := by
  rfl

theorem extensionSemanticPrime3169 :
    Nat.Prime (supportExtensionPrime 3169) ∧
      3169 < supportExtensionPrime 3169 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3169 < q → supportExtensionPrime 3169 ≤ q := by
  rw [extensionPrimeEq3169]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3181 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3181 :
    supportQrMaskWords 3181 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3181).take 11 := by
  rfl

theorem baseSupportPrimeMem3181 :
    3181 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3181 :
    supportExtensionPrime 3181 = 3187 := by
  rfl

theorem extensionSemanticPrime3181 :
    Nat.Prime (supportExtensionPrime 3181) ∧
      3181 < supportExtensionPrime 3181 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3181 < q → supportExtensionPrime 3181 ≤ q := by
  rw [extensionPrimeEq3181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3187 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3187 :
    supportQrMaskWords 3187 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3187).take 11 := by
  rfl

theorem baseSupportPrimeMem3187 :
    3187 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3187 :
    supportExtensionPrime 3187 = 3191 := by
  rfl

theorem extensionSemanticPrime3187 :
    Nat.Prime (supportExtensionPrime 3187) ∧
      3187 < supportExtensionPrime 3187 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3187 < q → supportExtensionPrime 3187 ≤ q := by
  rw [extensionPrimeEq3187]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3191 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3191 :
    supportQrMaskWords 3191 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3191).take 11 := by
  rfl

theorem baseSupportPrimeMem3191 :
    3191 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3191 :
    supportExtensionPrime 3191 = 3203 := by
  rfl

theorem extensionSemanticPrime3191 :
    Nat.Prime (supportExtensionPrime 3191) ∧
      3191 < supportExtensionPrime 3191 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3191 < q → supportExtensionPrime 3191 ≤ q := by
  rw [extensionPrimeEq3191]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3203 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3203 :
    supportQrMaskWords 3203 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3203).take 11 := by
  rfl

theorem baseSupportPrimeMem3203 :
    3203 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3203 :
    supportExtensionPrime 3203 = 3209 := by
  rfl

theorem extensionSemanticPrime3203 :
    Nat.Prime (supportExtensionPrime 3203) ∧
      3203 < supportExtensionPrime 3203 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3203 < q → supportExtensionPrime 3203 ≤ q := by
  rw [extensionPrimeEq3203]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3209 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0040
    {p : ℕ}
    (hLower : 3090 ≤ p) (hUpper : p ≤ 3203)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3109
  · exact maskSemanticPrime3119
  · exact maskSemanticPrime3121
  · exact maskSemanticPrime3137
  · exact maskSemanticPrime3163
  · exact maskSemanticPrime3167
  · exact maskSemanticPrime3169
  · exact maskSemanticPrime3181
  · exact maskSemanticPrime3187
  · exact maskSemanticPrime3191
  · exact maskSemanticPrime3203

theorem baseSupportPrimeMemGroup0040
    {p : ℕ}
    (hLower : 3090 ≤ p) (hUpper : p ≤ 3203)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3109
  · exact baseSupportPrimeMem3119
  · exact baseSupportPrimeMem3121
  · exact baseSupportPrimeMem3137
  · exact baseSupportPrimeMem3163
  · exact baseSupportPrimeMem3167
  · exact baseSupportPrimeMem3169
  · exact baseSupportPrimeMem3181
  · exact baseSupportPrimeMem3187
  · exact baseSupportPrimeMem3191
  · exact baseSupportPrimeMem3203

theorem extensionSemanticGroup0040
    {p : ℕ}
    (hLower : 3090 ≤ p) (hUpper : p ≤ 3203)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime3109
  · exact extensionSemanticPrime3119
  · exact extensionSemanticPrime3121
  · exact extensionSemanticPrime3137
  · exact extensionSemanticPrime3163
  · exact extensionSemanticPrime3167
  · exact extensionSemanticPrime3169
  · exact extensionSemanticPrime3181
  · exact extensionSemanticPrime3187
  · exact extensionSemanticPrime3191
  · exact extensionSemanticPrime3203

end Erdos848.GeneratedTailGlobalPureSupportCoverage
