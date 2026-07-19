import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0003 : List ℕ :=
  [521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727]

theorem mixedExtensionPrimeEq521 :
    mixedSupportExtensionPrime 521 = 523 := by
  rfl

theorem mixedExtensionSemanticPrime521 :
    Nat.Prime (mixedSupportExtensionPrime 521) ∧
      521 < mixedSupportExtensionPrime 521 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        521 < candidate →
        mixedSupportExtensionPrime 521 ≤ candidate := by
  rw [mixedExtensionPrimeEq521]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 523 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq523 :
    mixedSupportExtensionPrime 523 = 541 := by
  rfl

theorem mixedExtensionSemanticPrime523 :
    Nat.Prime (mixedSupportExtensionPrime 523) ∧
      523 < mixedSupportExtensionPrime 523 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        523 < candidate →
        mixedSupportExtensionPrime 523 ≤ candidate := by
  rw [mixedExtensionPrimeEq523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 541 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq541 :
    mixedSupportExtensionPrime 541 = 547 := by
  rfl

theorem mixedExtensionSemanticPrime541 :
    Nat.Prime (mixedSupportExtensionPrime 541) ∧
      541 < mixedSupportExtensionPrime 541 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        541 < candidate →
        mixedSupportExtensionPrime 541 ≤ candidate := by
  rw [mixedExtensionPrimeEq541]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 547 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq547 :
    mixedSupportExtensionPrime 547 = 557 := by
  rfl

theorem mixedExtensionSemanticPrime547 :
    Nat.Prime (mixedSupportExtensionPrime 547) ∧
      547 < mixedSupportExtensionPrime 547 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        547 < candidate →
        mixedSupportExtensionPrime 547 ≤ candidate := by
  rw [mixedExtensionPrimeEq547]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 557 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq557 :
    mixedSupportExtensionPrime 557 = 563 := by
  rfl

theorem mixedExtensionSemanticPrime557 :
    Nat.Prime (mixedSupportExtensionPrime 557) ∧
      557 < mixedSupportExtensionPrime 557 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        557 < candidate →
        mixedSupportExtensionPrime 557 ≤ candidate := by
  rw [mixedExtensionPrimeEq557]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 563 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq563 :
    mixedSupportExtensionPrime 563 = 569 := by
  rfl

theorem mixedExtensionSemanticPrime563 :
    Nat.Prime (mixedSupportExtensionPrime 563) ∧
      563 < mixedSupportExtensionPrime 563 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        563 < candidate →
        mixedSupportExtensionPrime 563 ≤ candidate := by
  rw [mixedExtensionPrimeEq563]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 569 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq569 :
    mixedSupportExtensionPrime 569 = 571 := by
  rfl

theorem mixedExtensionSemanticPrime569 :
    Nat.Prime (mixedSupportExtensionPrime 569) ∧
      569 < mixedSupportExtensionPrime 569 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        569 < candidate →
        mixedSupportExtensionPrime 569 ≤ candidate := by
  rw [mixedExtensionPrimeEq569]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 571 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq571 :
    mixedSupportExtensionPrime 571 = 577 := by
  rfl

theorem mixedExtensionSemanticPrime571 :
    Nat.Prime (mixedSupportExtensionPrime 571) ∧
      571 < mixedSupportExtensionPrime 571 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        571 < candidate →
        mixedSupportExtensionPrime 571 ≤ candidate := by
  rw [mixedExtensionPrimeEq571]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 577 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq577 :
    mixedSupportExtensionPrime 577 = 587 := by
  rfl

theorem mixedExtensionSemanticPrime577 :
    Nat.Prime (mixedSupportExtensionPrime 577) ∧
      577 < mixedSupportExtensionPrime 577 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        577 < candidate →
        mixedSupportExtensionPrime 577 ≤ candidate := by
  rw [mixedExtensionPrimeEq577]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 587 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq587 :
    mixedSupportExtensionPrime 587 = 593 := by
  rfl

theorem mixedExtensionSemanticPrime587 :
    Nat.Prime (mixedSupportExtensionPrime 587) ∧
      587 < mixedSupportExtensionPrime 587 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        587 < candidate →
        mixedSupportExtensionPrime 587 ≤ candidate := by
  rw [mixedExtensionPrimeEq587]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 593 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq593 :
    mixedSupportExtensionPrime 593 = 599 := by
  rfl

theorem mixedExtensionSemanticPrime593 :
    Nat.Prime (mixedSupportExtensionPrime 593) ∧
      593 < mixedSupportExtensionPrime 593 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        593 < candidate →
        mixedSupportExtensionPrime 593 ≤ candidate := by
  rw [mixedExtensionPrimeEq593]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 599 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq599 :
    mixedSupportExtensionPrime 599 = 601 := by
  rfl

theorem mixedExtensionSemanticPrime599 :
    Nat.Prime (mixedSupportExtensionPrime 599) ∧
      599 < mixedSupportExtensionPrime 599 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        599 < candidate →
        mixedSupportExtensionPrime 599 ≤ candidate := by
  rw [mixedExtensionPrimeEq599]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 601 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq601 :
    mixedSupportExtensionPrime 601 = 607 := by
  rfl

theorem mixedExtensionSemanticPrime601 :
    Nat.Prime (mixedSupportExtensionPrime 601) ∧
      601 < mixedSupportExtensionPrime 601 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        601 < candidate →
        mixedSupportExtensionPrime 601 ≤ candidate := by
  rw [mixedExtensionPrimeEq601]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 607 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq607 :
    mixedSupportExtensionPrime 607 = 613 := by
  rfl

theorem mixedExtensionSemanticPrime607 :
    Nat.Prime (mixedSupportExtensionPrime 607) ∧
      607 < mixedSupportExtensionPrime 607 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        607 < candidate →
        mixedSupportExtensionPrime 607 ≤ candidate := by
  rw [mixedExtensionPrimeEq607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 613 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq613 :
    mixedSupportExtensionPrime 613 = 617 := by
  rfl

theorem mixedExtensionSemanticPrime613 :
    Nat.Prime (mixedSupportExtensionPrime 613) ∧
      613 < mixedSupportExtensionPrime 613 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        613 < candidate →
        mixedSupportExtensionPrime 613 ≤ candidate := by
  rw [mixedExtensionPrimeEq613]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 617 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq617 :
    mixedSupportExtensionPrime 617 = 619 := by
  rfl

theorem mixedExtensionSemanticPrime617 :
    Nat.Prime (mixedSupportExtensionPrime 617) ∧
      617 < mixedSupportExtensionPrime 617 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        617 < candidate →
        mixedSupportExtensionPrime 617 ≤ candidate := by
  rw [mixedExtensionPrimeEq617]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 619 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq619 :
    mixedSupportExtensionPrime 619 = 631 := by
  rfl

theorem mixedExtensionSemanticPrime619 :
    Nat.Prime (mixedSupportExtensionPrime 619) ∧
      619 < mixedSupportExtensionPrime 619 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        619 < candidate →
        mixedSupportExtensionPrime 619 ≤ candidate := by
  rw [mixedExtensionPrimeEq619]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 631 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq631 :
    mixedSupportExtensionPrime 631 = 641 := by
  rfl

theorem mixedExtensionSemanticPrime631 :
    Nat.Prime (mixedSupportExtensionPrime 631) ∧
      631 < mixedSupportExtensionPrime 631 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        631 < candidate →
        mixedSupportExtensionPrime 631 ≤ candidate := by
  rw [mixedExtensionPrimeEq631]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 641 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq641 :
    mixedSupportExtensionPrime 641 = 643 := by
  rfl

theorem mixedExtensionSemanticPrime641 :
    Nat.Prime (mixedSupportExtensionPrime 641) ∧
      641 < mixedSupportExtensionPrime 641 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        641 < candidate →
        mixedSupportExtensionPrime 641 ≤ candidate := by
  rw [mixedExtensionPrimeEq641]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 643 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq643 :
    mixedSupportExtensionPrime 643 = 647 := by
  rfl

theorem mixedExtensionSemanticPrime643 :
    Nat.Prime (mixedSupportExtensionPrime 643) ∧
      643 < mixedSupportExtensionPrime 643 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        643 < candidate →
        mixedSupportExtensionPrime 643 ≤ candidate := by
  rw [mixedExtensionPrimeEq643]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 647 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq647 :
    mixedSupportExtensionPrime 647 = 653 := by
  rfl

theorem mixedExtensionSemanticPrime647 :
    Nat.Prime (mixedSupportExtensionPrime 647) ∧
      647 < mixedSupportExtensionPrime 647 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        647 < candidate →
        mixedSupportExtensionPrime 647 ≤ candidate := by
  rw [mixedExtensionPrimeEq647]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 653 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq653 :
    mixedSupportExtensionPrime 653 = 659 := by
  rfl

theorem mixedExtensionSemanticPrime653 :
    Nat.Prime (mixedSupportExtensionPrime 653) ∧
      653 < mixedSupportExtensionPrime 653 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        653 < candidate →
        mixedSupportExtensionPrime 653 ≤ candidate := by
  rw [mixedExtensionPrimeEq653]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 659 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq659 :
    mixedSupportExtensionPrime 659 = 661 := by
  rfl

theorem mixedExtensionSemanticPrime659 :
    Nat.Prime (mixedSupportExtensionPrime 659) ∧
      659 < mixedSupportExtensionPrime 659 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        659 < candidate →
        mixedSupportExtensionPrime 659 ≤ candidate := by
  rw [mixedExtensionPrimeEq659]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 661 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq661 :
    mixedSupportExtensionPrime 661 = 673 := by
  rfl

theorem mixedExtensionSemanticPrime661 :
    Nat.Prime (mixedSupportExtensionPrime 661) ∧
      661 < mixedSupportExtensionPrime 661 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        661 < candidate →
        mixedSupportExtensionPrime 661 ≤ candidate := by
  rw [mixedExtensionPrimeEq661]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 673 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq673 :
    mixedSupportExtensionPrime 673 = 677 := by
  rfl

theorem mixedExtensionSemanticPrime673 :
    Nat.Prime (mixedSupportExtensionPrime 673) ∧
      673 < mixedSupportExtensionPrime 673 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        673 < candidate →
        mixedSupportExtensionPrime 673 ≤ candidate := by
  rw [mixedExtensionPrimeEq673]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 677 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq677 :
    mixedSupportExtensionPrime 677 = 683 := by
  rfl

theorem mixedExtensionSemanticPrime677 :
    Nat.Prime (mixedSupportExtensionPrime 677) ∧
      677 < mixedSupportExtensionPrime 677 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        677 < candidate →
        mixedSupportExtensionPrime 677 ≤ candidate := by
  rw [mixedExtensionPrimeEq677]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 683 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq683 :
    mixedSupportExtensionPrime 683 = 691 := by
  rfl

theorem mixedExtensionSemanticPrime683 :
    Nat.Prime (mixedSupportExtensionPrime 683) ∧
      683 < mixedSupportExtensionPrime 683 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        683 < candidate →
        mixedSupportExtensionPrime 683 ≤ candidate := by
  rw [mixedExtensionPrimeEq683]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 691 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq691 :
    mixedSupportExtensionPrime 691 = 701 := by
  rfl

theorem mixedExtensionSemanticPrime691 :
    Nat.Prime (mixedSupportExtensionPrime 691) ∧
      691 < mixedSupportExtensionPrime 691 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        691 < candidate →
        mixedSupportExtensionPrime 691 ≤ candidate := by
  rw [mixedExtensionPrimeEq691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 701 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq701 :
    mixedSupportExtensionPrime 701 = 709 := by
  rfl

theorem mixedExtensionSemanticPrime701 :
    Nat.Prime (mixedSupportExtensionPrime 701) ∧
      701 < mixedSupportExtensionPrime 701 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        701 < candidate →
        mixedSupportExtensionPrime 701 ≤ candidate := by
  rw [mixedExtensionPrimeEq701]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 709 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq709 :
    mixedSupportExtensionPrime 709 = 719 := by
  rfl

theorem mixedExtensionSemanticPrime709 :
    Nat.Prime (mixedSupportExtensionPrime 709) ∧
      709 < mixedSupportExtensionPrime 709 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        709 < candidate →
        mixedSupportExtensionPrime 709 ≤ candidate := by
  rw [mixedExtensionPrimeEq709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 719 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq719 :
    mixedSupportExtensionPrime 719 = 727 := by
  rfl

theorem mixedExtensionSemanticPrime719 :
    Nat.Prime (mixedSupportExtensionPrime 719) ∧
      719 < mixedSupportExtensionPrime 719 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        719 < candidate →
        mixedSupportExtensionPrime 719 ≤ candidate := by
  rw [mixedExtensionPrimeEq719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 727 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq727 :
    mixedSupportExtensionPrime 727 = 733 := by
  rfl

theorem mixedExtensionSemanticPrime727 :
    Nat.Prime (mixedSupportExtensionPrime 727) ∧
      727 < mixedSupportExtensionPrime 727 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        727 < candidate →
        mixedSupportExtensionPrime 727 ≤ candidate := by
  rw [mixedExtensionPrimeEq727]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 733 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0003_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0003) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0003, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime521
  · exact mixedExtensionSemanticPrime523
  · exact mixedExtensionSemanticPrime541
  · exact mixedExtensionSemanticPrime547
  · exact mixedExtensionSemanticPrime557
  · exact mixedExtensionSemanticPrime563
  · exact mixedExtensionSemanticPrime569
  · exact mixedExtensionSemanticPrime571
  · exact mixedExtensionSemanticPrime577
  · exact mixedExtensionSemanticPrime587
  · exact mixedExtensionSemanticPrime593
  · exact mixedExtensionSemanticPrime599
  · exact mixedExtensionSemanticPrime601
  · exact mixedExtensionSemanticPrime607
  · exact mixedExtensionSemanticPrime613
  · exact mixedExtensionSemanticPrime617
  · exact mixedExtensionSemanticPrime619
  · exact mixedExtensionSemanticPrime631
  · exact mixedExtensionSemanticPrime641
  · exact mixedExtensionSemanticPrime643
  · exact mixedExtensionSemanticPrime647
  · exact mixedExtensionSemanticPrime653
  · exact mixedExtensionSemanticPrime659
  · exact mixedExtensionSemanticPrime661
  · exact mixedExtensionSemanticPrime673
  · exact mixedExtensionSemanticPrime677
  · exact mixedExtensionSemanticPrime683
  · exact mixedExtensionSemanticPrime691
  · exact mixedExtensionSemanticPrime701
  · exact mixedExtensionSemanticPrime709
  · exact mixedExtensionSemanticPrime719
  · exact mixedExtensionSemanticPrime727

#print axioms mixedExtensionSemanticInputs0003_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
