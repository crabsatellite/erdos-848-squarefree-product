import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2137 :
    supportQrMaskWords 2137 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2137).take 11 := by
  rfl

theorem baseSupportPrimeMem2137 :
    2137 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2137 :
    supportExtensionPrime 2137 = 2141 := by
  rfl

theorem extensionSemanticPrime2137 :
    Nat.Prime (supportExtensionPrime 2137) ∧
      2137 < supportExtensionPrime 2137 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2137 < q → supportExtensionPrime 2137 ≤ q := by
  rw [extensionPrimeEq2137]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2141 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2141 :
    supportQrMaskWords 2141 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2141).take 11 := by
  rfl

theorem baseSupportPrimeMem2141 :
    2141 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2141 :
    supportExtensionPrime 2141 = 2143 := by
  rfl

theorem extensionSemanticPrime2141 :
    Nat.Prime (supportExtensionPrime 2141) ∧
      2141 < supportExtensionPrime 2141 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2141 < q → supportExtensionPrime 2141 ≤ q := by
  rw [extensionPrimeEq2141]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2143 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2143 :
    supportQrMaskWords 2143 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2143).take 11 := by
  rfl

theorem baseSupportPrimeMem2143 :
    2143 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2143 :
    supportExtensionPrime 2143 = 2153 := by
  rfl

theorem extensionSemanticPrime2143 :
    Nat.Prime (supportExtensionPrime 2143) ∧
      2143 < supportExtensionPrime 2143 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2143 < q → supportExtensionPrime 2143 ≤ q := by
  rw [extensionPrimeEq2143]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2153 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2153 :
    supportQrMaskWords 2153 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2153).take 11 := by
  rfl

theorem baseSupportPrimeMem2153 :
    2153 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2153 :
    supportExtensionPrime 2153 = 2161 := by
  rfl

theorem extensionSemanticPrime2153 :
    Nat.Prime (supportExtensionPrime 2153) ∧
      2153 < supportExtensionPrime 2153 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2153 < q → supportExtensionPrime 2153 ≤ q := by
  rw [extensionPrimeEq2153]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2161 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2161 :
    supportQrMaskWords 2161 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2161).take 11 := by
  rfl

theorem baseSupportPrimeMem2161 :
    2161 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2161 :
    supportExtensionPrime 2161 = 2179 := by
  rfl

theorem extensionSemanticPrime2161 :
    Nat.Prime (supportExtensionPrime 2161) ∧
      2161 < supportExtensionPrime 2161 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2161 < q → supportExtensionPrime 2161 ≤ q := by
  rw [extensionPrimeEq2161]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2179 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2179 :
    supportQrMaskWords 2179 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2179).take 11 := by
  rfl

theorem baseSupportPrimeMem2179 :
    2179 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2179 :
    supportExtensionPrime 2179 = 2203 := by
  rfl

theorem extensionSemanticPrime2179 :
    Nat.Prime (supportExtensionPrime 2179) ∧
      2179 < supportExtensionPrime 2179 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2179 < q → supportExtensionPrime 2179 ≤ q := by
  rw [extensionPrimeEq2179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2203 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2203 :
    supportQrMaskWords 2203 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2203).take 11 := by
  rfl

theorem baseSupportPrimeMem2203 :
    2203 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2203 :
    supportExtensionPrime 2203 = 2207 := by
  rfl

theorem extensionSemanticPrime2203 :
    Nat.Prime (supportExtensionPrime 2203) ∧
      2203 < supportExtensionPrime 2203 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2203 < q → supportExtensionPrime 2203 ≤ q := by
  rw [extensionPrimeEq2203]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2207 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2207 :
    supportQrMaskWords 2207 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2207).take 11 := by
  rfl

theorem baseSupportPrimeMem2207 :
    2207 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2207 :
    supportExtensionPrime 2207 = 2213 := by
  rfl

theorem extensionSemanticPrime2207 :
    Nat.Prime (supportExtensionPrime 2207) ∧
      2207 < supportExtensionPrime 2207 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2207 < q → supportExtensionPrime 2207 ≤ q := by
  rw [extensionPrimeEq2207]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2213 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2213 :
    supportQrMaskWords 2213 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2213).take 11 := by
  rfl

theorem baseSupportPrimeMem2213 :
    2213 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2213 :
    supportExtensionPrime 2213 = 2221 := by
  rfl

theorem extensionSemanticPrime2213 :
    Nat.Prime (supportExtensionPrime 2213) ∧
      2213 < supportExtensionPrime 2213 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2213 < q → supportExtensionPrime 2213 ≤ q := by
  rw [extensionPrimeEq2213]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2221 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2221 :
    supportQrMaskWords 2221 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2221).take 11 := by
  rfl

theorem baseSupportPrimeMem2221 :
    2221 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2221 :
    supportExtensionPrime 2221 = 2237 := by
  rfl

theorem extensionSemanticPrime2221 :
    Nat.Prime (supportExtensionPrime 2221) ∧
      2221 < supportExtensionPrime 2221 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2221 < q → supportExtensionPrime 2221 ≤ q := by
  rw [extensionPrimeEq2221]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2237 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2237 :
    supportQrMaskWords 2237 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2237).take 11 := by
  rfl

theorem baseSupportPrimeMem2237 :
    2237 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2237 :
    supportExtensionPrime 2237 = 2239 := by
  rfl

theorem extensionSemanticPrime2237 :
    Nat.Prime (supportExtensionPrime 2237) ∧
      2237 < supportExtensionPrime 2237 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2237 < q → supportExtensionPrime 2237 ≤ q := by
  rw [extensionPrimeEq2237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2239 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0029
    {p : ℕ}
    (hLower : 2132 ≤ p) (hUpper : p ≤ 2237)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2137
  · exact maskSemanticPrime2141
  · exact maskSemanticPrime2143
  · exact maskSemanticPrime2153
  · exact maskSemanticPrime2161
  · exact maskSemanticPrime2179
  · exact maskSemanticPrime2203
  · exact maskSemanticPrime2207
  · exact maskSemanticPrime2213
  · exact maskSemanticPrime2221
  · exact maskSemanticPrime2237

theorem baseSupportPrimeMemGroup0029
    {p : ℕ}
    (hLower : 2132 ≤ p) (hUpper : p ≤ 2237)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2137
  · exact baseSupportPrimeMem2141
  · exact baseSupportPrimeMem2143
  · exact baseSupportPrimeMem2153
  · exact baseSupportPrimeMem2161
  · exact baseSupportPrimeMem2179
  · exact baseSupportPrimeMem2203
  · exact baseSupportPrimeMem2207
  · exact baseSupportPrimeMem2213
  · exact baseSupportPrimeMem2221
  · exact baseSupportPrimeMem2237

theorem extensionSemanticGroup0029
    {p : ℕ}
    (hLower : 2132 ≤ p) (hUpper : p ≤ 2237)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2137
  · exact extensionSemanticPrime2141
  · exact extensionSemanticPrime2143
  · exact extensionSemanticPrime2153
  · exact extensionSemanticPrime2161
  · exact extensionSemanticPrime2179
  · exact extensionSemanticPrime2203
  · exact extensionSemanticPrime2207
  · exact extensionSemanticPrime2213
  · exact extensionSemanticPrime2221
  · exact extensionSemanticPrime2237

end Erdos848.GeneratedTailGlobalPureSupportCoverage
