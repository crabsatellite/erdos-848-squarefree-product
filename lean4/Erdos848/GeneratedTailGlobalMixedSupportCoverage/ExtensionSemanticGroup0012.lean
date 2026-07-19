import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0012 : List ℕ :=
  [2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753, 2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879]

theorem mixedExtensionPrimeEq2663 :
    mixedSupportExtensionPrime 2663 = 2671 := by
  rfl

theorem mixedExtensionSemanticPrime2663 :
    Nat.Prime (mixedSupportExtensionPrime 2663) ∧
      2663 < mixedSupportExtensionPrime 2663 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2663 < candidate →
        mixedSupportExtensionPrime 2663 ≤ candidate := by
  rw [mixedExtensionPrimeEq2663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2671 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2671 :
    mixedSupportExtensionPrime 2671 = 2677 := by
  rfl

theorem mixedExtensionSemanticPrime2671 :
    Nat.Prime (mixedSupportExtensionPrime 2671) ∧
      2671 < mixedSupportExtensionPrime 2671 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2671 < candidate →
        mixedSupportExtensionPrime 2671 ≤ candidate := by
  rw [mixedExtensionPrimeEq2671]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2677 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2677 :
    mixedSupportExtensionPrime 2677 = 2683 := by
  rfl

theorem mixedExtensionSemanticPrime2677 :
    Nat.Prime (mixedSupportExtensionPrime 2677) ∧
      2677 < mixedSupportExtensionPrime 2677 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2677 < candidate →
        mixedSupportExtensionPrime 2677 ≤ candidate := by
  rw [mixedExtensionPrimeEq2677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2683 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2683 :
    mixedSupportExtensionPrime 2683 = 2687 := by
  rfl

theorem mixedExtensionSemanticPrime2683 :
    Nat.Prime (mixedSupportExtensionPrime 2683) ∧
      2683 < mixedSupportExtensionPrime 2683 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2683 < candidate →
        mixedSupportExtensionPrime 2683 ≤ candidate := by
  rw [mixedExtensionPrimeEq2683]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2687 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2687 :
    mixedSupportExtensionPrime 2687 = 2689 := by
  rfl

theorem mixedExtensionSemanticPrime2687 :
    Nat.Prime (mixedSupportExtensionPrime 2687) ∧
      2687 < mixedSupportExtensionPrime 2687 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2687 < candidate →
        mixedSupportExtensionPrime 2687 ≤ candidate := by
  rw [mixedExtensionPrimeEq2687]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2689 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2689 :
    mixedSupportExtensionPrime 2689 = 2693 := by
  rfl

theorem mixedExtensionSemanticPrime2689 :
    Nat.Prime (mixedSupportExtensionPrime 2689) ∧
      2689 < mixedSupportExtensionPrime 2689 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2689 < candidate →
        mixedSupportExtensionPrime 2689 ≤ candidate := by
  rw [mixedExtensionPrimeEq2689]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2693 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2693 :
    mixedSupportExtensionPrime 2693 = 2699 := by
  rfl

theorem mixedExtensionSemanticPrime2693 :
    Nat.Prime (mixedSupportExtensionPrime 2693) ∧
      2693 < mixedSupportExtensionPrime 2693 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2693 < candidate →
        mixedSupportExtensionPrime 2693 ≤ candidate := by
  rw [mixedExtensionPrimeEq2693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2699 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2699 :
    mixedSupportExtensionPrime 2699 = 2707 := by
  rfl

theorem mixedExtensionSemanticPrime2699 :
    Nat.Prime (mixedSupportExtensionPrime 2699) ∧
      2699 < mixedSupportExtensionPrime 2699 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2699 < candidate →
        mixedSupportExtensionPrime 2699 ≤ candidate := by
  rw [mixedExtensionPrimeEq2699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2707 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2707 :
    mixedSupportExtensionPrime 2707 = 2711 := by
  rfl

theorem mixedExtensionSemanticPrime2707 :
    Nat.Prime (mixedSupportExtensionPrime 2707) ∧
      2707 < mixedSupportExtensionPrime 2707 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2707 < candidate →
        mixedSupportExtensionPrime 2707 ≤ candidate := by
  rw [mixedExtensionPrimeEq2707]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2711 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2711 :
    mixedSupportExtensionPrime 2711 = 2713 := by
  rfl

theorem mixedExtensionSemanticPrime2711 :
    Nat.Prime (mixedSupportExtensionPrime 2711) ∧
      2711 < mixedSupportExtensionPrime 2711 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2711 < candidate →
        mixedSupportExtensionPrime 2711 ≤ candidate := by
  rw [mixedExtensionPrimeEq2711]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2713 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2713 :
    mixedSupportExtensionPrime 2713 = 2719 := by
  rfl

theorem mixedExtensionSemanticPrime2713 :
    Nat.Prime (mixedSupportExtensionPrime 2713) ∧
      2713 < mixedSupportExtensionPrime 2713 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2713 < candidate →
        mixedSupportExtensionPrime 2713 ≤ candidate := by
  rw [mixedExtensionPrimeEq2713]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2719 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2719 :
    mixedSupportExtensionPrime 2719 = 2729 := by
  rfl

theorem mixedExtensionSemanticPrime2719 :
    Nat.Prime (mixedSupportExtensionPrime 2719) ∧
      2719 < mixedSupportExtensionPrime 2719 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2719 < candidate →
        mixedSupportExtensionPrime 2719 ≤ candidate := by
  rw [mixedExtensionPrimeEq2719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2729 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2729 :
    mixedSupportExtensionPrime 2729 = 2731 := by
  rfl

theorem mixedExtensionSemanticPrime2729 :
    Nat.Prime (mixedSupportExtensionPrime 2729) ∧
      2729 < mixedSupportExtensionPrime 2729 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2729 < candidate →
        mixedSupportExtensionPrime 2729 ≤ candidate := by
  rw [mixedExtensionPrimeEq2729]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2731 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2731 :
    mixedSupportExtensionPrime 2731 = 2741 := by
  rfl

theorem mixedExtensionSemanticPrime2731 :
    Nat.Prime (mixedSupportExtensionPrime 2731) ∧
      2731 < mixedSupportExtensionPrime 2731 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2731 < candidate →
        mixedSupportExtensionPrime 2731 ≤ candidate := by
  rw [mixedExtensionPrimeEq2731]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2741 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2741 :
    mixedSupportExtensionPrime 2741 = 2749 := by
  rfl

theorem mixedExtensionSemanticPrime2741 :
    Nat.Prime (mixedSupportExtensionPrime 2741) ∧
      2741 < mixedSupportExtensionPrime 2741 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2741 < candidate →
        mixedSupportExtensionPrime 2741 ≤ candidate := by
  rw [mixedExtensionPrimeEq2741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2749 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2749 :
    mixedSupportExtensionPrime 2749 = 2753 := by
  rfl

theorem mixedExtensionSemanticPrime2749 :
    Nat.Prime (mixedSupportExtensionPrime 2749) ∧
      2749 < mixedSupportExtensionPrime 2749 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2749 < candidate →
        mixedSupportExtensionPrime 2749 ≤ candidate := by
  rw [mixedExtensionPrimeEq2749]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2753 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2753 :
    mixedSupportExtensionPrime 2753 = 2767 := by
  rfl

theorem mixedExtensionSemanticPrime2753 :
    Nat.Prime (mixedSupportExtensionPrime 2753) ∧
      2753 < mixedSupportExtensionPrime 2753 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2753 < candidate →
        mixedSupportExtensionPrime 2753 ≤ candidate := by
  rw [mixedExtensionPrimeEq2753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2767 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2767 :
    mixedSupportExtensionPrime 2767 = 2777 := by
  rfl

theorem mixedExtensionSemanticPrime2767 :
    Nat.Prime (mixedSupportExtensionPrime 2767) ∧
      2767 < mixedSupportExtensionPrime 2767 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2767 < candidate →
        mixedSupportExtensionPrime 2767 ≤ candidate := by
  rw [mixedExtensionPrimeEq2767]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2777 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2777 :
    mixedSupportExtensionPrime 2777 = 2789 := by
  rfl

theorem mixedExtensionSemanticPrime2777 :
    Nat.Prime (mixedSupportExtensionPrime 2777) ∧
      2777 < mixedSupportExtensionPrime 2777 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2777 < candidate →
        mixedSupportExtensionPrime 2777 ≤ candidate := by
  rw [mixedExtensionPrimeEq2777]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2789 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2789 :
    mixedSupportExtensionPrime 2789 = 2791 := by
  rfl

theorem mixedExtensionSemanticPrime2789 :
    Nat.Prime (mixedSupportExtensionPrime 2789) ∧
      2789 < mixedSupportExtensionPrime 2789 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2789 < candidate →
        mixedSupportExtensionPrime 2789 ≤ candidate := by
  rw [mixedExtensionPrimeEq2789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2791 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2791 :
    mixedSupportExtensionPrime 2791 = 2797 := by
  rfl

theorem mixedExtensionSemanticPrime2791 :
    Nat.Prime (mixedSupportExtensionPrime 2791) ∧
      2791 < mixedSupportExtensionPrime 2791 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2791 < candidate →
        mixedSupportExtensionPrime 2791 ≤ candidate := by
  rw [mixedExtensionPrimeEq2791]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2797 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2797 :
    mixedSupportExtensionPrime 2797 = 2801 := by
  rfl

theorem mixedExtensionSemanticPrime2797 :
    Nat.Prime (mixedSupportExtensionPrime 2797) ∧
      2797 < mixedSupportExtensionPrime 2797 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2797 < candidate →
        mixedSupportExtensionPrime 2797 ≤ candidate := by
  rw [mixedExtensionPrimeEq2797]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2801 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2801 :
    mixedSupportExtensionPrime 2801 = 2803 := by
  rfl

theorem mixedExtensionSemanticPrime2801 :
    Nat.Prime (mixedSupportExtensionPrime 2801) ∧
      2801 < mixedSupportExtensionPrime 2801 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2801 < candidate →
        mixedSupportExtensionPrime 2801 ≤ candidate := by
  rw [mixedExtensionPrimeEq2801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2803 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2803 :
    mixedSupportExtensionPrime 2803 = 2819 := by
  rfl

theorem mixedExtensionSemanticPrime2803 :
    Nat.Prime (mixedSupportExtensionPrime 2803) ∧
      2803 < mixedSupportExtensionPrime 2803 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2803 < candidate →
        mixedSupportExtensionPrime 2803 ≤ candidate := by
  rw [mixedExtensionPrimeEq2803]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2819 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2819 :
    mixedSupportExtensionPrime 2819 = 2833 := by
  rfl

theorem mixedExtensionSemanticPrime2819 :
    Nat.Prime (mixedSupportExtensionPrime 2819) ∧
      2819 < mixedSupportExtensionPrime 2819 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2819 < candidate →
        mixedSupportExtensionPrime 2819 ≤ candidate := by
  rw [mixedExtensionPrimeEq2819]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2833 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2833 :
    mixedSupportExtensionPrime 2833 = 2837 := by
  rfl

theorem mixedExtensionSemanticPrime2833 :
    Nat.Prime (mixedSupportExtensionPrime 2833) ∧
      2833 < mixedSupportExtensionPrime 2833 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2833 < candidate →
        mixedSupportExtensionPrime 2833 ≤ candidate := by
  rw [mixedExtensionPrimeEq2833]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2837 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2837 :
    mixedSupportExtensionPrime 2837 = 2843 := by
  rfl

theorem mixedExtensionSemanticPrime2837 :
    Nat.Prime (mixedSupportExtensionPrime 2837) ∧
      2837 < mixedSupportExtensionPrime 2837 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2837 < candidate →
        mixedSupportExtensionPrime 2837 ≤ candidate := by
  rw [mixedExtensionPrimeEq2837]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2843 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2843 :
    mixedSupportExtensionPrime 2843 = 2851 := by
  rfl

theorem mixedExtensionSemanticPrime2843 :
    Nat.Prime (mixedSupportExtensionPrime 2843) ∧
      2843 < mixedSupportExtensionPrime 2843 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2843 < candidate →
        mixedSupportExtensionPrime 2843 ≤ candidate := by
  rw [mixedExtensionPrimeEq2843]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2851 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2851 :
    mixedSupportExtensionPrime 2851 = 2857 := by
  rfl

theorem mixedExtensionSemanticPrime2851 :
    Nat.Prime (mixedSupportExtensionPrime 2851) ∧
      2851 < mixedSupportExtensionPrime 2851 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2851 < candidate →
        mixedSupportExtensionPrime 2851 ≤ candidate := by
  rw [mixedExtensionPrimeEq2851]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2857 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2857 :
    mixedSupportExtensionPrime 2857 = 2861 := by
  rfl

theorem mixedExtensionSemanticPrime2857 :
    Nat.Prime (mixedSupportExtensionPrime 2857) ∧
      2857 < mixedSupportExtensionPrime 2857 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2857 < candidate →
        mixedSupportExtensionPrime 2857 ≤ candidate := by
  rw [mixedExtensionPrimeEq2857]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2861 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2861 :
    mixedSupportExtensionPrime 2861 = 2879 := by
  rfl

theorem mixedExtensionSemanticPrime2861 :
    Nat.Prime (mixedSupportExtensionPrime 2861) ∧
      2861 < mixedSupportExtensionPrime 2861 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2861 < candidate →
        mixedSupportExtensionPrime 2861 ≤ candidate := by
  rw [mixedExtensionPrimeEq2861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2879 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq2879 :
    mixedSupportExtensionPrime 2879 = 2887 := by
  rfl

theorem mixedExtensionSemanticPrime2879 :
    Nat.Prime (mixedSupportExtensionPrime 2879) ∧
      2879 < mixedSupportExtensionPrime 2879 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        2879 < candidate →
        mixedSupportExtensionPrime 2879 ≤ candidate := by
  rw [mixedExtensionPrimeEq2879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 2887 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0012_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0012) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0012, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime2663
  · exact mixedExtensionSemanticPrime2671
  · exact mixedExtensionSemanticPrime2677
  · exact mixedExtensionSemanticPrime2683
  · exact mixedExtensionSemanticPrime2687
  · exact mixedExtensionSemanticPrime2689
  · exact mixedExtensionSemanticPrime2693
  · exact mixedExtensionSemanticPrime2699
  · exact mixedExtensionSemanticPrime2707
  · exact mixedExtensionSemanticPrime2711
  · exact mixedExtensionSemanticPrime2713
  · exact mixedExtensionSemanticPrime2719
  · exact mixedExtensionSemanticPrime2729
  · exact mixedExtensionSemanticPrime2731
  · exact mixedExtensionSemanticPrime2741
  · exact mixedExtensionSemanticPrime2749
  · exact mixedExtensionSemanticPrime2753
  · exact mixedExtensionSemanticPrime2767
  · exact mixedExtensionSemanticPrime2777
  · exact mixedExtensionSemanticPrime2789
  · exact mixedExtensionSemanticPrime2791
  · exact mixedExtensionSemanticPrime2797
  · exact mixedExtensionSemanticPrime2801
  · exact mixedExtensionSemanticPrime2803
  · exact mixedExtensionSemanticPrime2819
  · exact mixedExtensionSemanticPrime2833
  · exact mixedExtensionSemanticPrime2837
  · exact mixedExtensionSemanticPrime2843
  · exact mixedExtensionSemanticPrime2851
  · exact mixedExtensionSemanticPrime2857
  · exact mixedExtensionSemanticPrime2861
  · exact mixedExtensionSemanticPrime2879

#print axioms mixedExtensionSemanticInputs0012_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
