import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0008 : List ℕ :=
  [1627, 1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759, 1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879]

theorem mixedExtensionPrimeEq1627 :
    mixedSupportExtensionPrime 1627 = 1637 := by
  rfl

theorem mixedExtensionSemanticPrime1627 :
    Nat.Prime (mixedSupportExtensionPrime 1627) ∧
      1627 < mixedSupportExtensionPrime 1627 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1627 < candidate →
        mixedSupportExtensionPrime 1627 ≤ candidate := by
  rw [mixedExtensionPrimeEq1627]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1637 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1637 :
    mixedSupportExtensionPrime 1637 = 1657 := by
  rfl

theorem mixedExtensionSemanticPrime1637 :
    Nat.Prime (mixedSupportExtensionPrime 1637) ∧
      1637 < mixedSupportExtensionPrime 1637 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1637 < candidate →
        mixedSupportExtensionPrime 1637 ≤ candidate := by
  rw [mixedExtensionPrimeEq1637]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1657 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1657 :
    mixedSupportExtensionPrime 1657 = 1663 := by
  rfl

theorem mixedExtensionSemanticPrime1657 :
    Nat.Prime (mixedSupportExtensionPrime 1657) ∧
      1657 < mixedSupportExtensionPrime 1657 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1657 < candidate →
        mixedSupportExtensionPrime 1657 ≤ candidate := by
  rw [mixedExtensionPrimeEq1657]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1663 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1663 :
    mixedSupportExtensionPrime 1663 = 1667 := by
  rfl

theorem mixedExtensionSemanticPrime1663 :
    Nat.Prime (mixedSupportExtensionPrime 1663) ∧
      1663 < mixedSupportExtensionPrime 1663 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1663 < candidate →
        mixedSupportExtensionPrime 1663 ≤ candidate := by
  rw [mixedExtensionPrimeEq1663]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1667 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1667 :
    mixedSupportExtensionPrime 1667 = 1669 := by
  rfl

theorem mixedExtensionSemanticPrime1667 :
    Nat.Prime (mixedSupportExtensionPrime 1667) ∧
      1667 < mixedSupportExtensionPrime 1667 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1667 < candidate →
        mixedSupportExtensionPrime 1667 ≤ candidate := by
  rw [mixedExtensionPrimeEq1667]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1669 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1669 :
    mixedSupportExtensionPrime 1669 = 1693 := by
  rfl

theorem mixedExtensionSemanticPrime1669 :
    Nat.Prime (mixedSupportExtensionPrime 1669) ∧
      1669 < mixedSupportExtensionPrime 1669 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1669 < candidate →
        mixedSupportExtensionPrime 1669 ≤ candidate := by
  rw [mixedExtensionPrimeEq1669]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1693 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1693 :
    mixedSupportExtensionPrime 1693 = 1697 := by
  rfl

theorem mixedExtensionSemanticPrime1693 :
    Nat.Prime (mixedSupportExtensionPrime 1693) ∧
      1693 < mixedSupportExtensionPrime 1693 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1693 < candidate →
        mixedSupportExtensionPrime 1693 ≤ candidate := by
  rw [mixedExtensionPrimeEq1693]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1697 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1697 :
    mixedSupportExtensionPrime 1697 = 1699 := by
  rfl

theorem mixedExtensionSemanticPrime1697 :
    Nat.Prime (mixedSupportExtensionPrime 1697) ∧
      1697 < mixedSupportExtensionPrime 1697 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1697 < candidate →
        mixedSupportExtensionPrime 1697 ≤ candidate := by
  rw [mixedExtensionPrimeEq1697]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1699 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1699 :
    mixedSupportExtensionPrime 1699 = 1709 := by
  rfl

theorem mixedExtensionSemanticPrime1699 :
    Nat.Prime (mixedSupportExtensionPrime 1699) ∧
      1699 < mixedSupportExtensionPrime 1699 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1699 < candidate →
        mixedSupportExtensionPrime 1699 ≤ candidate := by
  rw [mixedExtensionPrimeEq1699]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1709 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1709 :
    mixedSupportExtensionPrime 1709 = 1721 := by
  rfl

theorem mixedExtensionSemanticPrime1709 :
    Nat.Prime (mixedSupportExtensionPrime 1709) ∧
      1709 < mixedSupportExtensionPrime 1709 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1709 < candidate →
        mixedSupportExtensionPrime 1709 ≤ candidate := by
  rw [mixedExtensionPrimeEq1709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1721 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1721 :
    mixedSupportExtensionPrime 1721 = 1723 := by
  rfl

theorem mixedExtensionSemanticPrime1721 :
    Nat.Prime (mixedSupportExtensionPrime 1721) ∧
      1721 < mixedSupportExtensionPrime 1721 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1721 < candidate →
        mixedSupportExtensionPrime 1721 ≤ candidate := by
  rw [mixedExtensionPrimeEq1721]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1723 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1723 :
    mixedSupportExtensionPrime 1723 = 1733 := by
  rfl

theorem mixedExtensionSemanticPrime1723 :
    Nat.Prime (mixedSupportExtensionPrime 1723) ∧
      1723 < mixedSupportExtensionPrime 1723 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1723 < candidate →
        mixedSupportExtensionPrime 1723 ≤ candidate := by
  rw [mixedExtensionPrimeEq1723]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1733 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1733 :
    mixedSupportExtensionPrime 1733 = 1741 := by
  rfl

theorem mixedExtensionSemanticPrime1733 :
    Nat.Prime (mixedSupportExtensionPrime 1733) ∧
      1733 < mixedSupportExtensionPrime 1733 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1733 < candidate →
        mixedSupportExtensionPrime 1733 ≤ candidate := by
  rw [mixedExtensionPrimeEq1733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1741 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1741 :
    mixedSupportExtensionPrime 1741 = 1747 := by
  rfl

theorem mixedExtensionSemanticPrime1741 :
    Nat.Prime (mixedSupportExtensionPrime 1741) ∧
      1741 < mixedSupportExtensionPrime 1741 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1741 < candidate →
        mixedSupportExtensionPrime 1741 ≤ candidate := by
  rw [mixedExtensionPrimeEq1741]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1747 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1747 :
    mixedSupportExtensionPrime 1747 = 1753 := by
  rfl

theorem mixedExtensionSemanticPrime1747 :
    Nat.Prime (mixedSupportExtensionPrime 1747) ∧
      1747 < mixedSupportExtensionPrime 1747 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1747 < candidate →
        mixedSupportExtensionPrime 1747 ≤ candidate := by
  rw [mixedExtensionPrimeEq1747]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1753 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1753 :
    mixedSupportExtensionPrime 1753 = 1759 := by
  rfl

theorem mixedExtensionSemanticPrime1753 :
    Nat.Prime (mixedSupportExtensionPrime 1753) ∧
      1753 < mixedSupportExtensionPrime 1753 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1753 < candidate →
        mixedSupportExtensionPrime 1753 ≤ candidate := by
  rw [mixedExtensionPrimeEq1753]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1759 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1759 :
    mixedSupportExtensionPrime 1759 = 1777 := by
  rfl

theorem mixedExtensionSemanticPrime1759 :
    Nat.Prime (mixedSupportExtensionPrime 1759) ∧
      1759 < mixedSupportExtensionPrime 1759 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1759 < candidate →
        mixedSupportExtensionPrime 1759 ≤ candidate := by
  rw [mixedExtensionPrimeEq1759]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1777 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1777 :
    mixedSupportExtensionPrime 1777 = 1783 := by
  rfl

theorem mixedExtensionSemanticPrime1777 :
    Nat.Prime (mixedSupportExtensionPrime 1777) ∧
      1777 < mixedSupportExtensionPrime 1777 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1777 < candidate →
        mixedSupportExtensionPrime 1777 ≤ candidate := by
  rw [mixedExtensionPrimeEq1777]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1783 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1783 :
    mixedSupportExtensionPrime 1783 = 1787 := by
  rfl

theorem mixedExtensionSemanticPrime1783 :
    Nat.Prime (mixedSupportExtensionPrime 1783) ∧
      1783 < mixedSupportExtensionPrime 1783 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1783 < candidate →
        mixedSupportExtensionPrime 1783 ≤ candidate := by
  rw [mixedExtensionPrimeEq1783]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1787 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1787 :
    mixedSupportExtensionPrime 1787 = 1789 := by
  rfl

theorem mixedExtensionSemanticPrime1787 :
    Nat.Prime (mixedSupportExtensionPrime 1787) ∧
      1787 < mixedSupportExtensionPrime 1787 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1787 < candidate →
        mixedSupportExtensionPrime 1787 ≤ candidate := by
  rw [mixedExtensionPrimeEq1787]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1789 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1789 :
    mixedSupportExtensionPrime 1789 = 1801 := by
  rfl

theorem mixedExtensionSemanticPrime1789 :
    Nat.Prime (mixedSupportExtensionPrime 1789) ∧
      1789 < mixedSupportExtensionPrime 1789 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1789 < candidate →
        mixedSupportExtensionPrime 1789 ≤ candidate := by
  rw [mixedExtensionPrimeEq1789]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1801 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1801 :
    mixedSupportExtensionPrime 1801 = 1811 := by
  rfl

theorem mixedExtensionSemanticPrime1801 :
    Nat.Prime (mixedSupportExtensionPrime 1801) ∧
      1801 < mixedSupportExtensionPrime 1801 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1801 < candidate →
        mixedSupportExtensionPrime 1801 ≤ candidate := by
  rw [mixedExtensionPrimeEq1801]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1811 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1811 :
    mixedSupportExtensionPrime 1811 = 1823 := by
  rfl

theorem mixedExtensionSemanticPrime1811 :
    Nat.Prime (mixedSupportExtensionPrime 1811) ∧
      1811 < mixedSupportExtensionPrime 1811 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1811 < candidate →
        mixedSupportExtensionPrime 1811 ≤ candidate := by
  rw [mixedExtensionPrimeEq1811]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1823 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1823 :
    mixedSupportExtensionPrime 1823 = 1831 := by
  rfl

theorem mixedExtensionSemanticPrime1823 :
    Nat.Prime (mixedSupportExtensionPrime 1823) ∧
      1823 < mixedSupportExtensionPrime 1823 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1823 < candidate →
        mixedSupportExtensionPrime 1823 ≤ candidate := by
  rw [mixedExtensionPrimeEq1823]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1831 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1831 :
    mixedSupportExtensionPrime 1831 = 1847 := by
  rfl

theorem mixedExtensionSemanticPrime1831 :
    Nat.Prime (mixedSupportExtensionPrime 1831) ∧
      1831 < mixedSupportExtensionPrime 1831 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1831 < candidate →
        mixedSupportExtensionPrime 1831 ≤ candidate := by
  rw [mixedExtensionPrimeEq1831]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1847 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1847 :
    mixedSupportExtensionPrime 1847 = 1861 := by
  rfl

theorem mixedExtensionSemanticPrime1847 :
    Nat.Prime (mixedSupportExtensionPrime 1847) ∧
      1847 < mixedSupportExtensionPrime 1847 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1847 < candidate →
        mixedSupportExtensionPrime 1847 ≤ candidate := by
  rw [mixedExtensionPrimeEq1847]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1861 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1861 :
    mixedSupportExtensionPrime 1861 = 1867 := by
  rfl

theorem mixedExtensionSemanticPrime1861 :
    Nat.Prime (mixedSupportExtensionPrime 1861) ∧
      1861 < mixedSupportExtensionPrime 1861 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1861 < candidate →
        mixedSupportExtensionPrime 1861 ≤ candidate := by
  rw [mixedExtensionPrimeEq1861]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1867 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1867 :
    mixedSupportExtensionPrime 1867 = 1871 := by
  rfl

theorem mixedExtensionSemanticPrime1867 :
    Nat.Prime (mixedSupportExtensionPrime 1867) ∧
      1867 < mixedSupportExtensionPrime 1867 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1867 < candidate →
        mixedSupportExtensionPrime 1867 ≤ candidate := by
  rw [mixedExtensionPrimeEq1867]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1871 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1871 :
    mixedSupportExtensionPrime 1871 = 1873 := by
  rfl

theorem mixedExtensionSemanticPrime1871 :
    Nat.Prime (mixedSupportExtensionPrime 1871) ∧
      1871 < mixedSupportExtensionPrime 1871 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1871 < candidate →
        mixedSupportExtensionPrime 1871 ≤ candidate := by
  rw [mixedExtensionPrimeEq1871]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1873 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1873 :
    mixedSupportExtensionPrime 1873 = 1877 := by
  rfl

theorem mixedExtensionSemanticPrime1873 :
    Nat.Prime (mixedSupportExtensionPrime 1873) ∧
      1873 < mixedSupportExtensionPrime 1873 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1873 < candidate →
        mixedSupportExtensionPrime 1873 ≤ candidate := by
  rw [mixedExtensionPrimeEq1873]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1877 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1877 :
    mixedSupportExtensionPrime 1877 = 1879 := by
  rfl

theorem mixedExtensionSemanticPrime1877 :
    Nat.Prime (mixedSupportExtensionPrime 1877) ∧
      1877 < mixedSupportExtensionPrime 1877 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1877 < candidate →
        mixedSupportExtensionPrime 1877 ≤ candidate := by
  rw [mixedExtensionPrimeEq1877]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1879 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1879 :
    mixedSupportExtensionPrime 1879 = 1889 := by
  rfl

theorem mixedExtensionSemanticPrime1879 :
    Nat.Prime (mixedSupportExtensionPrime 1879) ∧
      1879 < mixedSupportExtensionPrime 1879 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1879 < candidate →
        mixedSupportExtensionPrime 1879 ≤ candidate := by
  rw [mixedExtensionPrimeEq1879]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1889 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0008_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0008) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0008, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime1627
  · exact mixedExtensionSemanticPrime1637
  · exact mixedExtensionSemanticPrime1657
  · exact mixedExtensionSemanticPrime1663
  · exact mixedExtensionSemanticPrime1667
  · exact mixedExtensionSemanticPrime1669
  · exact mixedExtensionSemanticPrime1693
  · exact mixedExtensionSemanticPrime1697
  · exact mixedExtensionSemanticPrime1699
  · exact mixedExtensionSemanticPrime1709
  · exact mixedExtensionSemanticPrime1721
  · exact mixedExtensionSemanticPrime1723
  · exact mixedExtensionSemanticPrime1733
  · exact mixedExtensionSemanticPrime1741
  · exact mixedExtensionSemanticPrime1747
  · exact mixedExtensionSemanticPrime1753
  · exact mixedExtensionSemanticPrime1759
  · exact mixedExtensionSemanticPrime1777
  · exact mixedExtensionSemanticPrime1783
  · exact mixedExtensionSemanticPrime1787
  · exact mixedExtensionSemanticPrime1789
  · exact mixedExtensionSemanticPrime1801
  · exact mixedExtensionSemanticPrime1811
  · exact mixedExtensionSemanticPrime1823
  · exact mixedExtensionSemanticPrime1831
  · exact mixedExtensionSemanticPrime1847
  · exact mixedExtensionSemanticPrime1861
  · exact mixedExtensionSemanticPrime1867
  · exact mixedExtensionSemanticPrime1871
  · exact mixedExtensionSemanticPrime1873
  · exact mixedExtensionSemanticPrime1877
  · exact mixedExtensionSemanticPrime1879

#print axioms mixedExtensionSemanticInputs0008_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
