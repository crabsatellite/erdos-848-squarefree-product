import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime211 :
    supportQrMaskWords 211 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        211).take 11 := by
  rfl

theorem baseSupportPrimeMem211 :
    211 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq211 :
    supportExtensionPrime 211 = 223 := by
  rfl

theorem extensionSemanticPrime211 :
    Nat.Prime (supportExtensionPrime 211) ∧
      211 < supportExtensionPrime 211 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        211 < q → supportExtensionPrime 211 ≤ q := by
  rw [extensionPrimeEq211]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 223 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime223 :
    supportQrMaskWords 223 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        223).take 11 := by
  rfl

theorem baseSupportPrimeMem223 :
    223 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq223 :
    supportExtensionPrime 223 = 227 := by
  rfl

theorem extensionSemanticPrime223 :
    Nat.Prime (supportExtensionPrime 223) ∧
      223 < supportExtensionPrime 223 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        223 < q → supportExtensionPrime 223 ≤ q := by
  rw [extensionPrimeEq223]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 227 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime227 :
    supportQrMaskWords 227 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        227).take 11 := by
  rfl

theorem baseSupportPrimeMem227 :
    227 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq227 :
    supportExtensionPrime 227 = 229 := by
  rfl

theorem extensionSemanticPrime227 :
    Nat.Prime (supportExtensionPrime 227) ∧
      227 < supportExtensionPrime 227 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        227 < q → supportExtensionPrime 227 ≤ q := by
  rw [extensionPrimeEq227]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 229 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime229 :
    supportQrMaskWords 229 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        229).take 11 := by
  rfl

theorem baseSupportPrimeMem229 :
    229 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq229 :
    supportExtensionPrime 229 = 233 := by
  rfl

theorem extensionSemanticPrime229 :
    Nat.Prime (supportExtensionPrime 229) ∧
      229 < supportExtensionPrime 229 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        229 < q → supportExtensionPrime 229 ≤ q := by
  rw [extensionPrimeEq229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 233 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime233 :
    supportQrMaskWords 233 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        233).take 11 := by
  rfl

theorem baseSupportPrimeMem233 :
    233 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq233 :
    supportExtensionPrime 233 = 239 := by
  rfl

theorem extensionSemanticPrime233 :
    Nat.Prime (supportExtensionPrime 233) ∧
      233 < supportExtensionPrime 233 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        233 < q → supportExtensionPrime 233 ≤ q := by
  rw [extensionPrimeEq233]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 239 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime239 :
    supportQrMaskWords 239 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        239).take 11 := by
  rfl

theorem baseSupportPrimeMem239 :
    239 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq239 :
    supportExtensionPrime 239 = 241 := by
  rfl

theorem extensionSemanticPrime239 :
    Nat.Prime (supportExtensionPrime 239) ∧
      239 < supportExtensionPrime 239 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        239 < q → supportExtensionPrime 239 ≤ q := by
  rw [extensionPrimeEq239]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 241 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime241 :
    supportQrMaskWords 241 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        241).take 11 := by
  rfl

theorem baseSupportPrimeMem241 :
    241 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq241 :
    supportExtensionPrime 241 = 251 := by
  rfl

theorem extensionSemanticPrime241 :
    Nat.Prime (supportExtensionPrime 241) ∧
      241 < supportExtensionPrime 241 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        241 < q → supportExtensionPrime 241 ≤ q := by
  rw [extensionPrimeEq241]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 251 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime251 :
    supportQrMaskWords 251 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        251).take 11 := by
  rfl

theorem baseSupportPrimeMem251 :
    251 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq251 :
    supportExtensionPrime 251 = 257 := by
  rfl

theorem extensionSemanticPrime251 :
    Nat.Prime (supportExtensionPrime 251) ∧
      251 < supportExtensionPrime 251 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        251 < q → supportExtensionPrime 251 ≤ q := by
  rw [extensionPrimeEq251]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 257 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime257 :
    supportQrMaskWords 257 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        257).take 11 := by
  rfl

theorem baseSupportPrimeMem257 :
    257 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq257 :
    supportExtensionPrime 257 = 263 := by
  rfl

theorem extensionSemanticPrime257 :
    Nat.Prime (supportExtensionPrime 257) ∧
      257 < supportExtensionPrime 257 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        257 < q → supportExtensionPrime 257 ≤ q := by
  rw [extensionPrimeEq257]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 263 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime263 :
    supportQrMaskWords 263 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        263).take 11 := by
  rfl

theorem baseSupportPrimeMem263 :
    263 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq263 :
    supportExtensionPrime 263 = 269 := by
  rfl

theorem extensionSemanticPrime263 :
    Nat.Prime (supportExtensionPrime 263) ∧
      263 < supportExtensionPrime 263 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        263 < q → supportExtensionPrime 263 ≤ q := by
  rw [extensionPrimeEq263]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 269 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime269 :
    supportQrMaskWords 269 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        269).take 11 := by
  rfl

theorem baseSupportPrimeMem269 :
    269 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq269 :
    supportExtensionPrime 269 = 271 := by
  rfl

theorem extensionSemanticPrime269 :
    Nat.Prime (supportExtensionPrime 269) ∧
      269 < supportExtensionPrime 269 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        269 < q → supportExtensionPrime 269 ≤ q := by
  rw [extensionPrimeEq269]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 271 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0004
    {p : ℕ}
    (hLower : 200 ≤ p) (hUpper : p ≤ 269)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime211
  · exact maskSemanticPrime223
  · exact maskSemanticPrime227
  · exact maskSemanticPrime229
  · exact maskSemanticPrime233
  · exact maskSemanticPrime239
  · exact maskSemanticPrime241
  · exact maskSemanticPrime251
  · exact maskSemanticPrime257
  · exact maskSemanticPrime263
  · exact maskSemanticPrime269

theorem baseSupportPrimeMemGroup0004
    {p : ℕ}
    (hLower : 200 ≤ p) (hUpper : p ≤ 269)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem211
  · exact baseSupportPrimeMem223
  · exact baseSupportPrimeMem227
  · exact baseSupportPrimeMem229
  · exact baseSupportPrimeMem233
  · exact baseSupportPrimeMem239
  · exact baseSupportPrimeMem241
  · exact baseSupportPrimeMem251
  · exact baseSupportPrimeMem257
  · exact baseSupportPrimeMem263
  · exact baseSupportPrimeMem269

theorem extensionSemanticGroup0004
    {p : ℕ}
    (hLower : 200 ≤ p) (hUpper : p ≤ 269)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime211
  · exact extensionSemanticPrime223
  · exact extensionSemanticPrime227
  · exact extensionSemanticPrime229
  · exact extensionSemanticPrime233
  · exact extensionSemanticPrime239
  · exact extensionSemanticPrime241
  · exact extensionSemanticPrime251
  · exact extensionSemanticPrime257
  · exact extensionSemanticPrime263
  · exact extensionSemanticPrime269

end Erdos848.GeneratedTailGlobalPureSupportCoverage
