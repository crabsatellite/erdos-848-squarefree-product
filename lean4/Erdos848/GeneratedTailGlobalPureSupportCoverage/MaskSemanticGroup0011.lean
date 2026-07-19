import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime683 :
    supportQrMaskWords 683 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        683).take 11 := by
  rfl

theorem baseSupportPrimeMem683 :
    683 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq683 :
    supportExtensionPrime 683 = 691 := by
  rfl

theorem extensionSemanticPrime683 :
    Nat.Prime (supportExtensionPrime 683) ∧
      683 < supportExtensionPrime 683 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        683 < q → supportExtensionPrime 683 ≤ q := by
  rw [extensionPrimeEq683]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 691 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime691 :
    supportQrMaskWords 691 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        691).take 11 := by
  rfl

theorem baseSupportPrimeMem691 :
    691 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq691 :
    supportExtensionPrime 691 = 701 := by
  rfl

theorem extensionSemanticPrime691 :
    Nat.Prime (supportExtensionPrime 691) ∧
      691 < supportExtensionPrime 691 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        691 < q → supportExtensionPrime 691 ≤ q := by
  rw [extensionPrimeEq691]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 701 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime701 :
    supportQrMaskWords 701 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        701).take 11 := by
  rfl

theorem baseSupportPrimeMem701 :
    701 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq701 :
    supportExtensionPrime 701 = 709 := by
  rfl

theorem extensionSemanticPrime701 :
    Nat.Prime (supportExtensionPrime 701) ∧
      701 < supportExtensionPrime 701 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        701 < q → supportExtensionPrime 701 ≤ q := by
  rw [extensionPrimeEq701]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 709 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime709 :
    supportQrMaskWords 709 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        709).take 11 := by
  rfl

theorem baseSupportPrimeMem709 :
    709 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq709 :
    supportExtensionPrime 709 = 719 := by
  rfl

theorem extensionSemanticPrime709 :
    Nat.Prime (supportExtensionPrime 709) ∧
      709 < supportExtensionPrime 709 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        709 < q → supportExtensionPrime 709 ≤ q := by
  rw [extensionPrimeEq709]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 719 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime719 :
    supportQrMaskWords 719 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        719).take 11 := by
  rfl

theorem baseSupportPrimeMem719 :
    719 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq719 :
    supportExtensionPrime 719 = 727 := by
  rfl

theorem extensionSemanticPrime719 :
    Nat.Prime (supportExtensionPrime 719) ∧
      719 < supportExtensionPrime 719 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        719 < q → supportExtensionPrime 719 ≤ q := by
  rw [extensionPrimeEq719]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 727 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime727 :
    supportQrMaskWords 727 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        727).take 11 := by
  rfl

theorem baseSupportPrimeMem727 :
    727 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq727 :
    supportExtensionPrime 727 = 733 := by
  rfl

theorem extensionSemanticPrime727 :
    Nat.Prime (supportExtensionPrime 727) ∧
      727 < supportExtensionPrime 727 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        727 < q → supportExtensionPrime 727 ≤ q := by
  rw [extensionPrimeEq727]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 733 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime733 :
    supportQrMaskWords 733 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        733).take 11 := by
  rfl

theorem baseSupportPrimeMem733 :
    733 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq733 :
    supportExtensionPrime 733 = 739 := by
  rfl

theorem extensionSemanticPrime733 :
    Nat.Prime (supportExtensionPrime 733) ∧
      733 < supportExtensionPrime 733 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        733 < q → supportExtensionPrime 733 ≤ q := by
  rw [extensionPrimeEq733]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 739 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime739 :
    supportQrMaskWords 739 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        739).take 11 := by
  rfl

theorem baseSupportPrimeMem739 :
    739 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq739 :
    supportExtensionPrime 739 = 743 := by
  rfl

theorem extensionSemanticPrime739 :
    Nat.Prime (supportExtensionPrime 739) ∧
      739 < supportExtensionPrime 739 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        739 < q → supportExtensionPrime 739 ≤ q := by
  rw [extensionPrimeEq739]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 743 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime743 :
    supportQrMaskWords 743 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        743).take 11 := by
  rfl

theorem baseSupportPrimeMem743 :
    743 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq743 :
    supportExtensionPrime 743 = 751 := by
  rfl

theorem extensionSemanticPrime743 :
    Nat.Prime (supportExtensionPrime 743) ∧
      743 < supportExtensionPrime 743 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        743 < q → supportExtensionPrime 743 ≤ q := by
  rw [extensionPrimeEq743]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 751 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime751 :
    supportQrMaskWords 751 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        751).take 11 := by
  rfl

theorem baseSupportPrimeMem751 :
    751 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq751 :
    supportExtensionPrime 751 = 757 := by
  rfl

theorem extensionSemanticPrime751 :
    Nat.Prime (supportExtensionPrime 751) ∧
      751 < supportExtensionPrime 751 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        751 < q → supportExtensionPrime 751 ≤ q := by
  rw [extensionPrimeEq751]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 757 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime757 :
    supportQrMaskWords 757 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        757).take 11 := by
  rfl

theorem baseSupportPrimeMem757 :
    757 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq757 :
    supportExtensionPrime 757 = 761 := by
  rfl

theorem extensionSemanticPrime757 :
    Nat.Prime (supportExtensionPrime 757) ∧
      757 < supportExtensionPrime 757 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        757 < q → supportExtensionPrime 757 ≤ q := by
  rw [extensionPrimeEq757]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 761 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0011
    {p : ℕ}
    (hLower : 678 ≤ p) (hUpper : p ≤ 757)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime683
  · exact maskSemanticPrime691
  · exact maskSemanticPrime701
  · exact maskSemanticPrime709
  · exact maskSemanticPrime719
  · exact maskSemanticPrime727
  · exact maskSemanticPrime733
  · exact maskSemanticPrime739
  · exact maskSemanticPrime743
  · exact maskSemanticPrime751
  · exact maskSemanticPrime757

theorem baseSupportPrimeMemGroup0011
    {p : ℕ}
    (hLower : 678 ≤ p) (hUpper : p ≤ 757)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem683
  · exact baseSupportPrimeMem691
  · exact baseSupportPrimeMem701
  · exact baseSupportPrimeMem709
  · exact baseSupportPrimeMem719
  · exact baseSupportPrimeMem727
  · exact baseSupportPrimeMem733
  · exact baseSupportPrimeMem739
  · exact baseSupportPrimeMem743
  · exact baseSupportPrimeMem751
  · exact baseSupportPrimeMem757

theorem extensionSemanticGroup0011
    {p : ℕ}
    (hLower : 678 ≤ p) (hUpper : p ≤ 757)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime683
  · exact extensionSemanticPrime691
  · exact extensionSemanticPrime701
  · exact extensionSemanticPrime709
  · exact extensionSemanticPrime719
  · exact extensionSemanticPrime727
  · exact extensionSemanticPrime733
  · exact extensionSemanticPrime739
  · exact extensionSemanticPrime743
  · exact extensionSemanticPrime751
  · exact extensionSemanticPrime757

end Erdos848.GeneratedTailGlobalPureSupportCoverage
