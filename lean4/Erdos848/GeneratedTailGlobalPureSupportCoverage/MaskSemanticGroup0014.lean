import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime919 :
    supportQrMaskWords 919 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        919).take 11 := by
  rfl

theorem baseSupportPrimeMem919 :
    919 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq919 :
    supportExtensionPrime 919 = 929 := by
  rfl

theorem extensionSemanticPrime919 :
    Nat.Prime (supportExtensionPrime 919) ∧
      919 < supportExtensionPrime 919 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        919 < q → supportExtensionPrime 919 ≤ q := by
  rw [extensionPrimeEq919]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 929 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime929 :
    supportQrMaskWords 929 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        929).take 11 := by
  rfl

theorem baseSupportPrimeMem929 :
    929 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq929 :
    supportExtensionPrime 929 = 937 := by
  rfl

theorem extensionSemanticPrime929 :
    Nat.Prime (supportExtensionPrime 929) ∧
      929 < supportExtensionPrime 929 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        929 < q → supportExtensionPrime 929 ≤ q := by
  rw [extensionPrimeEq929]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 937 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime937 :
    supportQrMaskWords 937 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        937).take 11 := by
  rfl

theorem baseSupportPrimeMem937 :
    937 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq937 :
    supportExtensionPrime 937 = 941 := by
  rfl

theorem extensionSemanticPrime937 :
    Nat.Prime (supportExtensionPrime 937) ∧
      937 < supportExtensionPrime 937 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        937 < q → supportExtensionPrime 937 ≤ q := by
  rw [extensionPrimeEq937]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 941 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime941 :
    supportQrMaskWords 941 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        941).take 11 := by
  rfl

theorem baseSupportPrimeMem941 :
    941 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq941 :
    supportExtensionPrime 941 = 947 := by
  rfl

theorem extensionSemanticPrime941 :
    Nat.Prime (supportExtensionPrime 941) ∧
      941 < supportExtensionPrime 941 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        941 < q → supportExtensionPrime 941 ≤ q := by
  rw [extensionPrimeEq941]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 947 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime947 :
    supportQrMaskWords 947 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        947).take 11 := by
  rfl

theorem baseSupportPrimeMem947 :
    947 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq947 :
    supportExtensionPrime 947 = 953 := by
  rfl

theorem extensionSemanticPrime947 :
    Nat.Prime (supportExtensionPrime 947) ∧
      947 < supportExtensionPrime 947 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        947 < q → supportExtensionPrime 947 ≤ q := by
  rw [extensionPrimeEq947]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 953 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime953 :
    supportQrMaskWords 953 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        953).take 11 := by
  rfl

theorem baseSupportPrimeMem953 :
    953 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq953 :
    supportExtensionPrime 953 = 967 := by
  rfl

theorem extensionSemanticPrime953 :
    Nat.Prime (supportExtensionPrime 953) ∧
      953 < supportExtensionPrime 953 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        953 < q → supportExtensionPrime 953 ≤ q := by
  rw [extensionPrimeEq953]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 967 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime967 :
    supportQrMaskWords 967 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        967).take 11 := by
  rfl

theorem baseSupportPrimeMem967 :
    967 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq967 :
    supportExtensionPrime 967 = 971 := by
  rfl

theorem extensionSemanticPrime967 :
    Nat.Prime (supportExtensionPrime 967) ∧
      967 < supportExtensionPrime 967 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        967 < q → supportExtensionPrime 967 ≤ q := by
  rw [extensionPrimeEq967]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 971 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime971 :
    supportQrMaskWords 971 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        971).take 11 := by
  rfl

theorem baseSupportPrimeMem971 :
    971 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq971 :
    supportExtensionPrime 971 = 977 := by
  rfl

theorem extensionSemanticPrime971 :
    Nat.Prime (supportExtensionPrime 971) ∧
      971 < supportExtensionPrime 971 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        971 < q → supportExtensionPrime 971 ≤ q := by
  rw [extensionPrimeEq971]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 977 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime977 :
    supportQrMaskWords 977 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        977).take 11 := by
  rfl

theorem baseSupportPrimeMem977 :
    977 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq977 :
    supportExtensionPrime 977 = 983 := by
  rfl

theorem extensionSemanticPrime977 :
    Nat.Prime (supportExtensionPrime 977) ∧
      977 < supportExtensionPrime 977 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        977 < q → supportExtensionPrime 977 ≤ q := by
  rw [extensionPrimeEq977]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 983 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime983 :
    supportQrMaskWords 983 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        983).take 11 := by
  rfl

theorem baseSupportPrimeMem983 :
    983 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq983 :
    supportExtensionPrime 983 = 991 := by
  rfl

theorem extensionSemanticPrime983 :
    Nat.Prime (supportExtensionPrime 983) ∧
      983 < supportExtensionPrime 983 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        983 < q → supportExtensionPrime 983 ≤ q := by
  rw [extensionPrimeEq983]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 991 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime991 :
    supportQrMaskWords 991 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        991).take 11 := by
  rfl

theorem baseSupportPrimeMem991 :
    991 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq991 :
    supportExtensionPrime 991 = 997 := by
  rfl

theorem extensionSemanticPrime991 :
    Nat.Prime (supportExtensionPrime 991) ∧
      991 < supportExtensionPrime 991 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        991 < q → supportExtensionPrime 991 ≤ q := by
  rw [extensionPrimeEq991]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 997 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0014
    {p : ℕ}
    (hLower : 912 ≤ p) (hUpper : p ≤ 991)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime919
  · exact maskSemanticPrime929
  · exact maskSemanticPrime937
  · exact maskSemanticPrime941
  · exact maskSemanticPrime947
  · exact maskSemanticPrime953
  · exact maskSemanticPrime967
  · exact maskSemanticPrime971
  · exact maskSemanticPrime977
  · exact maskSemanticPrime983
  · exact maskSemanticPrime991

theorem baseSupportPrimeMemGroup0014
    {p : ℕ}
    (hLower : 912 ≤ p) (hUpper : p ≤ 991)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem919
  · exact baseSupportPrimeMem929
  · exact baseSupportPrimeMem937
  · exact baseSupportPrimeMem941
  · exact baseSupportPrimeMem947
  · exact baseSupportPrimeMem953
  · exact baseSupportPrimeMem967
  · exact baseSupportPrimeMem971
  · exact baseSupportPrimeMem977
  · exact baseSupportPrimeMem983
  · exact baseSupportPrimeMem991

theorem extensionSemanticGroup0014
    {p : ℕ}
    (hLower : 912 ≤ p) (hUpper : p ≤ 991)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime919
  · exact extensionSemanticPrime929
  · exact extensionSemanticPrime937
  · exact extensionSemanticPrime941
  · exact extensionSemanticPrime947
  · exact extensionSemanticPrime953
  · exact extensionSemanticPrime967
  · exact extensionSemanticPrime971
  · exact extensionSemanticPrime977
  · exact extensionSemanticPrime983
  · exact extensionSemanticPrime991

end Erdos848.GeneratedTailGlobalPureSupportCoverage
