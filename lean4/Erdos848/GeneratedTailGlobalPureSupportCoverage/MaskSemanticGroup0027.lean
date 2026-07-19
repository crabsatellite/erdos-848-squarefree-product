import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime1987 :
    supportQrMaskWords 1987 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1987).take 11 := by
  rfl

theorem baseSupportPrimeMem1987 :
    1987 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1987 :
    supportExtensionPrime 1987 = 1993 := by
  rfl

theorem extensionSemanticPrime1987 :
    Nat.Prime (supportExtensionPrime 1987) ∧
      1987 < supportExtensionPrime 1987 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1987 < q → supportExtensionPrime 1987 ≤ q := by
  rw [extensionPrimeEq1987]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1993 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1993 :
    supportQrMaskWords 1993 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1993).take 11 := by
  rfl

theorem baseSupportPrimeMem1993 :
    1993 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1993 :
    supportExtensionPrime 1993 = 1997 := by
  rfl

theorem extensionSemanticPrime1993 :
    Nat.Prime (supportExtensionPrime 1993) ∧
      1993 < supportExtensionPrime 1993 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1993 < q → supportExtensionPrime 1993 ≤ q := by
  rw [extensionPrimeEq1993]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1997 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1997 :
    supportQrMaskWords 1997 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1997).take 11 := by
  rfl

theorem baseSupportPrimeMem1997 :
    1997 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1997 :
    supportExtensionPrime 1997 = 1999 := by
  rfl

theorem extensionSemanticPrime1997 :
    Nat.Prime (supportExtensionPrime 1997) ∧
      1997 < supportExtensionPrime 1997 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1997 < q → supportExtensionPrime 1997 ≤ q := by
  rw [extensionPrimeEq1997]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 1999 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime1999 :
    supportQrMaskWords 1999 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        1999).take 11 := by
  rfl

theorem baseSupportPrimeMem1999 :
    1999 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq1999 :
    supportExtensionPrime 1999 = 2003 := by
  rfl

theorem extensionSemanticPrime1999 :
    Nat.Prime (supportExtensionPrime 1999) ∧
      1999 < supportExtensionPrime 1999 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        1999 < q → supportExtensionPrime 1999 ≤ q := by
  rw [extensionPrimeEq1999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2003 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2003 :
    supportQrMaskWords 2003 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2003).take 11 := by
  rfl

theorem baseSupportPrimeMem2003 :
    2003 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2003 :
    supportExtensionPrime 2003 = 2011 := by
  rfl

theorem extensionSemanticPrime2003 :
    Nat.Prime (supportExtensionPrime 2003) ∧
      2003 < supportExtensionPrime 2003 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2003 < q → supportExtensionPrime 2003 ≤ q := by
  rw [extensionPrimeEq2003]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2011 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2011 :
    supportQrMaskWords 2011 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2011).take 11 := by
  rfl

theorem baseSupportPrimeMem2011 :
    2011 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2011 :
    supportExtensionPrime 2011 = 2017 := by
  rfl

theorem extensionSemanticPrime2011 :
    Nat.Prime (supportExtensionPrime 2011) ∧
      2011 < supportExtensionPrime 2011 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2011 < q → supportExtensionPrime 2011 ≤ q := by
  rw [extensionPrimeEq2011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2017 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2017 :
    supportQrMaskWords 2017 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2017).take 11 := by
  rfl

theorem baseSupportPrimeMem2017 :
    2017 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2017 :
    supportExtensionPrime 2017 = 2027 := by
  rfl

theorem extensionSemanticPrime2017 :
    Nat.Prime (supportExtensionPrime 2017) ∧
      2017 < supportExtensionPrime 2017 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2017 < q → supportExtensionPrime 2017 ≤ q := by
  rw [extensionPrimeEq2017]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2027 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2027 :
    supportQrMaskWords 2027 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2027).take 11 := by
  rfl

theorem baseSupportPrimeMem2027 :
    2027 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2027 :
    supportExtensionPrime 2027 = 2029 := by
  rfl

theorem extensionSemanticPrime2027 :
    Nat.Prime (supportExtensionPrime 2027) ∧
      2027 < supportExtensionPrime 2027 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2027 < q → supportExtensionPrime 2027 ≤ q := by
  rw [extensionPrimeEq2027]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2029 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2029 :
    supportQrMaskWords 2029 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2029).take 11 := by
  rfl

theorem baseSupportPrimeMem2029 :
    2029 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2029 :
    supportExtensionPrime 2029 = 2039 := by
  rfl

theorem extensionSemanticPrime2029 :
    Nat.Prime (supportExtensionPrime 2029) ∧
      2029 < supportExtensionPrime 2029 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2029 < q → supportExtensionPrime 2029 ≤ q := by
  rw [extensionPrimeEq2029]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2039 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2039 :
    supportQrMaskWords 2039 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2039).take 11 := by
  rfl

theorem baseSupportPrimeMem2039 :
    2039 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2039 :
    supportExtensionPrime 2039 = 2053 := by
  rfl

theorem extensionSemanticPrime2039 :
    Nat.Prime (supportExtensionPrime 2039) ∧
      2039 < supportExtensionPrime 2039 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2039 < q → supportExtensionPrime 2039 ≤ q := by
  rw [extensionPrimeEq2039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2053 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime2053 :
    supportQrMaskWords 2053 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        2053).take 11 := by
  rfl

theorem baseSupportPrimeMem2053 :
    2053 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq2053 :
    supportExtensionPrime 2053 = 2063 := by
  rfl

theorem extensionSemanticPrime2053 :
    Nat.Prime (supportExtensionPrime 2053) ∧
      2053 < supportExtensionPrime 2053 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        2053 < q → supportExtensionPrime 2053 ≤ q := by
  rw [extensionPrimeEq2053]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 2063 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0027
    {p : ℕ}
    (hLower : 1980 ≤ p) (hUpper : p ≤ 2053)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime1987
  · exact maskSemanticPrime1993
  · exact maskSemanticPrime1997
  · exact maskSemanticPrime1999
  · exact maskSemanticPrime2003
  · exact maskSemanticPrime2011
  · exact maskSemanticPrime2017
  · exact maskSemanticPrime2027
  · exact maskSemanticPrime2029
  · exact maskSemanticPrime2039
  · exact maskSemanticPrime2053

theorem baseSupportPrimeMemGroup0027
    {p : ℕ}
    (hLower : 1980 ≤ p) (hUpper : p ≤ 2053)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem1987
  · exact baseSupportPrimeMem1993
  · exact baseSupportPrimeMem1997
  · exact baseSupportPrimeMem1999
  · exact baseSupportPrimeMem2003
  · exact baseSupportPrimeMem2011
  · exact baseSupportPrimeMem2017
  · exact baseSupportPrimeMem2027
  · exact baseSupportPrimeMem2029
  · exact baseSupportPrimeMem2039
  · exact baseSupportPrimeMem2053

theorem extensionSemanticGroup0027
    {p : ℕ}
    (hLower : 1980 ≤ p) (hUpper : p ≤ 2053)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime1987
  · exact extensionSemanticPrime1993
  · exact extensionSemanticPrime1997
  · exact extensionSemanticPrime1999
  · exact extensionSemanticPrime2003
  · exact extensionSemanticPrime2011
  · exact extensionSemanticPrime2017
  · exact extensionSemanticPrime2027
  · exact extensionSemanticPrime2029
  · exact extensionSemanticPrime2039
  · exact extensionSemanticPrime2053

end Erdos848.GeneratedTailGlobalPureSupportCoverage
