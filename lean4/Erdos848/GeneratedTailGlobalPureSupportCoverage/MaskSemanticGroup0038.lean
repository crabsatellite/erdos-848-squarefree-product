import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2909 :
    supportQrMaskWords 2909 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2909).take 11 := by
  rfl

theorem baseSupportPrimeMem2909 :
    2909 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2909 :
    supportExtensionPrime 2909 = 2917 := by
  rfl

theorem extensionSemanticPrime2909 :
    Nat.Prime (supportExtensionPrime 2909) ∧
      2909 < supportExtensionPrime 2909 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2909 < q → supportExtensionPrime 2909 ≤ q := by
  rw [extensionPrimeEq2909]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2917 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2917 :
    supportQrMaskWords 2917 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2917).take 11 := by
  rfl

theorem baseSupportPrimeMem2917 :
    2917 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2917 :
    supportExtensionPrime 2917 = 2927 := by
  rfl

theorem extensionSemanticPrime2917 :
    Nat.Prime (supportExtensionPrime 2917) ∧
      2917 < supportExtensionPrime 2917 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2917 < q → supportExtensionPrime 2917 ≤ q := by
  rw [extensionPrimeEq2917]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2927 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2927 :
    supportQrMaskWords 2927 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2927).take 11 := by
  rfl

theorem baseSupportPrimeMem2927 :
    2927 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2927 :
    supportExtensionPrime 2927 = 2939 := by
  rfl

theorem extensionSemanticPrime2927 :
    Nat.Prime (supportExtensionPrime 2927) ∧
      2927 < supportExtensionPrime 2927 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2927 < q → supportExtensionPrime 2927 ≤ q := by
  rw [extensionPrimeEq2927]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2939 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2939 :
    supportQrMaskWords 2939 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2939).take 11 := by
  rfl

theorem baseSupportPrimeMem2939 :
    2939 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2939 :
    supportExtensionPrime 2939 = 2953 := by
  rfl

theorem extensionSemanticPrime2939 :
    Nat.Prime (supportExtensionPrime 2939) ∧
      2939 < supportExtensionPrime 2939 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2939 < q → supportExtensionPrime 2939 ≤ q := by
  rw [extensionPrimeEq2939]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2953 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2953 :
    supportQrMaskWords 2953 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2953).take 11 := by
  rfl

theorem baseSupportPrimeMem2953 :
    2953 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2953 :
    supportExtensionPrime 2953 = 2957 := by
  rfl

theorem extensionSemanticPrime2953 :
    Nat.Prime (supportExtensionPrime 2953) ∧
      2953 < supportExtensionPrime 2953 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2953 < q → supportExtensionPrime 2953 ≤ q := by
  rw [extensionPrimeEq2953]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2957 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2957 :
    supportQrMaskWords 2957 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2957).take 11 := by
  rfl

theorem baseSupportPrimeMem2957 :
    2957 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2957 :
    supportExtensionPrime 2957 = 2963 := by
  rfl

theorem extensionSemanticPrime2957 :
    Nat.Prime (supportExtensionPrime 2957) ∧
      2957 < supportExtensionPrime 2957 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2957 < q → supportExtensionPrime 2957 ≤ q := by
  rw [extensionPrimeEq2957]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2963 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2963 :
    supportQrMaskWords 2963 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2963).take 11 := by
  rfl

theorem baseSupportPrimeMem2963 :
    2963 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2963 :
    supportExtensionPrime 2963 = 2969 := by
  rfl

theorem extensionSemanticPrime2963 :
    Nat.Prime (supportExtensionPrime 2963) ∧
      2963 < supportExtensionPrime 2963 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2963 < q → supportExtensionPrime 2963 ≤ q := by
  rw [extensionPrimeEq2963]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2969 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2969 :
    supportQrMaskWords 2969 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2969).take 11 := by
  rfl

theorem baseSupportPrimeMem2969 :
    2969 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2969 :
    supportExtensionPrime 2969 = 2971 := by
  rfl

theorem extensionSemanticPrime2969 :
    Nat.Prime (supportExtensionPrime 2969) ∧
      2969 < supportExtensionPrime 2969 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2969 < q → supportExtensionPrime 2969 ≤ q := by
  rw [extensionPrimeEq2969]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2971 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2971 :
    supportQrMaskWords 2971 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2971).take 11 := by
  rfl

theorem baseSupportPrimeMem2971 :
    2971 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2971 :
    supportExtensionPrime 2971 = 2999 := by
  rfl

theorem extensionSemanticPrime2971 :
    Nat.Prime (supportExtensionPrime 2971) ∧
      2971 < supportExtensionPrime 2971 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2971 < q → supportExtensionPrime 2971 ≤ q := by
  rw [extensionPrimeEq2971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2999 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2999 :
    supportQrMaskWords 2999 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2999).take 11 := by
  rfl

theorem baseSupportPrimeMem2999 :
    2999 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2999 :
    supportExtensionPrime 2999 = 3001 := by
  rfl

theorem extensionSemanticPrime2999 :
    Nat.Prime (supportExtensionPrime 2999) ∧
      2999 < supportExtensionPrime 2999 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2999 < q → supportExtensionPrime 2999 ≤ q := by
  rw [extensionPrimeEq2999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3001 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime3001 :
    supportQrMaskWords 3001 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3001).take 11 := by
  rfl

theorem baseSupportPrimeMem3001 :
    3001 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq3001 :
    supportExtensionPrime 3001 = 3011 := by
  rfl

theorem extensionSemanticPrime3001 :
    Nat.Prime (supportExtensionPrime 3001) ∧
      3001 < supportExtensionPrime 3001 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        3001 < q → supportExtensionPrime 3001 ≤ q := by
  rw [extensionPrimeEq3001]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 3011 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0038
    {p : ℕ}
    (hLower : 2904 ≤ p) (hUpper : p ≤ 3001)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2909
  · exact maskSemanticPrime2917
  · exact maskSemanticPrime2927
  · exact maskSemanticPrime2939
  · exact maskSemanticPrime2953
  · exact maskSemanticPrime2957
  · exact maskSemanticPrime2963
  · exact maskSemanticPrime2969
  · exact maskSemanticPrime2971
  · exact maskSemanticPrime2999
  · exact maskSemanticPrime3001

theorem baseSupportPrimeMemGroup0038
    {p : ℕ}
    (hLower : 2904 ≤ p) (hUpper : p ≤ 3001)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2909
  · exact baseSupportPrimeMem2917
  · exact baseSupportPrimeMem2927
  · exact baseSupportPrimeMem2939
  · exact baseSupportPrimeMem2953
  · exact baseSupportPrimeMem2957
  · exact baseSupportPrimeMem2963
  · exact baseSupportPrimeMem2969
  · exact baseSupportPrimeMem2971
  · exact baseSupportPrimeMem2999
  · exact baseSupportPrimeMem3001

theorem extensionSemanticGroup0038
    {p : ℕ}
    (hLower : 2904 ≤ p) (hUpper : p ≤ 3001)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2909
  · exact extensionSemanticPrime2917
  · exact extensionSemanticPrime2927
  · exact extensionSemanticPrime2939
  · exact extensionSemanticPrime2953
  · exact extensionSemanticPrime2957
  · exact extensionSemanticPrime2963
  · exact extensionSemanticPrime2969
  · exact extensionSemanticPrime2971
  · exact extensionSemanticPrime2999
  · exact extensionSemanticPrime3001

end Erdos848.GeneratedTailGlobalPureSupportCoverage
