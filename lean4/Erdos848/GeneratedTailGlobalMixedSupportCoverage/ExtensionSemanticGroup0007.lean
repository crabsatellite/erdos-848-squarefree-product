import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0007 : List ℕ :=
  [1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621]

theorem mixedExtensionPrimeEq1429 :
    mixedSupportExtensionPrime 1429 = 1433 := by
  rfl

theorem mixedExtensionSemanticPrime1429 :
    Nat.Prime (mixedSupportExtensionPrime 1429) ∧
      1429 < mixedSupportExtensionPrime 1429 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1429 < candidate →
        mixedSupportExtensionPrime 1429 ≤ candidate := by
  rw [mixedExtensionPrimeEq1429]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1433 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1433 :
    mixedSupportExtensionPrime 1433 = 1439 := by
  rfl

theorem mixedExtensionSemanticPrime1433 :
    Nat.Prime (mixedSupportExtensionPrime 1433) ∧
      1433 < mixedSupportExtensionPrime 1433 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1433 < candidate →
        mixedSupportExtensionPrime 1433 ≤ candidate := by
  rw [mixedExtensionPrimeEq1433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1439 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1439 :
    mixedSupportExtensionPrime 1439 = 1447 := by
  rfl

theorem mixedExtensionSemanticPrime1439 :
    Nat.Prime (mixedSupportExtensionPrime 1439) ∧
      1439 < mixedSupportExtensionPrime 1439 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1439 < candidate →
        mixedSupportExtensionPrime 1439 ≤ candidate := by
  rw [mixedExtensionPrimeEq1439]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1447 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1447 :
    mixedSupportExtensionPrime 1447 = 1451 := by
  rfl

theorem mixedExtensionSemanticPrime1447 :
    Nat.Prime (mixedSupportExtensionPrime 1447) ∧
      1447 < mixedSupportExtensionPrime 1447 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1447 < candidate →
        mixedSupportExtensionPrime 1447 ≤ candidate := by
  rw [mixedExtensionPrimeEq1447]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1451 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1451 :
    mixedSupportExtensionPrime 1451 = 1453 := by
  rfl

theorem mixedExtensionSemanticPrime1451 :
    Nat.Prime (mixedSupportExtensionPrime 1451) ∧
      1451 < mixedSupportExtensionPrime 1451 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1451 < candidate →
        mixedSupportExtensionPrime 1451 ≤ candidate := by
  rw [mixedExtensionPrimeEq1451]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1453 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1453 :
    mixedSupportExtensionPrime 1453 = 1459 := by
  rfl

theorem mixedExtensionSemanticPrime1453 :
    Nat.Prime (mixedSupportExtensionPrime 1453) ∧
      1453 < mixedSupportExtensionPrime 1453 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1453 < candidate →
        mixedSupportExtensionPrime 1453 ≤ candidate := by
  rw [mixedExtensionPrimeEq1453]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1459 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1459 :
    mixedSupportExtensionPrime 1459 = 1471 := by
  rfl

theorem mixedExtensionSemanticPrime1459 :
    Nat.Prime (mixedSupportExtensionPrime 1459) ∧
      1459 < mixedSupportExtensionPrime 1459 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1459 < candidate →
        mixedSupportExtensionPrime 1459 ≤ candidate := by
  rw [mixedExtensionPrimeEq1459]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1471 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1471 :
    mixedSupportExtensionPrime 1471 = 1481 := by
  rfl

theorem mixedExtensionSemanticPrime1471 :
    Nat.Prime (mixedSupportExtensionPrime 1471) ∧
      1471 < mixedSupportExtensionPrime 1471 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1471 < candidate →
        mixedSupportExtensionPrime 1471 ≤ candidate := by
  rw [mixedExtensionPrimeEq1471]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1481 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1481 :
    mixedSupportExtensionPrime 1481 = 1483 := by
  rfl

theorem mixedExtensionSemanticPrime1481 :
    Nat.Prime (mixedSupportExtensionPrime 1481) ∧
      1481 < mixedSupportExtensionPrime 1481 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1481 < candidate →
        mixedSupportExtensionPrime 1481 ≤ candidate := by
  rw [mixedExtensionPrimeEq1481]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1483 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1483 :
    mixedSupportExtensionPrime 1483 = 1487 := by
  rfl

theorem mixedExtensionSemanticPrime1483 :
    Nat.Prime (mixedSupportExtensionPrime 1483) ∧
      1483 < mixedSupportExtensionPrime 1483 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1483 < candidate →
        mixedSupportExtensionPrime 1483 ≤ candidate := by
  rw [mixedExtensionPrimeEq1483]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1487 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1487 :
    mixedSupportExtensionPrime 1487 = 1489 := by
  rfl

theorem mixedExtensionSemanticPrime1487 :
    Nat.Prime (mixedSupportExtensionPrime 1487) ∧
      1487 < mixedSupportExtensionPrime 1487 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1487 < candidate →
        mixedSupportExtensionPrime 1487 ≤ candidate := by
  rw [mixedExtensionPrimeEq1487]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1489 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1489 :
    mixedSupportExtensionPrime 1489 = 1493 := by
  rfl

theorem mixedExtensionSemanticPrime1489 :
    Nat.Prime (mixedSupportExtensionPrime 1489) ∧
      1489 < mixedSupportExtensionPrime 1489 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1489 < candidate →
        mixedSupportExtensionPrime 1489 ≤ candidate := by
  rw [mixedExtensionPrimeEq1489]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1493 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1493 :
    mixedSupportExtensionPrime 1493 = 1499 := by
  rfl

theorem mixedExtensionSemanticPrime1493 :
    Nat.Prime (mixedSupportExtensionPrime 1493) ∧
      1493 < mixedSupportExtensionPrime 1493 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1493 < candidate →
        mixedSupportExtensionPrime 1493 ≤ candidate := by
  rw [mixedExtensionPrimeEq1493]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1499 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1499 :
    mixedSupportExtensionPrime 1499 = 1511 := by
  rfl

theorem mixedExtensionSemanticPrime1499 :
    Nat.Prime (mixedSupportExtensionPrime 1499) ∧
      1499 < mixedSupportExtensionPrime 1499 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1499 < candidate →
        mixedSupportExtensionPrime 1499 ≤ candidate := by
  rw [mixedExtensionPrimeEq1499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1511 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1511 :
    mixedSupportExtensionPrime 1511 = 1523 := by
  rfl

theorem mixedExtensionSemanticPrime1511 :
    Nat.Prime (mixedSupportExtensionPrime 1511) ∧
      1511 < mixedSupportExtensionPrime 1511 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1511 < candidate →
        mixedSupportExtensionPrime 1511 ≤ candidate := by
  rw [mixedExtensionPrimeEq1511]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1523 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1523 :
    mixedSupportExtensionPrime 1523 = 1531 := by
  rfl

theorem mixedExtensionSemanticPrime1523 :
    Nat.Prime (mixedSupportExtensionPrime 1523) ∧
      1523 < mixedSupportExtensionPrime 1523 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1523 < candidate →
        mixedSupportExtensionPrime 1523 ≤ candidate := by
  rw [mixedExtensionPrimeEq1523]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1531 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1531 :
    mixedSupportExtensionPrime 1531 = 1543 := by
  rfl

theorem mixedExtensionSemanticPrime1531 :
    Nat.Prime (mixedSupportExtensionPrime 1531) ∧
      1531 < mixedSupportExtensionPrime 1531 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1531 < candidate →
        mixedSupportExtensionPrime 1531 ≤ candidate := by
  rw [mixedExtensionPrimeEq1531]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1543 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1543 :
    mixedSupportExtensionPrime 1543 = 1549 := by
  rfl

theorem mixedExtensionSemanticPrime1543 :
    Nat.Prime (mixedSupportExtensionPrime 1543) ∧
      1543 < mixedSupportExtensionPrime 1543 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1543 < candidate →
        mixedSupportExtensionPrime 1543 ≤ candidate := by
  rw [mixedExtensionPrimeEq1543]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1549 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1549 :
    mixedSupportExtensionPrime 1549 = 1553 := by
  rfl

theorem mixedExtensionSemanticPrime1549 :
    Nat.Prime (mixedSupportExtensionPrime 1549) ∧
      1549 < mixedSupportExtensionPrime 1549 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1549 < candidate →
        mixedSupportExtensionPrime 1549 ≤ candidate := by
  rw [mixedExtensionPrimeEq1549]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1553 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1553 :
    mixedSupportExtensionPrime 1553 = 1559 := by
  rfl

theorem mixedExtensionSemanticPrime1553 :
    Nat.Prime (mixedSupportExtensionPrime 1553) ∧
      1553 < mixedSupportExtensionPrime 1553 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1553 < candidate →
        mixedSupportExtensionPrime 1553 ≤ candidate := by
  rw [mixedExtensionPrimeEq1553]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1559 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1559 :
    mixedSupportExtensionPrime 1559 = 1567 := by
  rfl

theorem mixedExtensionSemanticPrime1559 :
    Nat.Prime (mixedSupportExtensionPrime 1559) ∧
      1559 < mixedSupportExtensionPrime 1559 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1559 < candidate →
        mixedSupportExtensionPrime 1559 ≤ candidate := by
  rw [mixedExtensionPrimeEq1559]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1567 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1567 :
    mixedSupportExtensionPrime 1567 = 1571 := by
  rfl

theorem mixedExtensionSemanticPrime1567 :
    Nat.Prime (mixedSupportExtensionPrime 1567) ∧
      1567 < mixedSupportExtensionPrime 1567 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1567 < candidate →
        mixedSupportExtensionPrime 1567 ≤ candidate := by
  rw [mixedExtensionPrimeEq1567]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1571 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1571 :
    mixedSupportExtensionPrime 1571 = 1579 := by
  rfl

theorem mixedExtensionSemanticPrime1571 :
    Nat.Prime (mixedSupportExtensionPrime 1571) ∧
      1571 < mixedSupportExtensionPrime 1571 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1571 < candidate →
        mixedSupportExtensionPrime 1571 ≤ candidate := by
  rw [mixedExtensionPrimeEq1571]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1579 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1579 :
    mixedSupportExtensionPrime 1579 = 1583 := by
  rfl

theorem mixedExtensionSemanticPrime1579 :
    Nat.Prime (mixedSupportExtensionPrime 1579) ∧
      1579 < mixedSupportExtensionPrime 1579 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1579 < candidate →
        mixedSupportExtensionPrime 1579 ≤ candidate := by
  rw [mixedExtensionPrimeEq1579]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1583 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1583 :
    mixedSupportExtensionPrime 1583 = 1597 := by
  rfl

theorem mixedExtensionSemanticPrime1583 :
    Nat.Prime (mixedSupportExtensionPrime 1583) ∧
      1583 < mixedSupportExtensionPrime 1583 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1583 < candidate →
        mixedSupportExtensionPrime 1583 ≤ candidate := by
  rw [mixedExtensionPrimeEq1583]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1597 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1597 :
    mixedSupportExtensionPrime 1597 = 1601 := by
  rfl

theorem mixedExtensionSemanticPrime1597 :
    Nat.Prime (mixedSupportExtensionPrime 1597) ∧
      1597 < mixedSupportExtensionPrime 1597 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1597 < candidate →
        mixedSupportExtensionPrime 1597 ≤ candidate := by
  rw [mixedExtensionPrimeEq1597]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1601 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1601 :
    mixedSupportExtensionPrime 1601 = 1607 := by
  rfl

theorem mixedExtensionSemanticPrime1601 :
    Nat.Prime (mixedSupportExtensionPrime 1601) ∧
      1601 < mixedSupportExtensionPrime 1601 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1601 < candidate →
        mixedSupportExtensionPrime 1601 ≤ candidate := by
  rw [mixedExtensionPrimeEq1601]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1607 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1607 :
    mixedSupportExtensionPrime 1607 = 1609 := by
  rfl

theorem mixedExtensionSemanticPrime1607 :
    Nat.Prime (mixedSupportExtensionPrime 1607) ∧
      1607 < mixedSupportExtensionPrime 1607 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1607 < candidate →
        mixedSupportExtensionPrime 1607 ≤ candidate := by
  rw [mixedExtensionPrimeEq1607]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1609 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1609 :
    mixedSupportExtensionPrime 1609 = 1613 := by
  rfl

theorem mixedExtensionSemanticPrime1609 :
    Nat.Prime (mixedSupportExtensionPrime 1609) ∧
      1609 < mixedSupportExtensionPrime 1609 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1609 < candidate →
        mixedSupportExtensionPrime 1609 ≤ candidate := by
  rw [mixedExtensionPrimeEq1609]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1613 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1613 :
    mixedSupportExtensionPrime 1613 = 1619 := by
  rfl

theorem mixedExtensionSemanticPrime1613 :
    Nat.Prime (mixedSupportExtensionPrime 1613) ∧
      1613 < mixedSupportExtensionPrime 1613 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1613 < candidate →
        mixedSupportExtensionPrime 1613 ≤ candidate := by
  rw [mixedExtensionPrimeEq1613]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1619 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1619 :
    mixedSupportExtensionPrime 1619 = 1621 := by
  rfl

theorem mixedExtensionSemanticPrime1619 :
    Nat.Prime (mixedSupportExtensionPrime 1619) ∧
      1619 < mixedSupportExtensionPrime 1619 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1619 < candidate →
        mixedSupportExtensionPrime 1619 ≤ candidate := by
  rw [mixedExtensionPrimeEq1619]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1621 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1621 :
    mixedSupportExtensionPrime 1621 = 1627 := by
  rfl

theorem mixedExtensionSemanticPrime1621 :
    Nat.Prime (mixedSupportExtensionPrime 1621) ∧
      1621 < mixedSupportExtensionPrime 1621 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1621 < candidate →
        mixedSupportExtensionPrime 1621 ≤ candidate := by
  rw [mixedExtensionPrimeEq1621]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1627 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0007_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0007) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0007, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime1429
  · exact mixedExtensionSemanticPrime1433
  · exact mixedExtensionSemanticPrime1439
  · exact mixedExtensionSemanticPrime1447
  · exact mixedExtensionSemanticPrime1451
  · exact mixedExtensionSemanticPrime1453
  · exact mixedExtensionSemanticPrime1459
  · exact mixedExtensionSemanticPrime1471
  · exact mixedExtensionSemanticPrime1481
  · exact mixedExtensionSemanticPrime1483
  · exact mixedExtensionSemanticPrime1487
  · exact mixedExtensionSemanticPrime1489
  · exact mixedExtensionSemanticPrime1493
  · exact mixedExtensionSemanticPrime1499
  · exact mixedExtensionSemanticPrime1511
  · exact mixedExtensionSemanticPrime1523
  · exact mixedExtensionSemanticPrime1531
  · exact mixedExtensionSemanticPrime1543
  · exact mixedExtensionSemanticPrime1549
  · exact mixedExtensionSemanticPrime1553
  · exact mixedExtensionSemanticPrime1559
  · exact mixedExtensionSemanticPrime1567
  · exact mixedExtensionSemanticPrime1571
  · exact mixedExtensionSemanticPrime1579
  · exact mixedExtensionSemanticPrime1583
  · exact mixedExtensionSemanticPrime1597
  · exact mixedExtensionSemanticPrime1601
  · exact mixedExtensionSemanticPrime1607
  · exact mixedExtensionSemanticPrime1609
  · exact mixedExtensionSemanticPrime1613
  · exact mixedExtensionSemanticPrime1619
  · exact mixedExtensionSemanticPrime1621

#print axioms mixedExtensionSemanticInputs0007_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
