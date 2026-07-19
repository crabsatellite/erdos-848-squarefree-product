import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0016 : List ℕ :=
  [3677, 3691, 3697, 3701, 3709, 3719, 3727, 3733, 3739, 3761, 3767, 3769, 3779, 3793, 3797, 3803, 3821, 3823, 3833, 3847, 3851, 3853, 3863, 3877, 3881, 3889, 3907, 3911, 3917, 3919, 3923, 3929]

theorem mixedExtensionPrimeEq3677 :
    mixedSupportExtensionPrime 3677 = 3691 := by
  rfl

theorem mixedExtensionSemanticPrime3677 :
    Nat.Prime (mixedSupportExtensionPrime 3677) ∧
      3677 < mixedSupportExtensionPrime 3677 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3677 < candidate →
        mixedSupportExtensionPrime 3677 ≤ candidate := by
  rw [mixedExtensionPrimeEq3677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3691 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3691 :
    mixedSupportExtensionPrime 3691 = 3697 := by
  rfl

theorem mixedExtensionSemanticPrime3691 :
    Nat.Prime (mixedSupportExtensionPrime 3691) ∧
      3691 < mixedSupportExtensionPrime 3691 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3691 < candidate →
        mixedSupportExtensionPrime 3691 ≤ candidate := by
  rw [mixedExtensionPrimeEq3691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3697 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3697 :
    mixedSupportExtensionPrime 3697 = 3701 := by
  rfl

theorem mixedExtensionSemanticPrime3697 :
    Nat.Prime (mixedSupportExtensionPrime 3697) ∧
      3697 < mixedSupportExtensionPrime 3697 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3697 < candidate →
        mixedSupportExtensionPrime 3697 ≤ candidate := by
  rw [mixedExtensionPrimeEq3697]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3701 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3701 :
    mixedSupportExtensionPrime 3701 = 3709 := by
  rfl

theorem mixedExtensionSemanticPrime3701 :
    Nat.Prime (mixedSupportExtensionPrime 3701) ∧
      3701 < mixedSupportExtensionPrime 3701 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3701 < candidate →
        mixedSupportExtensionPrime 3701 ≤ candidate := by
  rw [mixedExtensionPrimeEq3701]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3709 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3709 :
    mixedSupportExtensionPrime 3709 = 3719 := by
  rfl

theorem mixedExtensionSemanticPrime3709 :
    Nat.Prime (mixedSupportExtensionPrime 3709) ∧
      3709 < mixedSupportExtensionPrime 3709 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3709 < candidate →
        mixedSupportExtensionPrime 3709 ≤ candidate := by
  rw [mixedExtensionPrimeEq3709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3719 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3719 :
    mixedSupportExtensionPrime 3719 = 3727 := by
  rfl

theorem mixedExtensionSemanticPrime3719 :
    Nat.Prime (mixedSupportExtensionPrime 3719) ∧
      3719 < mixedSupportExtensionPrime 3719 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3719 < candidate →
        mixedSupportExtensionPrime 3719 ≤ candidate := by
  rw [mixedExtensionPrimeEq3719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3727 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3727 :
    mixedSupportExtensionPrime 3727 = 3733 := by
  rfl

theorem mixedExtensionSemanticPrime3727 :
    Nat.Prime (mixedSupportExtensionPrime 3727) ∧
      3727 < mixedSupportExtensionPrime 3727 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3727 < candidate →
        mixedSupportExtensionPrime 3727 ≤ candidate := by
  rw [mixedExtensionPrimeEq3727]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3733 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3733 :
    mixedSupportExtensionPrime 3733 = 3739 := by
  rfl

theorem mixedExtensionSemanticPrime3733 :
    Nat.Prime (mixedSupportExtensionPrime 3733) ∧
      3733 < mixedSupportExtensionPrime 3733 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3733 < candidate →
        mixedSupportExtensionPrime 3733 ≤ candidate := by
  rw [mixedExtensionPrimeEq3733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3739 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3739 :
    mixedSupportExtensionPrime 3739 = 3761 := by
  rfl

theorem mixedExtensionSemanticPrime3739 :
    Nat.Prime (mixedSupportExtensionPrime 3739) ∧
      3739 < mixedSupportExtensionPrime 3739 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3739 < candidate →
        mixedSupportExtensionPrime 3739 ≤ candidate := by
  rw [mixedExtensionPrimeEq3739]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3761 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3761 :
    mixedSupportExtensionPrime 3761 = 3767 := by
  rfl

theorem mixedExtensionSemanticPrime3761 :
    Nat.Prime (mixedSupportExtensionPrime 3761) ∧
      3761 < mixedSupportExtensionPrime 3761 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3761 < candidate →
        mixedSupportExtensionPrime 3761 ≤ candidate := by
  rw [mixedExtensionPrimeEq3761]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3767 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3767 :
    mixedSupportExtensionPrime 3767 = 3769 := by
  rfl

theorem mixedExtensionSemanticPrime3767 :
    Nat.Prime (mixedSupportExtensionPrime 3767) ∧
      3767 < mixedSupportExtensionPrime 3767 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3767 < candidate →
        mixedSupportExtensionPrime 3767 ≤ candidate := by
  rw [mixedExtensionPrimeEq3767]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3769 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3769 :
    mixedSupportExtensionPrime 3769 = 3779 := by
  rfl

theorem mixedExtensionSemanticPrime3769 :
    Nat.Prime (mixedSupportExtensionPrime 3769) ∧
      3769 < mixedSupportExtensionPrime 3769 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3769 < candidate →
        mixedSupportExtensionPrime 3769 ≤ candidate := by
  rw [mixedExtensionPrimeEq3769]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3779 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3779 :
    mixedSupportExtensionPrime 3779 = 3793 := by
  rfl

theorem mixedExtensionSemanticPrime3779 :
    Nat.Prime (mixedSupportExtensionPrime 3779) ∧
      3779 < mixedSupportExtensionPrime 3779 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3779 < candidate →
        mixedSupportExtensionPrime 3779 ≤ candidate := by
  rw [mixedExtensionPrimeEq3779]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3793 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3793 :
    mixedSupportExtensionPrime 3793 = 3797 := by
  rfl

theorem mixedExtensionSemanticPrime3793 :
    Nat.Prime (mixedSupportExtensionPrime 3793) ∧
      3793 < mixedSupportExtensionPrime 3793 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3793 < candidate →
        mixedSupportExtensionPrime 3793 ≤ candidate := by
  rw [mixedExtensionPrimeEq3793]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3797 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3797 :
    mixedSupportExtensionPrime 3797 = 3803 := by
  rfl

theorem mixedExtensionSemanticPrime3797 :
    Nat.Prime (mixedSupportExtensionPrime 3797) ∧
      3797 < mixedSupportExtensionPrime 3797 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3797 < candidate →
        mixedSupportExtensionPrime 3797 ≤ candidate := by
  rw [mixedExtensionPrimeEq3797]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3803 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3803 :
    mixedSupportExtensionPrime 3803 = 3821 := by
  rfl

theorem mixedExtensionSemanticPrime3803 :
    Nat.Prime (mixedSupportExtensionPrime 3803) ∧
      3803 < mixedSupportExtensionPrime 3803 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3803 < candidate →
        mixedSupportExtensionPrime 3803 ≤ candidate := by
  rw [mixedExtensionPrimeEq3803]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3821 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3821 :
    mixedSupportExtensionPrime 3821 = 3823 := by
  rfl

theorem mixedExtensionSemanticPrime3821 :
    Nat.Prime (mixedSupportExtensionPrime 3821) ∧
      3821 < mixedSupportExtensionPrime 3821 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3821 < candidate →
        mixedSupportExtensionPrime 3821 ≤ candidate := by
  rw [mixedExtensionPrimeEq3821]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3823 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3823 :
    mixedSupportExtensionPrime 3823 = 3833 := by
  rfl

theorem mixedExtensionSemanticPrime3823 :
    Nat.Prime (mixedSupportExtensionPrime 3823) ∧
      3823 < mixedSupportExtensionPrime 3823 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3823 < candidate →
        mixedSupportExtensionPrime 3823 ≤ candidate := by
  rw [mixedExtensionPrimeEq3823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3833 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3833 :
    mixedSupportExtensionPrime 3833 = 3847 := by
  rfl

theorem mixedExtensionSemanticPrime3833 :
    Nat.Prime (mixedSupportExtensionPrime 3833) ∧
      3833 < mixedSupportExtensionPrime 3833 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3833 < candidate →
        mixedSupportExtensionPrime 3833 ≤ candidate := by
  rw [mixedExtensionPrimeEq3833]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3847 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3847 :
    mixedSupportExtensionPrime 3847 = 3851 := by
  rfl

theorem mixedExtensionSemanticPrime3847 :
    Nat.Prime (mixedSupportExtensionPrime 3847) ∧
      3847 < mixedSupportExtensionPrime 3847 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3847 < candidate →
        mixedSupportExtensionPrime 3847 ≤ candidate := by
  rw [mixedExtensionPrimeEq3847]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3851 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3851 :
    mixedSupportExtensionPrime 3851 = 3853 := by
  rfl

theorem mixedExtensionSemanticPrime3851 :
    Nat.Prime (mixedSupportExtensionPrime 3851) ∧
      3851 < mixedSupportExtensionPrime 3851 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3851 < candidate →
        mixedSupportExtensionPrime 3851 ≤ candidate := by
  rw [mixedExtensionPrimeEq3851]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3853 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3853 :
    mixedSupportExtensionPrime 3853 = 3863 := by
  rfl

theorem mixedExtensionSemanticPrime3853 :
    Nat.Prime (mixedSupportExtensionPrime 3853) ∧
      3853 < mixedSupportExtensionPrime 3853 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3853 < candidate →
        mixedSupportExtensionPrime 3853 ≤ candidate := by
  rw [mixedExtensionPrimeEq3853]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3863 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3863 :
    mixedSupportExtensionPrime 3863 = 3877 := by
  rfl

theorem mixedExtensionSemanticPrime3863 :
    Nat.Prime (mixedSupportExtensionPrime 3863) ∧
      3863 < mixedSupportExtensionPrime 3863 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3863 < candidate →
        mixedSupportExtensionPrime 3863 ≤ candidate := by
  rw [mixedExtensionPrimeEq3863]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3877 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3877 :
    mixedSupportExtensionPrime 3877 = 3881 := by
  rfl

theorem mixedExtensionSemanticPrime3877 :
    Nat.Prime (mixedSupportExtensionPrime 3877) ∧
      3877 < mixedSupportExtensionPrime 3877 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3877 < candidate →
        mixedSupportExtensionPrime 3877 ≤ candidate := by
  rw [mixedExtensionPrimeEq3877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3881 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3881 :
    mixedSupportExtensionPrime 3881 = 3889 := by
  rfl

theorem mixedExtensionSemanticPrime3881 :
    Nat.Prime (mixedSupportExtensionPrime 3881) ∧
      3881 < mixedSupportExtensionPrime 3881 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3881 < candidate →
        mixedSupportExtensionPrime 3881 ≤ candidate := by
  rw [mixedExtensionPrimeEq3881]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3889 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3889 :
    mixedSupportExtensionPrime 3889 = 3907 := by
  rfl

theorem mixedExtensionSemanticPrime3889 :
    Nat.Prime (mixedSupportExtensionPrime 3889) ∧
      3889 < mixedSupportExtensionPrime 3889 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3889 < candidate →
        mixedSupportExtensionPrime 3889 ≤ candidate := by
  rw [mixedExtensionPrimeEq3889]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3907 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3907 :
    mixedSupportExtensionPrime 3907 = 3911 := by
  rfl

theorem mixedExtensionSemanticPrime3907 :
    Nat.Prime (mixedSupportExtensionPrime 3907) ∧
      3907 < mixedSupportExtensionPrime 3907 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3907 < candidate →
        mixedSupportExtensionPrime 3907 ≤ candidate := by
  rw [mixedExtensionPrimeEq3907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3911 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3911 :
    mixedSupportExtensionPrime 3911 = 3917 := by
  rfl

theorem mixedExtensionSemanticPrime3911 :
    Nat.Prime (mixedSupportExtensionPrime 3911) ∧
      3911 < mixedSupportExtensionPrime 3911 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3911 < candidate →
        mixedSupportExtensionPrime 3911 ≤ candidate := by
  rw [mixedExtensionPrimeEq3911]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3917 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3917 :
    mixedSupportExtensionPrime 3917 = 3919 := by
  rfl

theorem mixedExtensionSemanticPrime3917 :
    Nat.Prime (mixedSupportExtensionPrime 3917) ∧
      3917 < mixedSupportExtensionPrime 3917 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3917 < candidate →
        mixedSupportExtensionPrime 3917 ≤ candidate := by
  rw [mixedExtensionPrimeEq3917]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3919 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3919 :
    mixedSupportExtensionPrime 3919 = 3923 := by
  rfl

theorem mixedExtensionSemanticPrime3919 :
    Nat.Prime (mixedSupportExtensionPrime 3919) ∧
      3919 < mixedSupportExtensionPrime 3919 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3919 < candidate →
        mixedSupportExtensionPrime 3919 ≤ candidate := by
  rw [mixedExtensionPrimeEq3919]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3923 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3923 :
    mixedSupportExtensionPrime 3923 = 3929 := by
  rfl

theorem mixedExtensionSemanticPrime3923 :
    Nat.Prime (mixedSupportExtensionPrime 3923) ∧
      3923 < mixedSupportExtensionPrime 3923 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3923 < candidate →
        mixedSupportExtensionPrime 3923 ≤ candidate := by
  rw [mixedExtensionPrimeEq3923]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3929 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq3929 :
    mixedSupportExtensionPrime 3929 = 3931 := by
  rfl

theorem mixedExtensionSemanticPrime3929 :
    Nat.Prime (mixedSupportExtensionPrime 3929) ∧
      3929 < mixedSupportExtensionPrime 3929 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        3929 < candidate →
        mixedSupportExtensionPrime 3929 ≤ candidate := by
  rw [mixedExtensionPrimeEq3929]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 3931 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0016_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0016) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0016, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime3677
  · exact mixedExtensionSemanticPrime3691
  · exact mixedExtensionSemanticPrime3697
  · exact mixedExtensionSemanticPrime3701
  · exact mixedExtensionSemanticPrime3709
  · exact mixedExtensionSemanticPrime3719
  · exact mixedExtensionSemanticPrime3727
  · exact mixedExtensionSemanticPrime3733
  · exact mixedExtensionSemanticPrime3739
  · exact mixedExtensionSemanticPrime3761
  · exact mixedExtensionSemanticPrime3767
  · exact mixedExtensionSemanticPrime3769
  · exact mixedExtensionSemanticPrime3779
  · exact mixedExtensionSemanticPrime3793
  · exact mixedExtensionSemanticPrime3797
  · exact mixedExtensionSemanticPrime3803
  · exact mixedExtensionSemanticPrime3821
  · exact mixedExtensionSemanticPrime3823
  · exact mixedExtensionSemanticPrime3833
  · exact mixedExtensionSemanticPrime3847
  · exact mixedExtensionSemanticPrime3851
  · exact mixedExtensionSemanticPrime3853
  · exact mixedExtensionSemanticPrime3863
  · exact mixedExtensionSemanticPrime3877
  · exact mixedExtensionSemanticPrime3881
  · exact mixedExtensionSemanticPrime3889
  · exact mixedExtensionSemanticPrime3907
  · exact mixedExtensionSemanticPrime3911
  · exact mixedExtensionSemanticPrime3917
  · exact mixedExtensionSemanticPrime3919
  · exact mixedExtensionSemanticPrime3923
  · exact mixedExtensionSemanticPrime3929

#print axioms mixedExtensionSemanticInputs0016_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
