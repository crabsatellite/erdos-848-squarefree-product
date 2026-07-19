import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0004 : List ℕ :=
  [733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947]

theorem mixedExtensionPrimeEq733 :
    mixedSupportExtensionPrime 733 = 739 := by
  rfl

theorem mixedExtensionSemanticPrime733 :
    Nat.Prime (mixedSupportExtensionPrime 733) ∧
      733 < mixedSupportExtensionPrime 733 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        733 < candidate →
        mixedSupportExtensionPrime 733 ≤ candidate := by
  rw [mixedExtensionPrimeEq733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 739 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq739 :
    mixedSupportExtensionPrime 739 = 743 := by
  rfl

theorem mixedExtensionSemanticPrime739 :
    Nat.Prime (mixedSupportExtensionPrime 739) ∧
      739 < mixedSupportExtensionPrime 739 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        739 < candidate →
        mixedSupportExtensionPrime 739 ≤ candidate := by
  rw [mixedExtensionPrimeEq739]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 743 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq743 :
    mixedSupportExtensionPrime 743 = 751 := by
  rfl

theorem mixedExtensionSemanticPrime743 :
    Nat.Prime (mixedSupportExtensionPrime 743) ∧
      743 < mixedSupportExtensionPrime 743 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        743 < candidate →
        mixedSupportExtensionPrime 743 ≤ candidate := by
  rw [mixedExtensionPrimeEq743]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 751 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq751 :
    mixedSupportExtensionPrime 751 = 757 := by
  rfl

theorem mixedExtensionSemanticPrime751 :
    Nat.Prime (mixedSupportExtensionPrime 751) ∧
      751 < mixedSupportExtensionPrime 751 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        751 < candidate →
        mixedSupportExtensionPrime 751 ≤ candidate := by
  rw [mixedExtensionPrimeEq751]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 757 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq757 :
    mixedSupportExtensionPrime 757 = 761 := by
  rfl

theorem mixedExtensionSemanticPrime757 :
    Nat.Prime (mixedSupportExtensionPrime 757) ∧
      757 < mixedSupportExtensionPrime 757 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        757 < candidate →
        mixedSupportExtensionPrime 757 ≤ candidate := by
  rw [mixedExtensionPrimeEq757]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 761 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq761 :
    mixedSupportExtensionPrime 761 = 769 := by
  rfl

theorem mixedExtensionSemanticPrime761 :
    Nat.Prime (mixedSupportExtensionPrime 761) ∧
      761 < mixedSupportExtensionPrime 761 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        761 < candidate →
        mixedSupportExtensionPrime 761 ≤ candidate := by
  rw [mixedExtensionPrimeEq761]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 769 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq769 :
    mixedSupportExtensionPrime 769 = 773 := by
  rfl

theorem mixedExtensionSemanticPrime769 :
    Nat.Prime (mixedSupportExtensionPrime 769) ∧
      769 < mixedSupportExtensionPrime 769 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        769 < candidate →
        mixedSupportExtensionPrime 769 ≤ candidate := by
  rw [mixedExtensionPrimeEq769]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 773 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq773 :
    mixedSupportExtensionPrime 773 = 787 := by
  rfl

theorem mixedExtensionSemanticPrime773 :
    Nat.Prime (mixedSupportExtensionPrime 773) ∧
      773 < mixedSupportExtensionPrime 773 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        773 < candidate →
        mixedSupportExtensionPrime 773 ≤ candidate := by
  rw [mixedExtensionPrimeEq773]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 787 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq787 :
    mixedSupportExtensionPrime 787 = 797 := by
  rfl

theorem mixedExtensionSemanticPrime787 :
    Nat.Prime (mixedSupportExtensionPrime 787) ∧
      787 < mixedSupportExtensionPrime 787 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        787 < candidate →
        mixedSupportExtensionPrime 787 ≤ candidate := by
  rw [mixedExtensionPrimeEq787]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 797 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq797 :
    mixedSupportExtensionPrime 797 = 809 := by
  rfl

theorem mixedExtensionSemanticPrime797 :
    Nat.Prime (mixedSupportExtensionPrime 797) ∧
      797 < mixedSupportExtensionPrime 797 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        797 < candidate →
        mixedSupportExtensionPrime 797 ≤ candidate := by
  rw [mixedExtensionPrimeEq797]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 809 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq809 :
    mixedSupportExtensionPrime 809 = 811 := by
  rfl

theorem mixedExtensionSemanticPrime809 :
    Nat.Prime (mixedSupportExtensionPrime 809) ∧
      809 < mixedSupportExtensionPrime 809 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        809 < candidate →
        mixedSupportExtensionPrime 809 ≤ candidate := by
  rw [mixedExtensionPrimeEq809]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 811 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq811 :
    mixedSupportExtensionPrime 811 = 821 := by
  rfl

theorem mixedExtensionSemanticPrime811 :
    Nat.Prime (mixedSupportExtensionPrime 811) ∧
      811 < mixedSupportExtensionPrime 811 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        811 < candidate →
        mixedSupportExtensionPrime 811 ≤ candidate := by
  rw [mixedExtensionPrimeEq811]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 821 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq821 :
    mixedSupportExtensionPrime 821 = 823 := by
  rfl

theorem mixedExtensionSemanticPrime821 :
    Nat.Prime (mixedSupportExtensionPrime 821) ∧
      821 < mixedSupportExtensionPrime 821 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        821 < candidate →
        mixedSupportExtensionPrime 821 ≤ candidate := by
  rw [mixedExtensionPrimeEq821]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 823 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq823 :
    mixedSupportExtensionPrime 823 = 827 := by
  rfl

theorem mixedExtensionSemanticPrime823 :
    Nat.Prime (mixedSupportExtensionPrime 823) ∧
      823 < mixedSupportExtensionPrime 823 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        823 < candidate →
        mixedSupportExtensionPrime 823 ≤ candidate := by
  rw [mixedExtensionPrimeEq823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 827 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq827 :
    mixedSupportExtensionPrime 827 = 829 := by
  rfl

theorem mixedExtensionSemanticPrime827 :
    Nat.Prime (mixedSupportExtensionPrime 827) ∧
      827 < mixedSupportExtensionPrime 827 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        827 < candidate →
        mixedSupportExtensionPrime 827 ≤ candidate := by
  rw [mixedExtensionPrimeEq827]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 829 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq829 :
    mixedSupportExtensionPrime 829 = 839 := by
  rfl

theorem mixedExtensionSemanticPrime829 :
    Nat.Prime (mixedSupportExtensionPrime 829) ∧
      829 < mixedSupportExtensionPrime 829 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        829 < candidate →
        mixedSupportExtensionPrime 829 ≤ candidate := by
  rw [mixedExtensionPrimeEq829]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 839 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq839 :
    mixedSupportExtensionPrime 839 = 853 := by
  rfl

theorem mixedExtensionSemanticPrime839 :
    Nat.Prime (mixedSupportExtensionPrime 839) ∧
      839 < mixedSupportExtensionPrime 839 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        839 < candidate →
        mixedSupportExtensionPrime 839 ≤ candidate := by
  rw [mixedExtensionPrimeEq839]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 853 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq853 :
    mixedSupportExtensionPrime 853 = 857 := by
  rfl

theorem mixedExtensionSemanticPrime853 :
    Nat.Prime (mixedSupportExtensionPrime 853) ∧
      853 < mixedSupportExtensionPrime 853 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        853 < candidate →
        mixedSupportExtensionPrime 853 ≤ candidate := by
  rw [mixedExtensionPrimeEq853]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 857 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq857 :
    mixedSupportExtensionPrime 857 = 859 := by
  rfl

theorem mixedExtensionSemanticPrime857 :
    Nat.Prime (mixedSupportExtensionPrime 857) ∧
      857 < mixedSupportExtensionPrime 857 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        857 < candidate →
        mixedSupportExtensionPrime 857 ≤ candidate := by
  rw [mixedExtensionPrimeEq857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 859 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq859 :
    mixedSupportExtensionPrime 859 = 863 := by
  rfl

theorem mixedExtensionSemanticPrime859 :
    Nat.Prime (mixedSupportExtensionPrime 859) ∧
      859 < mixedSupportExtensionPrime 859 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        859 < candidate →
        mixedSupportExtensionPrime 859 ≤ candidate := by
  rw [mixedExtensionPrimeEq859]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 863 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq863 :
    mixedSupportExtensionPrime 863 = 877 := by
  rfl

theorem mixedExtensionSemanticPrime863 :
    Nat.Prime (mixedSupportExtensionPrime 863) ∧
      863 < mixedSupportExtensionPrime 863 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        863 < candidate →
        mixedSupportExtensionPrime 863 ≤ candidate := by
  rw [mixedExtensionPrimeEq863]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 877 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq877 :
    mixedSupportExtensionPrime 877 = 881 := by
  rfl

theorem mixedExtensionSemanticPrime877 :
    Nat.Prime (mixedSupportExtensionPrime 877) ∧
      877 < mixedSupportExtensionPrime 877 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        877 < candidate →
        mixedSupportExtensionPrime 877 ≤ candidate := by
  rw [mixedExtensionPrimeEq877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 881 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq881 :
    mixedSupportExtensionPrime 881 = 883 := by
  rfl

theorem mixedExtensionSemanticPrime881 :
    Nat.Prime (mixedSupportExtensionPrime 881) ∧
      881 < mixedSupportExtensionPrime 881 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        881 < candidate →
        mixedSupportExtensionPrime 881 ≤ candidate := by
  rw [mixedExtensionPrimeEq881]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 883 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq883 :
    mixedSupportExtensionPrime 883 = 887 := by
  rfl

theorem mixedExtensionSemanticPrime883 :
    Nat.Prime (mixedSupportExtensionPrime 883) ∧
      883 < mixedSupportExtensionPrime 883 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        883 < candidate →
        mixedSupportExtensionPrime 883 ≤ candidate := by
  rw [mixedExtensionPrimeEq883]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 887 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq887 :
    mixedSupportExtensionPrime 887 = 907 := by
  rfl

theorem mixedExtensionSemanticPrime887 :
    Nat.Prime (mixedSupportExtensionPrime 887) ∧
      887 < mixedSupportExtensionPrime 887 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        887 < candidate →
        mixedSupportExtensionPrime 887 ≤ candidate := by
  rw [mixedExtensionPrimeEq887]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 907 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq907 :
    mixedSupportExtensionPrime 907 = 911 := by
  rfl

theorem mixedExtensionSemanticPrime907 :
    Nat.Prime (mixedSupportExtensionPrime 907) ∧
      907 < mixedSupportExtensionPrime 907 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        907 < candidate →
        mixedSupportExtensionPrime 907 ≤ candidate := by
  rw [mixedExtensionPrimeEq907]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 911 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq911 :
    mixedSupportExtensionPrime 911 = 919 := by
  rfl

theorem mixedExtensionSemanticPrime911 :
    Nat.Prime (mixedSupportExtensionPrime 911) ∧
      911 < mixedSupportExtensionPrime 911 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        911 < candidate →
        mixedSupportExtensionPrime 911 ≤ candidate := by
  rw [mixedExtensionPrimeEq911]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 919 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq919 :
    mixedSupportExtensionPrime 919 = 929 := by
  rfl

theorem mixedExtensionSemanticPrime919 :
    Nat.Prime (mixedSupportExtensionPrime 919) ∧
      919 < mixedSupportExtensionPrime 919 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        919 < candidate →
        mixedSupportExtensionPrime 919 ≤ candidate := by
  rw [mixedExtensionPrimeEq919]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 929 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq929 :
    mixedSupportExtensionPrime 929 = 937 := by
  rfl

theorem mixedExtensionSemanticPrime929 :
    Nat.Prime (mixedSupportExtensionPrime 929) ∧
      929 < mixedSupportExtensionPrime 929 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        929 < candidate →
        mixedSupportExtensionPrime 929 ≤ candidate := by
  rw [mixedExtensionPrimeEq929]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 937 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq937 :
    mixedSupportExtensionPrime 937 = 941 := by
  rfl

theorem mixedExtensionSemanticPrime937 :
    Nat.Prime (mixedSupportExtensionPrime 937) ∧
      937 < mixedSupportExtensionPrime 937 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        937 < candidate →
        mixedSupportExtensionPrime 937 ≤ candidate := by
  rw [mixedExtensionPrimeEq937]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 941 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq941 :
    mixedSupportExtensionPrime 941 = 947 := by
  rfl

theorem mixedExtensionSemanticPrime941 :
    Nat.Prime (mixedSupportExtensionPrime 941) ∧
      941 < mixedSupportExtensionPrime 941 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        941 < candidate →
        mixedSupportExtensionPrime 941 ≤ candidate := by
  rw [mixedExtensionPrimeEq941]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 947 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq947 :
    mixedSupportExtensionPrime 947 = 953 := by
  rfl

theorem mixedExtensionSemanticPrime947 :
    Nat.Prime (mixedSupportExtensionPrime 947) ∧
      947 < mixedSupportExtensionPrime 947 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        947 < candidate →
        mixedSupportExtensionPrime 947 ≤ candidate := by
  rw [mixedExtensionPrimeEq947]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 953 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0004_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0004) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0004, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime733
  · exact mixedExtensionSemanticPrime739
  · exact mixedExtensionSemanticPrime743
  · exact mixedExtensionSemanticPrime751
  · exact mixedExtensionSemanticPrime757
  · exact mixedExtensionSemanticPrime761
  · exact mixedExtensionSemanticPrime769
  · exact mixedExtensionSemanticPrime773
  · exact mixedExtensionSemanticPrime787
  · exact mixedExtensionSemanticPrime797
  · exact mixedExtensionSemanticPrime809
  · exact mixedExtensionSemanticPrime811
  · exact mixedExtensionSemanticPrime821
  · exact mixedExtensionSemanticPrime823
  · exact mixedExtensionSemanticPrime827
  · exact mixedExtensionSemanticPrime829
  · exact mixedExtensionSemanticPrime839
  · exact mixedExtensionSemanticPrime853
  · exact mixedExtensionSemanticPrime857
  · exact mixedExtensionSemanticPrime859
  · exact mixedExtensionSemanticPrime863
  · exact mixedExtensionSemanticPrime877
  · exact mixedExtensionSemanticPrime881
  · exact mixedExtensionSemanticPrime883
  · exact mixedExtensionSemanticPrime887
  · exact mixedExtensionSemanticPrime907
  · exact mixedExtensionSemanticPrime911
  · exact mixedExtensionSemanticPrime919
  · exact mixedExtensionSemanticPrime929
  · exact mixedExtensionSemanticPrime937
  · exact mixedExtensionSemanticPrime941
  · exact mixedExtensionSemanticPrime947

#print axioms mixedExtensionSemanticInputs0004_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
