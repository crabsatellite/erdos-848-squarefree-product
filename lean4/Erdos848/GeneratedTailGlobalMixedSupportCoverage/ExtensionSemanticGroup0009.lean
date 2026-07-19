import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0009 : List ℕ :=
  [1889, 1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017, 2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131]

theorem mixedExtensionPrimeEq1889 :
    mixedSupportExtensionPrime 1889 = 1901 := by
  rfl

theorem mixedExtensionSemanticPrime1889 :
    Nat.Prime (mixedSupportExtensionPrime 1889) ∧
      1889 < mixedSupportExtensionPrime 1889 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1889 < candidate →
        mixedSupportExtensionPrime 1889 ≤ candidate := by
  rw [mixedExtensionPrimeEq1889]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1901 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1901 :
    mixedSupportExtensionPrime 1901 = 1907 := by
  rfl

theorem mixedExtensionSemanticPrime1901 :
    Nat.Prime (mixedSupportExtensionPrime 1901) ∧
      1901 < mixedSupportExtensionPrime 1901 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1901 < candidate →
        mixedSupportExtensionPrime 1901 ≤ candidate := by
  rw [mixedExtensionPrimeEq1901]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1907 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1907 :
    mixedSupportExtensionPrime 1907 = 1913 := by
  rfl

theorem mixedExtensionSemanticPrime1907 :
    Nat.Prime (mixedSupportExtensionPrime 1907) ∧
      1907 < mixedSupportExtensionPrime 1907 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1907 < candidate →
        mixedSupportExtensionPrime 1907 ≤ candidate := by
  rw [mixedExtensionPrimeEq1907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1913 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1913 :
    mixedSupportExtensionPrime 1913 = 1931 := by
  rfl

theorem mixedExtensionSemanticPrime1913 :
    Nat.Prime (mixedSupportExtensionPrime 1913) ∧
      1913 < mixedSupportExtensionPrime 1913 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1913 < candidate →
        mixedSupportExtensionPrime 1913 ≤ candidate := by
  rw [mixedExtensionPrimeEq1913]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1931 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1931 :
    mixedSupportExtensionPrime 1931 = 1933 := by
  rfl

theorem mixedExtensionSemanticPrime1931 :
    Nat.Prime (mixedSupportExtensionPrime 1931) ∧
      1931 < mixedSupportExtensionPrime 1931 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1931 < candidate →
        mixedSupportExtensionPrime 1931 ≤ candidate := by
  rw [mixedExtensionPrimeEq1931]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1933 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1933 :
    mixedSupportExtensionPrime 1933 = 1949 := by
  rfl

theorem mixedExtensionSemanticPrime1933 :
    Nat.Prime (mixedSupportExtensionPrime 1933) ∧
      1933 < mixedSupportExtensionPrime 1933 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1933 < candidate →
        mixedSupportExtensionPrime 1933 ≤ candidate := by
  rw [mixedExtensionPrimeEq1933]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1949 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1949 :
    mixedSupportExtensionPrime 1949 = 1951 := by
  rfl

theorem mixedExtensionSemanticPrime1949 :
    Nat.Prime (mixedSupportExtensionPrime 1949) ∧
      1949 < mixedSupportExtensionPrime 1949 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1949 < candidate →
        mixedSupportExtensionPrime 1949 ≤ candidate := by
  rw [mixedExtensionPrimeEq1949]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1951 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1951 :
    mixedSupportExtensionPrime 1951 = 1973 := by
  rfl

theorem mixedExtensionSemanticPrime1951 :
    Nat.Prime (mixedSupportExtensionPrime 1951) ∧
      1951 < mixedSupportExtensionPrime 1951 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1951 < candidate →
        mixedSupportExtensionPrime 1951 ≤ candidate := by
  rw [mixedExtensionPrimeEq1951]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1973 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1973 :
    mixedSupportExtensionPrime 1973 = 1979 := by
  rfl

theorem mixedExtensionSemanticPrime1973 :
    Nat.Prime (mixedSupportExtensionPrime 1973) ∧
      1973 < mixedSupportExtensionPrime 1973 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1973 < candidate →
        mixedSupportExtensionPrime 1973 ≤ candidate := by
  rw [mixedExtensionPrimeEq1973]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1979 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1979 :
    mixedSupportExtensionPrime 1979 = 1987 := by
  rfl

theorem mixedExtensionSemanticPrime1979 :
    Nat.Prime (mixedSupportExtensionPrime 1979) ∧
      1979 < mixedSupportExtensionPrime 1979 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1979 < candidate →
        mixedSupportExtensionPrime 1979 ≤ candidate := by
  rw [mixedExtensionPrimeEq1979]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1987 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1987 :
    mixedSupportExtensionPrime 1987 = 1993 := by
  rfl

theorem mixedExtensionSemanticPrime1987 :
    Nat.Prime (mixedSupportExtensionPrime 1987) ∧
      1987 < mixedSupportExtensionPrime 1987 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1987 < candidate →
        mixedSupportExtensionPrime 1987 ≤ candidate := by
  rw [mixedExtensionPrimeEq1987]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1993 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1993 :
    mixedSupportExtensionPrime 1993 = 1997 := by
  rfl

theorem mixedExtensionSemanticPrime1993 :
    Nat.Prime (mixedSupportExtensionPrime 1993) ∧
      1993 < mixedSupportExtensionPrime 1993 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1993 < candidate →
        mixedSupportExtensionPrime 1993 ≤ candidate := by
  rw [mixedExtensionPrimeEq1993]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1997 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1997 :
    mixedSupportExtensionPrime 1997 = 1999 := by
  rfl

theorem mixedExtensionSemanticPrime1997 :
    Nat.Prime (mixedSupportExtensionPrime 1997) ∧
      1997 < mixedSupportExtensionPrime 1997 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1997 < candidate →
        mixedSupportExtensionPrime 1997 ≤ candidate := by
  rw [mixedExtensionPrimeEq1997]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1999 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1999 :
    mixedSupportExtensionPrime 1999 = 2003 := by
  rfl

theorem mixedExtensionSemanticPrime1999 :
    Nat.Prime (mixedSupportExtensionPrime 1999) ∧
      1999 < mixedSupportExtensionPrime 1999 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1999 < candidate →
        mixedSupportExtensionPrime 1999 ≤ candidate := by
  rw [mixedExtensionPrimeEq1999]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2003 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2003 :
    mixedSupportExtensionPrime 2003 = 2011 := by
  rfl

theorem mixedExtensionSemanticPrime2003 :
    Nat.Prime (mixedSupportExtensionPrime 2003) ∧
      2003 < mixedSupportExtensionPrime 2003 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2003 < candidate →
        mixedSupportExtensionPrime 2003 ≤ candidate := by
  rw [mixedExtensionPrimeEq2003]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2011 :
    mixedSupportExtensionPrime 2011 = 2017 := by
  rfl

theorem mixedExtensionSemanticPrime2011 :
    Nat.Prime (mixedSupportExtensionPrime 2011) ∧
      2011 < mixedSupportExtensionPrime 2011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2011 < candidate →
        mixedSupportExtensionPrime 2011 ≤ candidate := by
  rw [mixedExtensionPrimeEq2011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2017 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2017 :
    mixedSupportExtensionPrime 2017 = 2027 := by
  rfl

theorem mixedExtensionSemanticPrime2017 :
    Nat.Prime (mixedSupportExtensionPrime 2017) ∧
      2017 < mixedSupportExtensionPrime 2017 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2017 < candidate →
        mixedSupportExtensionPrime 2017 ≤ candidate := by
  rw [mixedExtensionPrimeEq2017]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2027 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2027 :
    mixedSupportExtensionPrime 2027 = 2029 := by
  rfl

theorem mixedExtensionSemanticPrime2027 :
    Nat.Prime (mixedSupportExtensionPrime 2027) ∧
      2027 < mixedSupportExtensionPrime 2027 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2027 < candidate →
        mixedSupportExtensionPrime 2027 ≤ candidate := by
  rw [mixedExtensionPrimeEq2027]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2029 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2029 :
    mixedSupportExtensionPrime 2029 = 2039 := by
  rfl

theorem mixedExtensionSemanticPrime2029 :
    Nat.Prime (mixedSupportExtensionPrime 2029) ∧
      2029 < mixedSupportExtensionPrime 2029 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2029 < candidate →
        mixedSupportExtensionPrime 2029 ≤ candidate := by
  rw [mixedExtensionPrimeEq2029]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2039 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2039 :
    mixedSupportExtensionPrime 2039 = 2053 := by
  rfl

theorem mixedExtensionSemanticPrime2039 :
    Nat.Prime (mixedSupportExtensionPrime 2039) ∧
      2039 < mixedSupportExtensionPrime 2039 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2039 < candidate →
        mixedSupportExtensionPrime 2039 ≤ candidate := by
  rw [mixedExtensionPrimeEq2039]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2053 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2053 :
    mixedSupportExtensionPrime 2053 = 2063 := by
  rfl

theorem mixedExtensionSemanticPrime2053 :
    Nat.Prime (mixedSupportExtensionPrime 2053) ∧
      2053 < mixedSupportExtensionPrime 2053 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2053 < candidate →
        mixedSupportExtensionPrime 2053 ≤ candidate := by
  rw [mixedExtensionPrimeEq2053]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2063 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2063 :
    mixedSupportExtensionPrime 2063 = 2069 := by
  rfl

theorem mixedExtensionSemanticPrime2063 :
    Nat.Prime (mixedSupportExtensionPrime 2063) ∧
      2063 < mixedSupportExtensionPrime 2063 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2063 < candidate →
        mixedSupportExtensionPrime 2063 ≤ candidate := by
  rw [mixedExtensionPrimeEq2063]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2069 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2069 :
    mixedSupportExtensionPrime 2069 = 2081 := by
  rfl

theorem mixedExtensionSemanticPrime2069 :
    Nat.Prime (mixedSupportExtensionPrime 2069) ∧
      2069 < mixedSupportExtensionPrime 2069 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2069 < candidate →
        mixedSupportExtensionPrime 2069 ≤ candidate := by
  rw [mixedExtensionPrimeEq2069]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2081 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2081 :
    mixedSupportExtensionPrime 2081 = 2083 := by
  rfl

theorem mixedExtensionSemanticPrime2081 :
    Nat.Prime (mixedSupportExtensionPrime 2081) ∧
      2081 < mixedSupportExtensionPrime 2081 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2081 < candidate →
        mixedSupportExtensionPrime 2081 ≤ candidate := by
  rw [mixedExtensionPrimeEq2081]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2083 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2083 :
    mixedSupportExtensionPrime 2083 = 2087 := by
  rfl

theorem mixedExtensionSemanticPrime2083 :
    Nat.Prime (mixedSupportExtensionPrime 2083) ∧
      2083 < mixedSupportExtensionPrime 2083 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2083 < candidate →
        mixedSupportExtensionPrime 2083 ≤ candidate := by
  rw [mixedExtensionPrimeEq2083]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2087 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2087 :
    mixedSupportExtensionPrime 2087 = 2089 := by
  rfl

theorem mixedExtensionSemanticPrime2087 :
    Nat.Prime (mixedSupportExtensionPrime 2087) ∧
      2087 < mixedSupportExtensionPrime 2087 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2087 < candidate →
        mixedSupportExtensionPrime 2087 ≤ candidate := by
  rw [mixedExtensionPrimeEq2087]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2089 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2089 :
    mixedSupportExtensionPrime 2089 = 2099 := by
  rfl

theorem mixedExtensionSemanticPrime2089 :
    Nat.Prime (mixedSupportExtensionPrime 2089) ∧
      2089 < mixedSupportExtensionPrime 2089 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2089 < candidate →
        mixedSupportExtensionPrime 2089 ≤ candidate := by
  rw [mixedExtensionPrimeEq2089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2099 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2099 :
    mixedSupportExtensionPrime 2099 = 2111 := by
  rfl

theorem mixedExtensionSemanticPrime2099 :
    Nat.Prime (mixedSupportExtensionPrime 2099) ∧
      2099 < mixedSupportExtensionPrime 2099 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2099 < candidate →
        mixedSupportExtensionPrime 2099 ≤ candidate := by
  rw [mixedExtensionPrimeEq2099]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2111 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2111 :
    mixedSupportExtensionPrime 2111 = 2113 := by
  rfl

theorem mixedExtensionSemanticPrime2111 :
    Nat.Prime (mixedSupportExtensionPrime 2111) ∧
      2111 < mixedSupportExtensionPrime 2111 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2111 < candidate →
        mixedSupportExtensionPrime 2111 ≤ candidate := by
  rw [mixedExtensionPrimeEq2111]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2113 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2113 :
    mixedSupportExtensionPrime 2113 = 2129 := by
  rfl

theorem mixedExtensionSemanticPrime2113 :
    Nat.Prime (mixedSupportExtensionPrime 2113) ∧
      2113 < mixedSupportExtensionPrime 2113 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2113 < candidate →
        mixedSupportExtensionPrime 2113 ≤ candidate := by
  rw [mixedExtensionPrimeEq2113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2129 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2129 :
    mixedSupportExtensionPrime 2129 = 2131 := by
  rfl

theorem mixedExtensionSemanticPrime2129 :
    Nat.Prime (mixedSupportExtensionPrime 2129) ∧
      2129 < mixedSupportExtensionPrime 2129 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2129 < candidate →
        mixedSupportExtensionPrime 2129 ≤ candidate := by
  rw [mixedExtensionPrimeEq2129]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2131 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2131 :
    mixedSupportExtensionPrime 2131 = 2137 := by
  rfl

theorem mixedExtensionSemanticPrime2131 :
    Nat.Prime (mixedSupportExtensionPrime 2131) ∧
      2131 < mixedSupportExtensionPrime 2131 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2131 < candidate →
        mixedSupportExtensionPrime 2131 ≤ candidate := by
  rw [mixedExtensionPrimeEq2131]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2137 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0009_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0009) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0009, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime1889
  · exact mixedExtensionSemanticPrime1901
  · exact mixedExtensionSemanticPrime1907
  · exact mixedExtensionSemanticPrime1913
  · exact mixedExtensionSemanticPrime1931
  · exact mixedExtensionSemanticPrime1933
  · exact mixedExtensionSemanticPrime1949
  · exact mixedExtensionSemanticPrime1951
  · exact mixedExtensionSemanticPrime1973
  · exact mixedExtensionSemanticPrime1979
  · exact mixedExtensionSemanticPrime1987
  · exact mixedExtensionSemanticPrime1993
  · exact mixedExtensionSemanticPrime1997
  · exact mixedExtensionSemanticPrime1999
  · exact mixedExtensionSemanticPrime2003
  · exact mixedExtensionSemanticPrime2011
  · exact mixedExtensionSemanticPrime2017
  · exact mixedExtensionSemanticPrime2027
  · exact mixedExtensionSemanticPrime2029
  · exact mixedExtensionSemanticPrime2039
  · exact mixedExtensionSemanticPrime2053
  · exact mixedExtensionSemanticPrime2063
  · exact mixedExtensionSemanticPrime2069
  · exact mixedExtensionSemanticPrime2081
  · exact mixedExtensionSemanticPrime2083
  · exact mixedExtensionSemanticPrime2087
  · exact mixedExtensionSemanticPrime2089
  · exact mixedExtensionSemanticPrime2099
  · exact mixedExtensionSemanticPrime2111
  · exact mixedExtensionSemanticPrime2113
  · exact mixedExtensionSemanticPrime2129
  · exact mixedExtensionSemanticPrime2131

#print axioms mixedExtensionSemanticInputs0009_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
