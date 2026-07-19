import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0030 : List ℕ :=
  [7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867]

theorem mixedExtensionPrimeEq7577 :
    mixedSupportExtensionPrime 7577 = 7583 := by
  rfl

theorem mixedExtensionSemanticPrime7577 :
    Nat.Prime (mixedSupportExtensionPrime 7577) ∧
      7577 < mixedSupportExtensionPrime 7577 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7577 < candidate →
        mixedSupportExtensionPrime 7577 ≤ candidate := by
  rw [mixedExtensionPrimeEq7577]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7583 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7583 :
    mixedSupportExtensionPrime 7583 = 7589 := by
  rfl

theorem mixedExtensionSemanticPrime7583 :
    Nat.Prime (mixedSupportExtensionPrime 7583) ∧
      7583 < mixedSupportExtensionPrime 7583 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7583 < candidate →
        mixedSupportExtensionPrime 7583 ≤ candidate := by
  rw [mixedExtensionPrimeEq7583]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7589 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7589 :
    mixedSupportExtensionPrime 7589 = 7591 := by
  rfl

theorem mixedExtensionSemanticPrime7589 :
    Nat.Prime (mixedSupportExtensionPrime 7589) ∧
      7589 < mixedSupportExtensionPrime 7589 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7589 < candidate →
        mixedSupportExtensionPrime 7589 ≤ candidate := by
  rw [mixedExtensionPrimeEq7589]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7591 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7591 :
    mixedSupportExtensionPrime 7591 = 7603 := by
  rfl

theorem mixedExtensionSemanticPrime7591 :
    Nat.Prime (mixedSupportExtensionPrime 7591) ∧
      7591 < mixedSupportExtensionPrime 7591 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7591 < candidate →
        mixedSupportExtensionPrime 7591 ≤ candidate := by
  rw [mixedExtensionPrimeEq7591]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7603 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7603 :
    mixedSupportExtensionPrime 7603 = 7607 := by
  rfl

theorem mixedExtensionSemanticPrime7603 :
    Nat.Prime (mixedSupportExtensionPrime 7603) ∧
      7603 < mixedSupportExtensionPrime 7603 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7603 < candidate →
        mixedSupportExtensionPrime 7603 ≤ candidate := by
  rw [mixedExtensionPrimeEq7603]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7607 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7607 :
    mixedSupportExtensionPrime 7607 = 7621 := by
  rfl

theorem mixedExtensionSemanticPrime7607 :
    Nat.Prime (mixedSupportExtensionPrime 7607) ∧
      7607 < mixedSupportExtensionPrime 7607 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7607 < candidate →
        mixedSupportExtensionPrime 7607 ≤ candidate := by
  rw [mixedExtensionPrimeEq7607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7621 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7621 :
    mixedSupportExtensionPrime 7621 = 7639 := by
  rfl

theorem mixedExtensionSemanticPrime7621 :
    Nat.Prime (mixedSupportExtensionPrime 7621) ∧
      7621 < mixedSupportExtensionPrime 7621 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7621 < candidate →
        mixedSupportExtensionPrime 7621 ≤ candidate := by
  rw [mixedExtensionPrimeEq7621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7639 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7639 :
    mixedSupportExtensionPrime 7639 = 7643 := by
  rfl

theorem mixedExtensionSemanticPrime7639 :
    Nat.Prime (mixedSupportExtensionPrime 7639) ∧
      7639 < mixedSupportExtensionPrime 7639 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7639 < candidate →
        mixedSupportExtensionPrime 7639 ≤ candidate := by
  rw [mixedExtensionPrimeEq7639]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7643 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7643 :
    mixedSupportExtensionPrime 7643 = 7649 := by
  rfl

theorem mixedExtensionSemanticPrime7643 :
    Nat.Prime (mixedSupportExtensionPrime 7643) ∧
      7643 < mixedSupportExtensionPrime 7643 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7643 < candidate →
        mixedSupportExtensionPrime 7643 ≤ candidate := by
  rw [mixedExtensionPrimeEq7643]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7649 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7649 :
    mixedSupportExtensionPrime 7649 = 7669 := by
  rfl

theorem mixedExtensionSemanticPrime7649 :
    Nat.Prime (mixedSupportExtensionPrime 7649) ∧
      7649 < mixedSupportExtensionPrime 7649 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7649 < candidate →
        mixedSupportExtensionPrime 7649 ≤ candidate := by
  rw [mixedExtensionPrimeEq7649]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7669 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7669 :
    mixedSupportExtensionPrime 7669 = 7673 := by
  rfl

theorem mixedExtensionSemanticPrime7669 :
    Nat.Prime (mixedSupportExtensionPrime 7669) ∧
      7669 < mixedSupportExtensionPrime 7669 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7669 < candidate →
        mixedSupportExtensionPrime 7669 ≤ candidate := by
  rw [mixedExtensionPrimeEq7669]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7673 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7673 :
    mixedSupportExtensionPrime 7673 = 7681 := by
  rfl

theorem mixedExtensionSemanticPrime7673 :
    Nat.Prime (mixedSupportExtensionPrime 7673) ∧
      7673 < mixedSupportExtensionPrime 7673 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7673 < candidate →
        mixedSupportExtensionPrime 7673 ≤ candidate := by
  rw [mixedExtensionPrimeEq7673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7681 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7681 :
    mixedSupportExtensionPrime 7681 = 7687 := by
  rfl

theorem mixedExtensionSemanticPrime7681 :
    Nat.Prime (mixedSupportExtensionPrime 7681) ∧
      7681 < mixedSupportExtensionPrime 7681 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7681 < candidate →
        mixedSupportExtensionPrime 7681 ≤ candidate := by
  rw [mixedExtensionPrimeEq7681]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7687 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7687 :
    mixedSupportExtensionPrime 7687 = 7691 := by
  rfl

theorem mixedExtensionSemanticPrime7687 :
    Nat.Prime (mixedSupportExtensionPrime 7687) ∧
      7687 < mixedSupportExtensionPrime 7687 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7687 < candidate →
        mixedSupportExtensionPrime 7687 ≤ candidate := by
  rw [mixedExtensionPrimeEq7687]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7691 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7691 :
    mixedSupportExtensionPrime 7691 = 7699 := by
  rfl

theorem mixedExtensionSemanticPrime7691 :
    Nat.Prime (mixedSupportExtensionPrime 7691) ∧
      7691 < mixedSupportExtensionPrime 7691 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7691 < candidate →
        mixedSupportExtensionPrime 7691 ≤ candidate := by
  rw [mixedExtensionPrimeEq7691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7699 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7699 :
    mixedSupportExtensionPrime 7699 = 7703 := by
  rfl

theorem mixedExtensionSemanticPrime7699 :
    Nat.Prime (mixedSupportExtensionPrime 7699) ∧
      7699 < mixedSupportExtensionPrime 7699 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7699 < candidate →
        mixedSupportExtensionPrime 7699 ≤ candidate := by
  rw [mixedExtensionPrimeEq7699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7703 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7703 :
    mixedSupportExtensionPrime 7703 = 7717 := by
  rfl

theorem mixedExtensionSemanticPrime7703 :
    Nat.Prime (mixedSupportExtensionPrime 7703) ∧
      7703 < mixedSupportExtensionPrime 7703 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7703 < candidate →
        mixedSupportExtensionPrime 7703 ≤ candidate := by
  rw [mixedExtensionPrimeEq7703]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7717 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7717 :
    mixedSupportExtensionPrime 7717 = 7723 := by
  rfl

theorem mixedExtensionSemanticPrime7717 :
    Nat.Prime (mixedSupportExtensionPrime 7717) ∧
      7717 < mixedSupportExtensionPrime 7717 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7717 < candidate →
        mixedSupportExtensionPrime 7717 ≤ candidate := by
  rw [mixedExtensionPrimeEq7717]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7723 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7723 :
    mixedSupportExtensionPrime 7723 = 7727 := by
  rfl

theorem mixedExtensionSemanticPrime7723 :
    Nat.Prime (mixedSupportExtensionPrime 7723) ∧
      7723 < mixedSupportExtensionPrime 7723 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7723 < candidate →
        mixedSupportExtensionPrime 7723 ≤ candidate := by
  rw [mixedExtensionPrimeEq7723]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7727 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7727 :
    mixedSupportExtensionPrime 7727 = 7741 := by
  rfl

theorem mixedExtensionSemanticPrime7727 :
    Nat.Prime (mixedSupportExtensionPrime 7727) ∧
      7727 < mixedSupportExtensionPrime 7727 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7727 < candidate →
        mixedSupportExtensionPrime 7727 ≤ candidate := by
  rw [mixedExtensionPrimeEq7727]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7741 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7741 :
    mixedSupportExtensionPrime 7741 = 7753 := by
  rfl

theorem mixedExtensionSemanticPrime7741 :
    Nat.Prime (mixedSupportExtensionPrime 7741) ∧
      7741 < mixedSupportExtensionPrime 7741 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7741 < candidate →
        mixedSupportExtensionPrime 7741 ≤ candidate := by
  rw [mixedExtensionPrimeEq7741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7753 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7753 :
    mixedSupportExtensionPrime 7753 = 7757 := by
  rfl

theorem mixedExtensionSemanticPrime7753 :
    Nat.Prime (mixedSupportExtensionPrime 7753) ∧
      7753 < mixedSupportExtensionPrime 7753 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7753 < candidate →
        mixedSupportExtensionPrime 7753 ≤ candidate := by
  rw [mixedExtensionPrimeEq7753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7757 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7757 :
    mixedSupportExtensionPrime 7757 = 7759 := by
  rfl

theorem mixedExtensionSemanticPrime7757 :
    Nat.Prime (mixedSupportExtensionPrime 7757) ∧
      7757 < mixedSupportExtensionPrime 7757 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7757 < candidate →
        mixedSupportExtensionPrime 7757 ≤ candidate := by
  rw [mixedExtensionPrimeEq7757]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7759 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7759 :
    mixedSupportExtensionPrime 7759 = 7789 := by
  rfl

theorem mixedExtensionSemanticPrime7759 :
    Nat.Prime (mixedSupportExtensionPrime 7759) ∧
      7759 < mixedSupportExtensionPrime 7759 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7759 < candidate →
        mixedSupportExtensionPrime 7759 ≤ candidate := by
  rw [mixedExtensionPrimeEq7759]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7789 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7789 :
    mixedSupportExtensionPrime 7789 = 7793 := by
  rfl

theorem mixedExtensionSemanticPrime7789 :
    Nat.Prime (mixedSupportExtensionPrime 7789) ∧
      7789 < mixedSupportExtensionPrime 7789 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7789 < candidate →
        mixedSupportExtensionPrime 7789 ≤ candidate := by
  rw [mixedExtensionPrimeEq7789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7793 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7793 :
    mixedSupportExtensionPrime 7793 = 7817 := by
  rfl

theorem mixedExtensionSemanticPrime7793 :
    Nat.Prime (mixedSupportExtensionPrime 7793) ∧
      7793 < mixedSupportExtensionPrime 7793 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7793 < candidate →
        mixedSupportExtensionPrime 7793 ≤ candidate := by
  rw [mixedExtensionPrimeEq7793]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7817 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7817 :
    mixedSupportExtensionPrime 7817 = 7823 := by
  rfl

theorem mixedExtensionSemanticPrime7817 :
    Nat.Prime (mixedSupportExtensionPrime 7817) ∧
      7817 < mixedSupportExtensionPrime 7817 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7817 < candidate →
        mixedSupportExtensionPrime 7817 ≤ candidate := by
  rw [mixedExtensionPrimeEq7817]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7823 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7823 :
    mixedSupportExtensionPrime 7823 = 7829 := by
  rfl

theorem mixedExtensionSemanticPrime7823 :
    Nat.Prime (mixedSupportExtensionPrime 7823) ∧
      7823 < mixedSupportExtensionPrime 7823 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7823 < candidate →
        mixedSupportExtensionPrime 7823 ≤ candidate := by
  rw [mixedExtensionPrimeEq7823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7829 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7829 :
    mixedSupportExtensionPrime 7829 = 7841 := by
  rfl

theorem mixedExtensionSemanticPrime7829 :
    Nat.Prime (mixedSupportExtensionPrime 7829) ∧
      7829 < mixedSupportExtensionPrime 7829 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7829 < candidate →
        mixedSupportExtensionPrime 7829 ≤ candidate := by
  rw [mixedExtensionPrimeEq7829]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7841 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7841 :
    mixedSupportExtensionPrime 7841 = 7853 := by
  rfl

theorem mixedExtensionSemanticPrime7841 :
    Nat.Prime (mixedSupportExtensionPrime 7841) ∧
      7841 < mixedSupportExtensionPrime 7841 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7841 < candidate →
        mixedSupportExtensionPrime 7841 ≤ candidate := by
  rw [mixedExtensionPrimeEq7841]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7853 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7853 :
    mixedSupportExtensionPrime 7853 = 7867 := by
  rfl

theorem mixedExtensionSemanticPrime7853 :
    Nat.Prime (mixedSupportExtensionPrime 7853) ∧
      7853 < mixedSupportExtensionPrime 7853 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7853 < candidate →
        mixedSupportExtensionPrime 7853 ≤ candidate := by
  rw [mixedExtensionPrimeEq7853]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7867 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq7867 :
    mixedSupportExtensionPrime 7867 = 7873 := by
  rfl

theorem mixedExtensionSemanticPrime7867 :
    Nat.Prime (mixedSupportExtensionPrime 7867) ∧
      7867 < mixedSupportExtensionPrime 7867 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        7867 < candidate →
        mixedSupportExtensionPrime 7867 ≤ candidate := by
  rw [mixedExtensionPrimeEq7867]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 7873 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0030_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0030) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0030, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime7577
  · exact mixedExtensionSemanticPrime7583
  · exact mixedExtensionSemanticPrime7589
  · exact mixedExtensionSemanticPrime7591
  · exact mixedExtensionSemanticPrime7603
  · exact mixedExtensionSemanticPrime7607
  · exact mixedExtensionSemanticPrime7621
  · exact mixedExtensionSemanticPrime7639
  · exact mixedExtensionSemanticPrime7643
  · exact mixedExtensionSemanticPrime7649
  · exact mixedExtensionSemanticPrime7669
  · exact mixedExtensionSemanticPrime7673
  · exact mixedExtensionSemanticPrime7681
  · exact mixedExtensionSemanticPrime7687
  · exact mixedExtensionSemanticPrime7691
  · exact mixedExtensionSemanticPrime7699
  · exact mixedExtensionSemanticPrime7703
  · exact mixedExtensionSemanticPrime7717
  · exact mixedExtensionSemanticPrime7723
  · exact mixedExtensionSemanticPrime7727
  · exact mixedExtensionSemanticPrime7741
  · exact mixedExtensionSemanticPrime7753
  · exact mixedExtensionSemanticPrime7757
  · exact mixedExtensionSemanticPrime7759
  · exact mixedExtensionSemanticPrime7789
  · exact mixedExtensionSemanticPrime7793
  · exact mixedExtensionSemanticPrime7817
  · exact mixedExtensionSemanticPrime7823
  · exact mixedExtensionSemanticPrime7829
  · exact mixedExtensionSemanticPrime7841
  · exact mixedExtensionSemanticPrime7853
  · exact mixedExtensionSemanticPrime7867

#print axioms mixedExtensionSemanticInputs0030_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
