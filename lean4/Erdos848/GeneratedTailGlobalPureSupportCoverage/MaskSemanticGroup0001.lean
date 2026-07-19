import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime43 :
    supportQrMaskWords 43 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        43).take 11 := by
  rfl

theorem baseSupportPrimeMem43 :
    43 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq43 :
    supportExtensionPrime 43 = 47 := by
  rfl

theorem extensionSemanticPrime43 :
    Nat.Prime (supportExtensionPrime 43) ∧
      43 < supportExtensionPrime 43 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        43 < q → supportExtensionPrime 43 ≤ q := by
  rw [extensionPrimeEq43]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 47 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime47 :
    supportQrMaskWords 47 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        47).take 11 := by
  rfl

theorem baseSupportPrimeMem47 :
    47 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq47 :
    supportExtensionPrime 47 = 53 := by
  rfl

theorem extensionSemanticPrime47 :
    Nat.Prime (supportExtensionPrime 47) ∧
      47 < supportExtensionPrime 47 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        47 < q → supportExtensionPrime 47 ≤ q := by
  rw [extensionPrimeEq47]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 53 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime53 :
    supportQrMaskWords 53 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        53).take 11 := by
  rfl

theorem baseSupportPrimeMem53 :
    53 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq53 :
    supportExtensionPrime 53 = 59 := by
  rfl

theorem extensionSemanticPrime53 :
    Nat.Prime (supportExtensionPrime 53) ∧
      53 < supportExtensionPrime 53 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        53 < q → supportExtensionPrime 53 ≤ q := by
  rw [extensionPrimeEq53]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 59 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime59 :
    supportQrMaskWords 59 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        59).take 11 := by
  rfl

theorem baseSupportPrimeMem59 :
    59 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq59 :
    supportExtensionPrime 59 = 61 := by
  rfl

theorem extensionSemanticPrime59 :
    Nat.Prime (supportExtensionPrime 59) ∧
      59 < supportExtensionPrime 59 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        59 < q → supportExtensionPrime 59 ≤ q := by
  rw [extensionPrimeEq59]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 61 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime61 :
    supportQrMaskWords 61 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        61).take 11 := by
  rfl

theorem baseSupportPrimeMem61 :
    61 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq61 :
    supportExtensionPrime 61 = 67 := by
  rfl

theorem extensionSemanticPrime61 :
    Nat.Prime (supportExtensionPrime 61) ∧
      61 < supportExtensionPrime 61 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        61 < q → supportExtensionPrime 61 ≤ q := by
  rw [extensionPrimeEq61]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 67 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime67 :
    supportQrMaskWords 67 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        67).take 11 := by
  rfl

theorem baseSupportPrimeMem67 :
    67 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq67 :
    supportExtensionPrime 67 = 71 := by
  rfl

theorem extensionSemanticPrime67 :
    Nat.Prime (supportExtensionPrime 67) ∧
      67 < supportExtensionPrime 67 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        67 < q → supportExtensionPrime 67 ≤ q := by
  rw [extensionPrimeEq67]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 71 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime71 :
    supportQrMaskWords 71 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        71).take 11 := by
  rfl

theorem baseSupportPrimeMem71 :
    71 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq71 :
    supportExtensionPrime 71 = 73 := by
  rfl

theorem extensionSemanticPrime71 :
    Nat.Prime (supportExtensionPrime 71) ∧
      71 < supportExtensionPrime 71 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        71 < q → supportExtensionPrime 71 ≤ q := by
  rw [extensionPrimeEq71]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 73 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime73 :
    supportQrMaskWords 73 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        73).take 11 := by
  rfl

theorem baseSupportPrimeMem73 :
    73 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq73 :
    supportExtensionPrime 73 = 79 := by
  rfl

theorem extensionSemanticPrime73 :
    Nat.Prime (supportExtensionPrime 73) ∧
      73 < supportExtensionPrime 73 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        73 < q → supportExtensionPrime 73 ≤ q := by
  rw [extensionPrimeEq73]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 79 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime79 :
    supportQrMaskWords 79 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        79).take 11 := by
  rfl

theorem baseSupportPrimeMem79 :
    79 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq79 :
    supportExtensionPrime 79 = 83 := by
  rfl

theorem extensionSemanticPrime79 :
    Nat.Prime (supportExtensionPrime 79) ∧
      79 < supportExtensionPrime 79 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        79 < q → supportExtensionPrime 79 ≤ q := by
  rw [extensionPrimeEq79]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 83 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime83 :
    supportQrMaskWords 83 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        83).take 11 := by
  rfl

theorem baseSupportPrimeMem83 :
    83 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq83 :
    supportExtensionPrime 83 = 89 := by
  rfl

theorem extensionSemanticPrime83 :
    Nat.Prime (supportExtensionPrime 83) ∧
      83 < supportExtensionPrime 83 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        83 < q → supportExtensionPrime 83 ≤ q := by
  rw [extensionPrimeEq83]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 89 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticPrime89 :
    supportQrMaskWords 89 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        89).take 11 := by
  rfl

theorem baseSupportPrimeMem89 :
    89 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem extensionPrimeEq89 :
    supportExtensionPrime 89 = 97 := by
  rfl

theorem extensionSemanticPrime89 :
    Nat.Prime (supportExtensionPrime 89) ∧
      89 < supportExtensionPrime 89 ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        89 < q → supportExtensionPrime 89 ≤ q := by
  rw [extensionPrimeEq89]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro q hq hqLower
    by_contra hnot
    have hqUpper : q < 97 :=
      Nat.lt_of_not_ge hnot
    interval_cases q <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hq

theorem maskSemanticGroup0001
    {p : ℕ}
    (hLower : 42 ≤ p) (hUpper : p ≤ 89)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime43
  · exact maskSemanticPrime47
  · exact maskSemanticPrime53
  · exact maskSemanticPrime59
  · exact maskSemanticPrime61
  · exact maskSemanticPrime67
  · exact maskSemanticPrime71
  · exact maskSemanticPrime73
  · exact maskSemanticPrime79
  · exact maskSemanticPrime83
  · exact maskSemanticPrime89

theorem baseSupportPrimeMemGroup0001
    {p : ℕ}
    (hLower : 42 ≤ p) (hUpper : p ≤ 89)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem43
  · exact baseSupportPrimeMem47
  · exact baseSupportPrimeMem53
  · exact baseSupportPrimeMem59
  · exact baseSupportPrimeMem61
  · exact baseSupportPrimeMem67
  · exact baseSupportPrimeMem71
  · exact baseSupportPrimeMem73
  · exact baseSupportPrimeMem79
  · exact baseSupportPrimeMem83
  · exact baseSupportPrimeMem89

theorem extensionSemanticGroup0001
    {p : ℕ}
    (hLower : 42 ≤ p) (hUpper : p ≤ 89)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact extensionSemanticPrime43
  · exact extensionSemanticPrime47
  · exact extensionSemanticPrime53
  · exact extensionSemanticPrime59
  · exact extensionSemanticPrime61
  · exact extensionSemanticPrime67
  · exact extensionSemanticPrime71
  · exact extensionSemanticPrime73
  · exact extensionSemanticPrime79
  · exact extensionSemanticPrime83
  · exact extensionSemanticPrime89

end Erdos848.GeneratedTailGlobalPureSupportCoverage
