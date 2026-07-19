import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime2063 :
    supportQrMaskWords 2063 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2063).take 11 := by
  rfl

theorem baseSupportPrimeMem2063 :
    2063 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2063 :
    supportExtensionPrime 2063 = 2069 := by
  rfl

theorem extensionSemanticPrime2063 :
    Nat.Prime (supportExtensionPrime 2063) ∧
      2063 < supportExtensionPrime 2063 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2063 < q → supportExtensionPrime 2063 ≤ q := by
  rw [extensionPrimeEq2063]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2069 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2069 :
    supportQrMaskWords 2069 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2069).take 11 := by
  rfl

theorem baseSupportPrimeMem2069 :
    2069 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2069 :
    supportExtensionPrime 2069 = 2081 := by
  rfl

theorem extensionSemanticPrime2069 :
    Nat.Prime (supportExtensionPrime 2069) ∧
      2069 < supportExtensionPrime 2069 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2069 < q → supportExtensionPrime 2069 ≤ q := by
  rw [extensionPrimeEq2069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2081 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2081 :
    supportQrMaskWords 2081 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2081).take 11 := by
  rfl

theorem baseSupportPrimeMem2081 :
    2081 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2081 :
    supportExtensionPrime 2081 = 2083 := by
  rfl

theorem extensionSemanticPrime2081 :
    Nat.Prime (supportExtensionPrime 2081) ∧
      2081 < supportExtensionPrime 2081 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2081 < q → supportExtensionPrime 2081 ≤ q := by
  rw [extensionPrimeEq2081]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2083 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2083 :
    supportQrMaskWords 2083 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2083).take 11 := by
  rfl

theorem baseSupportPrimeMem2083 :
    2083 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2083 :
    supportExtensionPrime 2083 = 2087 := by
  rfl

theorem extensionSemanticPrime2083 :
    Nat.Prime (supportExtensionPrime 2083) ∧
      2083 < supportExtensionPrime 2083 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2083 < q → supportExtensionPrime 2083 ≤ q := by
  rw [extensionPrimeEq2083]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2087 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2087 :
    supportQrMaskWords 2087 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2087).take 11 := by
  rfl

theorem baseSupportPrimeMem2087 :
    2087 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2087 :
    supportExtensionPrime 2087 = 2089 := by
  rfl

theorem extensionSemanticPrime2087 :
    Nat.Prime (supportExtensionPrime 2087) ∧
      2087 < supportExtensionPrime 2087 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2087 < q → supportExtensionPrime 2087 ≤ q := by
  rw [extensionPrimeEq2087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2089 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2089 :
    supportQrMaskWords 2089 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2089).take 11 := by
  rfl

theorem baseSupportPrimeMem2089 :
    2089 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2089 :
    supportExtensionPrime 2089 = 2099 := by
  rfl

theorem extensionSemanticPrime2089 :
    Nat.Prime (supportExtensionPrime 2089) ∧
      2089 < supportExtensionPrime 2089 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2089 < q → supportExtensionPrime 2089 ≤ q := by
  rw [extensionPrimeEq2089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2099 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2099 :
    supportQrMaskWords 2099 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2099).take 11 := by
  rfl

theorem baseSupportPrimeMem2099 :
    2099 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2099 :
    supportExtensionPrime 2099 = 2111 := by
  rfl

theorem extensionSemanticPrime2099 :
    Nat.Prime (supportExtensionPrime 2099) ∧
      2099 < supportExtensionPrime 2099 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2099 < q → supportExtensionPrime 2099 ≤ q := by
  rw [extensionPrimeEq2099]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2111 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2111 :
    supportQrMaskWords 2111 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2111).take 11 := by
  rfl

theorem baseSupportPrimeMem2111 :
    2111 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2111 :
    supportExtensionPrime 2111 = 2113 := by
  rfl

theorem extensionSemanticPrime2111 :
    Nat.Prime (supportExtensionPrime 2111) ∧
      2111 < supportExtensionPrime 2111 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2111 < q → supportExtensionPrime 2111 ≤ q := by
  rw [extensionPrimeEq2111]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2113 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2113 :
    supportQrMaskWords 2113 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2113).take 11 := by
  rfl

theorem baseSupportPrimeMem2113 :
    2113 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2113 :
    supportExtensionPrime 2113 = 2129 := by
  rfl

theorem extensionSemanticPrime2113 :
    Nat.Prime (supportExtensionPrime 2113) ∧
      2113 < supportExtensionPrime 2113 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2113 < q → supportExtensionPrime 2113 ≤ q := by
  rw [extensionPrimeEq2113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2129 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2129 :
    supportQrMaskWords 2129 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2129).take 11 := by
  rfl

theorem baseSupportPrimeMem2129 :
    2129 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2129 :
    supportExtensionPrime 2129 = 2131 := by
  rfl

theorem extensionSemanticPrime2129 :
    Nat.Prime (supportExtensionPrime 2129) ∧
      2129 < supportExtensionPrime 2129 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2129 < q → supportExtensionPrime 2129 ≤ q := by
  rw [extensionPrimeEq2129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2131 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2131 :
    supportQrMaskWords 2131 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2131).take 11 := by
  rfl

theorem baseSupportPrimeMem2131 :
    2131 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2131 :
    supportExtensionPrime 2131 = 2137 := by
  rfl

theorem extensionSemanticPrime2131 :
    Nat.Prime (supportExtensionPrime 2131) ∧
      2131 < supportExtensionPrime 2131 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2131 < q → supportExtensionPrime 2131 ≤ q := by
  rw [extensionPrimeEq2131]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2137 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0028
    {p : ℕ}
    (hLower : 2054 ≤ p) (hUpper : p ≤ 2131)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime2063
  · exact maskSemanticPrime2069
  · exact maskSemanticPrime2081
  · exact maskSemanticPrime2083
  · exact maskSemanticPrime2087
  · exact maskSemanticPrime2089
  · exact maskSemanticPrime2099
  · exact maskSemanticPrime2111
  · exact maskSemanticPrime2113
  · exact maskSemanticPrime2129
  · exact maskSemanticPrime2131

theorem baseSupportPrimeMemGroup0028
    {p : ℕ}
    (hLower : 2054 ≤ p) (hUpper : p ≤ 2131)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem2063
  · exact baseSupportPrimeMem2069
  · exact baseSupportPrimeMem2081
  · exact baseSupportPrimeMem2083
  · exact baseSupportPrimeMem2087
  · exact baseSupportPrimeMem2089
  · exact baseSupportPrimeMem2099
  · exact baseSupportPrimeMem2111
  · exact baseSupportPrimeMem2113
  · exact baseSupportPrimeMem2129
  · exact baseSupportPrimeMem2131

theorem extensionSemanticGroup0028
    {p : ℕ}
    (hLower : 2054 ≤ p) (hUpper : p ≤ 2131)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime2063
  · exact extensionSemanticPrime2069
  · exact extensionSemanticPrime2081
  · exact extensionSemanticPrime2083
  · exact extensionSemanticPrime2087
  · exact extensionSemanticPrime2089
  · exact extensionSemanticPrime2099
  · exact extensionSemanticPrime2111
  · exact extensionSemanticPrime2113
  · exact extensionSemanticPrime2129
  · exact extensionSemanticPrime2131

end Erdos848.GeneratedTailGlobalPureSupportCoverage
