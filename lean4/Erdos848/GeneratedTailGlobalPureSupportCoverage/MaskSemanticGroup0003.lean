import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime151 :
    supportQrMaskWords 151 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        151).take 11 := by
  rfl

theorem baseSupportPrimeMem151 :
    151 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq151 :
    supportExtensionPrime 151 = 157 := by
  rfl

theorem extensionSemanticPrime151 :
    Nat.Prime (supportExtensionPrime 151) ∧
      151 < supportExtensionPrime 151 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        151 < q → supportExtensionPrime 151 ≤ q := by
  rw [extensionPrimeEq151]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 157 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime157 :
    supportQrMaskWords 157 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        157).take 11 := by
  rfl

theorem baseSupportPrimeMem157 :
    157 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq157 :
    supportExtensionPrime 157 = 163 := by
  rfl

theorem extensionSemanticPrime157 :
    Nat.Prime (supportExtensionPrime 157) ∧
      157 < supportExtensionPrime 157 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        157 < q → supportExtensionPrime 157 ≤ q := by
  rw [extensionPrimeEq157]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 163 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime163 :
    supportQrMaskWords 163 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        163).take 11 := by
  rfl

theorem baseSupportPrimeMem163 :
    163 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq163 :
    supportExtensionPrime 163 = 167 := by
  rfl

theorem extensionSemanticPrime163 :
    Nat.Prime (supportExtensionPrime 163) ∧
      163 < supportExtensionPrime 163 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        163 < q → supportExtensionPrime 163 ≤ q := by
  rw [extensionPrimeEq163]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 167 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime167 :
    supportQrMaskWords 167 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        167).take 11 := by
  rfl

theorem baseSupportPrimeMem167 :
    167 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq167 :
    supportExtensionPrime 167 = 173 := by
  rfl

theorem extensionSemanticPrime167 :
    Nat.Prime (supportExtensionPrime 167) ∧
      167 < supportExtensionPrime 167 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        167 < q → supportExtensionPrime 167 ≤ q := by
  rw [extensionPrimeEq167]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 173 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime173 :
    supportQrMaskWords 173 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        173).take 11 := by
  rfl

theorem baseSupportPrimeMem173 :
    173 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq173 :
    supportExtensionPrime 173 = 179 := by
  rfl

theorem extensionSemanticPrime173 :
    Nat.Prime (supportExtensionPrime 173) ∧
      173 < supportExtensionPrime 173 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        173 < q → supportExtensionPrime 173 ≤ q := by
  rw [extensionPrimeEq173]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 179 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime179 :
    supportQrMaskWords 179 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        179).take 11 := by
  rfl

theorem baseSupportPrimeMem179 :
    179 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq179 :
    supportExtensionPrime 179 = 181 := by
  rfl

theorem extensionSemanticPrime179 :
    Nat.Prime (supportExtensionPrime 179) ∧
      179 < supportExtensionPrime 179 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        179 < q → supportExtensionPrime 179 ≤ q := by
  rw [extensionPrimeEq179]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 181 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime181 :
    supportQrMaskWords 181 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        181).take 11 := by
  rfl

theorem baseSupportPrimeMem181 :
    181 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq181 :
    supportExtensionPrime 181 = 191 := by
  rfl

theorem extensionSemanticPrime181 :
    Nat.Prime (supportExtensionPrime 181) ∧
      181 < supportExtensionPrime 181 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        181 < q → supportExtensionPrime 181 ≤ q := by
  rw [extensionPrimeEq181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 191 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime191 :
    supportQrMaskWords 191 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        191).take 11 := by
  rfl

theorem baseSupportPrimeMem191 :
    191 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq191 :
    supportExtensionPrime 191 = 193 := by
  rfl

theorem extensionSemanticPrime191 :
    Nat.Prime (supportExtensionPrime 191) ∧
      191 < supportExtensionPrime 191 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        191 < q → supportExtensionPrime 191 ≤ q := by
  rw [extensionPrimeEq191]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 193 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime193 :
    supportQrMaskWords 193 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        193).take 11 := by
  rfl

theorem baseSupportPrimeMem193 :
    193 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq193 :
    supportExtensionPrime 193 = 197 := by
  rfl

theorem extensionSemanticPrime193 :
    Nat.Prime (supportExtensionPrime 193) ∧
      193 < supportExtensionPrime 193 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        193 < q → supportExtensionPrime 193 ≤ q := by
  rw [extensionPrimeEq193]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 197 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime197 :
    supportQrMaskWords 197 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        197).take 11 := by
  rfl

theorem baseSupportPrimeMem197 :
    197 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq197 :
    supportExtensionPrime 197 = 199 := by
  rfl

theorem extensionSemanticPrime197 :
    Nat.Prime (supportExtensionPrime 197) ∧
      197 < supportExtensionPrime 197 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        197 < q → supportExtensionPrime 197 ≤ q := by
  rw [extensionPrimeEq197]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 199 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime199 :
    supportQrMaskWords 199 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        199).take 11 := by
  rfl

theorem baseSupportPrimeMem199 :
    199 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq199 :
    supportExtensionPrime 199 = 211 := by
  rfl

theorem extensionSemanticPrime199 :
    Nat.Prime (supportExtensionPrime 199) ∧
      199 < supportExtensionPrime 199 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        199 < q → supportExtensionPrime 199 ≤ q := by
  rw [extensionPrimeEq199]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 211 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0003
    {p : ℕ}
    (hLower : 150 ≤ p) (hUpper : p ≤ 199)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime151
  · exact maskSemanticPrime157
  · exact maskSemanticPrime163
  · exact maskSemanticPrime167
  · exact maskSemanticPrime173
  · exact maskSemanticPrime179
  · exact maskSemanticPrime181
  · exact maskSemanticPrime191
  · exact maskSemanticPrime193
  · exact maskSemanticPrime197
  · exact maskSemanticPrime199

theorem baseSupportPrimeMemGroup0003
    {p : ℕ}
    (hLower : 150 ≤ p) (hUpper : p ≤ 199)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem151
  · exact baseSupportPrimeMem157
  · exact baseSupportPrimeMem163
  · exact baseSupportPrimeMem167
  · exact baseSupportPrimeMem173
  · exact baseSupportPrimeMem179
  · exact baseSupportPrimeMem181
  · exact baseSupportPrimeMem191
  · exact baseSupportPrimeMem193
  · exact baseSupportPrimeMem197
  · exact baseSupportPrimeMem199

theorem extensionSemanticGroup0003
    {p : ℕ}
    (hLower : 150 ≤ p) (hUpper : p ≤ 199)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime151
  · exact extensionSemanticPrime157
  · exact extensionSemanticPrime163
  · exact extensionSemanticPrime167
  · exact extensionSemanticPrime173
  · exact extensionSemanticPrime179
  · exact extensionSemanticPrime181
  · exact extensionSemanticPrime191
  · exact extensionSemanticPrime193
  · exact extensionSemanticPrime197
  · exact extensionSemanticPrime199

end Erdos848.GeneratedTailGlobalPureSupportCoverage
