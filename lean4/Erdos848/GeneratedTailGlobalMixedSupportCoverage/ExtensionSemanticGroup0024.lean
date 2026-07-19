import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0024 : List ℕ :=
  [5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143]

theorem mixedExtensionPrimeEq5857 :
    mixedSupportExtensionPrime 5857 = 5861 := by
  rfl

theorem mixedExtensionSemanticPrime5857 :
    Nat.Prime (mixedSupportExtensionPrime 5857) ∧
      5857 < mixedSupportExtensionPrime 5857 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5857 < candidate →
        mixedSupportExtensionPrime 5857 ≤ candidate := by
  rw [mixedExtensionPrimeEq5857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5861 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5861 :
    mixedSupportExtensionPrime 5861 = 5867 := by
  rfl

theorem mixedExtensionSemanticPrime5861 :
    Nat.Prime (mixedSupportExtensionPrime 5861) ∧
      5861 < mixedSupportExtensionPrime 5861 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5861 < candidate →
        mixedSupportExtensionPrime 5861 ≤ candidate := by
  rw [mixedExtensionPrimeEq5861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5867 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5867 :
    mixedSupportExtensionPrime 5867 = 5869 := by
  rfl

theorem mixedExtensionSemanticPrime5867 :
    Nat.Prime (mixedSupportExtensionPrime 5867) ∧
      5867 < mixedSupportExtensionPrime 5867 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5867 < candidate →
        mixedSupportExtensionPrime 5867 ≤ candidate := by
  rw [mixedExtensionPrimeEq5867]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5869 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5869 :
    mixedSupportExtensionPrime 5869 = 5879 := by
  rfl

theorem mixedExtensionSemanticPrime5869 :
    Nat.Prime (mixedSupportExtensionPrime 5869) ∧
      5869 < mixedSupportExtensionPrime 5869 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5869 < candidate →
        mixedSupportExtensionPrime 5869 ≤ candidate := by
  rw [mixedExtensionPrimeEq5869]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5879 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5879 :
    mixedSupportExtensionPrime 5879 = 5881 := by
  rfl

theorem mixedExtensionSemanticPrime5879 :
    Nat.Prime (mixedSupportExtensionPrime 5879) ∧
      5879 < mixedSupportExtensionPrime 5879 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5879 < candidate →
        mixedSupportExtensionPrime 5879 ≤ candidate := by
  rw [mixedExtensionPrimeEq5879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5881 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5881 :
    mixedSupportExtensionPrime 5881 = 5897 := by
  rfl

theorem mixedExtensionSemanticPrime5881 :
    Nat.Prime (mixedSupportExtensionPrime 5881) ∧
      5881 < mixedSupportExtensionPrime 5881 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5881 < candidate →
        mixedSupportExtensionPrime 5881 ≤ candidate := by
  rw [mixedExtensionPrimeEq5881]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5897 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5897 :
    mixedSupportExtensionPrime 5897 = 5903 := by
  rfl

theorem mixedExtensionSemanticPrime5897 :
    Nat.Prime (mixedSupportExtensionPrime 5897) ∧
      5897 < mixedSupportExtensionPrime 5897 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5897 < candidate →
        mixedSupportExtensionPrime 5897 ≤ candidate := by
  rw [mixedExtensionPrimeEq5897]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5903 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5903 :
    mixedSupportExtensionPrime 5903 = 5923 := by
  rfl

theorem mixedExtensionSemanticPrime5903 :
    Nat.Prime (mixedSupportExtensionPrime 5903) ∧
      5903 < mixedSupportExtensionPrime 5903 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5903 < candidate →
        mixedSupportExtensionPrime 5903 ≤ candidate := by
  rw [mixedExtensionPrimeEq5903]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5923 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5923 :
    mixedSupportExtensionPrime 5923 = 5927 := by
  rfl

theorem mixedExtensionSemanticPrime5923 :
    Nat.Prime (mixedSupportExtensionPrime 5923) ∧
      5923 < mixedSupportExtensionPrime 5923 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5923 < candidate →
        mixedSupportExtensionPrime 5923 ≤ candidate := by
  rw [mixedExtensionPrimeEq5923]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5927 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5927 :
    mixedSupportExtensionPrime 5927 = 5939 := by
  rfl

theorem mixedExtensionSemanticPrime5927 :
    Nat.Prime (mixedSupportExtensionPrime 5927) ∧
      5927 < mixedSupportExtensionPrime 5927 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5927 < candidate →
        mixedSupportExtensionPrime 5927 ≤ candidate := by
  rw [mixedExtensionPrimeEq5927]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5939 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5939 :
    mixedSupportExtensionPrime 5939 = 5953 := by
  rfl

theorem mixedExtensionSemanticPrime5939 :
    Nat.Prime (mixedSupportExtensionPrime 5939) ∧
      5939 < mixedSupportExtensionPrime 5939 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5939 < candidate →
        mixedSupportExtensionPrime 5939 ≤ candidate := by
  rw [mixedExtensionPrimeEq5939]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5953 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5953 :
    mixedSupportExtensionPrime 5953 = 5981 := by
  rfl

theorem mixedExtensionSemanticPrime5953 :
    Nat.Prime (mixedSupportExtensionPrime 5953) ∧
      5953 < mixedSupportExtensionPrime 5953 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5953 < candidate →
        mixedSupportExtensionPrime 5953 ≤ candidate := by
  rw [mixedExtensionPrimeEq5953]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5981 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5981 :
    mixedSupportExtensionPrime 5981 = 5987 := by
  rfl

theorem mixedExtensionSemanticPrime5981 :
    Nat.Prime (mixedSupportExtensionPrime 5981) ∧
      5981 < mixedSupportExtensionPrime 5981 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5981 < candidate →
        mixedSupportExtensionPrime 5981 ≤ candidate := by
  rw [mixedExtensionPrimeEq5981]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 5987 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq5987 :
    mixedSupportExtensionPrime 5987 = 6007 := by
  rfl

theorem mixedExtensionSemanticPrime5987 :
    Nat.Prime (mixedSupportExtensionPrime 5987) ∧
      5987 < mixedSupportExtensionPrime 5987 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        5987 < candidate →
        mixedSupportExtensionPrime 5987 ≤ candidate := by
  rw [mixedExtensionPrimeEq5987]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6007 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6007 :
    mixedSupportExtensionPrime 6007 = 6011 := by
  rfl

theorem mixedExtensionSemanticPrime6007 :
    Nat.Prime (mixedSupportExtensionPrime 6007) ∧
      6007 < mixedSupportExtensionPrime 6007 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6007 < candidate →
        mixedSupportExtensionPrime 6007 ≤ candidate := by
  rw [mixedExtensionPrimeEq6007]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6011 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6011 :
    mixedSupportExtensionPrime 6011 = 6029 := by
  rfl

theorem mixedExtensionSemanticPrime6011 :
    Nat.Prime (mixedSupportExtensionPrime 6011) ∧
      6011 < mixedSupportExtensionPrime 6011 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6011 < candidate →
        mixedSupportExtensionPrime 6011 ≤ candidate := by
  rw [mixedExtensionPrimeEq6011]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6029 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6029 :
    mixedSupportExtensionPrime 6029 = 6037 := by
  rfl

theorem mixedExtensionSemanticPrime6029 :
    Nat.Prime (mixedSupportExtensionPrime 6029) ∧
      6029 < mixedSupportExtensionPrime 6029 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6029 < candidate →
        mixedSupportExtensionPrime 6029 ≤ candidate := by
  rw [mixedExtensionPrimeEq6029]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6037 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6037 :
    mixedSupportExtensionPrime 6037 = 6043 := by
  rfl

theorem mixedExtensionSemanticPrime6037 :
    Nat.Prime (mixedSupportExtensionPrime 6037) ∧
      6037 < mixedSupportExtensionPrime 6037 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6037 < candidate →
        mixedSupportExtensionPrime 6037 ≤ candidate := by
  rw [mixedExtensionPrimeEq6037]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6043 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6043 :
    mixedSupportExtensionPrime 6043 = 6047 := by
  rfl

theorem mixedExtensionSemanticPrime6043 :
    Nat.Prime (mixedSupportExtensionPrime 6043) ∧
      6043 < mixedSupportExtensionPrime 6043 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6043 < candidate →
        mixedSupportExtensionPrime 6043 ≤ candidate := by
  rw [mixedExtensionPrimeEq6043]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6047 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6047 :
    mixedSupportExtensionPrime 6047 = 6053 := by
  rfl

theorem mixedExtensionSemanticPrime6047 :
    Nat.Prime (mixedSupportExtensionPrime 6047) ∧
      6047 < mixedSupportExtensionPrime 6047 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6047 < candidate →
        mixedSupportExtensionPrime 6047 ≤ candidate := by
  rw [mixedExtensionPrimeEq6047]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6053 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6053 :
    mixedSupportExtensionPrime 6053 = 6067 := by
  rfl

theorem mixedExtensionSemanticPrime6053 :
    Nat.Prime (mixedSupportExtensionPrime 6053) ∧
      6053 < mixedSupportExtensionPrime 6053 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6053 < candidate →
        mixedSupportExtensionPrime 6053 ≤ candidate := by
  rw [mixedExtensionPrimeEq6053]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6067 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6067 :
    mixedSupportExtensionPrime 6067 = 6073 := by
  rfl

theorem mixedExtensionSemanticPrime6067 :
    Nat.Prime (mixedSupportExtensionPrime 6067) ∧
      6067 < mixedSupportExtensionPrime 6067 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6067 < candidate →
        mixedSupportExtensionPrime 6067 ≤ candidate := by
  rw [mixedExtensionPrimeEq6067]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6073 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6073 :
    mixedSupportExtensionPrime 6073 = 6079 := by
  rfl

theorem mixedExtensionSemanticPrime6073 :
    Nat.Prime (mixedSupportExtensionPrime 6073) ∧
      6073 < mixedSupportExtensionPrime 6073 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6073 < candidate →
        mixedSupportExtensionPrime 6073 ≤ candidate := by
  rw [mixedExtensionPrimeEq6073]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6079 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6079 :
    mixedSupportExtensionPrime 6079 = 6089 := by
  rfl

theorem mixedExtensionSemanticPrime6079 :
    Nat.Prime (mixedSupportExtensionPrime 6079) ∧
      6079 < mixedSupportExtensionPrime 6079 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6079 < candidate →
        mixedSupportExtensionPrime 6079 ≤ candidate := by
  rw [mixedExtensionPrimeEq6079]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6089 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6089 :
    mixedSupportExtensionPrime 6089 = 6091 := by
  rfl

theorem mixedExtensionSemanticPrime6089 :
    Nat.Prime (mixedSupportExtensionPrime 6089) ∧
      6089 < mixedSupportExtensionPrime 6089 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6089 < candidate →
        mixedSupportExtensionPrime 6089 ≤ candidate := by
  rw [mixedExtensionPrimeEq6089]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6091 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6091 :
    mixedSupportExtensionPrime 6091 = 6101 := by
  rfl

theorem mixedExtensionSemanticPrime6091 :
    Nat.Prime (mixedSupportExtensionPrime 6091) ∧
      6091 < mixedSupportExtensionPrime 6091 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6091 < candidate →
        mixedSupportExtensionPrime 6091 ≤ candidate := by
  rw [mixedExtensionPrimeEq6091]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6101 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6101 :
    mixedSupportExtensionPrime 6101 = 6113 := by
  rfl

theorem mixedExtensionSemanticPrime6101 :
    Nat.Prime (mixedSupportExtensionPrime 6101) ∧
      6101 < mixedSupportExtensionPrime 6101 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6101 < candidate →
        mixedSupportExtensionPrime 6101 ≤ candidate := by
  rw [mixedExtensionPrimeEq6101]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6113 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6113 :
    mixedSupportExtensionPrime 6113 = 6121 := by
  rfl

theorem mixedExtensionSemanticPrime6113 :
    Nat.Prime (mixedSupportExtensionPrime 6113) ∧
      6113 < mixedSupportExtensionPrime 6113 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6113 < candidate →
        mixedSupportExtensionPrime 6113 ≤ candidate := by
  rw [mixedExtensionPrimeEq6113]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6121 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6121 :
    mixedSupportExtensionPrime 6121 = 6131 := by
  rfl

theorem mixedExtensionSemanticPrime6121 :
    Nat.Prime (mixedSupportExtensionPrime 6121) ∧
      6121 < mixedSupportExtensionPrime 6121 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6121 < candidate →
        mixedSupportExtensionPrime 6121 ≤ candidate := by
  rw [mixedExtensionPrimeEq6121]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6131 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6131 :
    mixedSupportExtensionPrime 6131 = 6133 := by
  rfl

theorem mixedExtensionSemanticPrime6131 :
    Nat.Prime (mixedSupportExtensionPrime 6131) ∧
      6131 < mixedSupportExtensionPrime 6131 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6131 < candidate →
        mixedSupportExtensionPrime 6131 ≤ candidate := by
  rw [mixedExtensionPrimeEq6131]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6133 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6133 :
    mixedSupportExtensionPrime 6133 = 6143 := by
  rfl

theorem mixedExtensionSemanticPrime6133 :
    Nat.Prime (mixedSupportExtensionPrime 6133) ∧
      6133 < mixedSupportExtensionPrime 6133 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6133 < candidate →
        mixedSupportExtensionPrime 6133 ≤ candidate := by
  rw [mixedExtensionPrimeEq6133]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6143 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq6143 :
    mixedSupportExtensionPrime 6143 = 6151 := by
  rfl

theorem mixedExtensionSemanticPrime6143 :
    Nat.Prime (mixedSupportExtensionPrime 6143) ∧
      6143 < mixedSupportExtensionPrime 6143 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        6143 < candidate →
        mixedSupportExtensionPrime 6143 ≤ candidate := by
  rw [mixedExtensionPrimeEq6143]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 6151 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0024_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0024) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0024, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime5857
  · exact mixedExtensionSemanticPrime5861
  · exact mixedExtensionSemanticPrime5867
  · exact mixedExtensionSemanticPrime5869
  · exact mixedExtensionSemanticPrime5879
  · exact mixedExtensionSemanticPrime5881
  · exact mixedExtensionSemanticPrime5897
  · exact mixedExtensionSemanticPrime5903
  · exact mixedExtensionSemanticPrime5923
  · exact mixedExtensionSemanticPrime5927
  · exact mixedExtensionSemanticPrime5939
  · exact mixedExtensionSemanticPrime5953
  · exact mixedExtensionSemanticPrime5981
  · exact mixedExtensionSemanticPrime5987
  · exact mixedExtensionSemanticPrime6007
  · exact mixedExtensionSemanticPrime6011
  · exact mixedExtensionSemanticPrime6029
  · exact mixedExtensionSemanticPrime6037
  · exact mixedExtensionSemanticPrime6043
  · exact mixedExtensionSemanticPrime6047
  · exact mixedExtensionSemanticPrime6053
  · exact mixedExtensionSemanticPrime6067
  · exact mixedExtensionSemanticPrime6073
  · exact mixedExtensionSemanticPrime6079
  · exact mixedExtensionSemanticPrime6089
  · exact mixedExtensionSemanticPrime6091
  · exact mixedExtensionSemanticPrime6101
  · exact mixedExtensionSemanticPrime6113
  · exact mixedExtensionSemanticPrime6121
  · exact mixedExtensionSemanticPrime6131
  · exact mixedExtensionSemanticPrime6133
  · exact mixedExtensionSemanticPrime6143

#print axioms mixedExtensionSemanticInputs0024_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
