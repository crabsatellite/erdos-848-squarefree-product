import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0006 : List ℕ :=
  [1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427]

theorem mixedExtensionPrimeEq1181 :
    mixedSupportExtensionPrime 1181 = 1187 := by
  rfl

theorem mixedExtensionSemanticPrime1181 :
    Nat.Prime (mixedSupportExtensionPrime 1181) ∧
      1181 < mixedSupportExtensionPrime 1181 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1181 < candidate →
        mixedSupportExtensionPrime 1181 ≤ candidate := by
  rw [mixedExtensionPrimeEq1181]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1187 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1187 :
    mixedSupportExtensionPrime 1187 = 1193 := by
  rfl

theorem mixedExtensionSemanticPrime1187 :
    Nat.Prime (mixedSupportExtensionPrime 1187) ∧
      1187 < mixedSupportExtensionPrime 1187 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1187 < candidate →
        mixedSupportExtensionPrime 1187 ≤ candidate := by
  rw [mixedExtensionPrimeEq1187]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1193 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1193 :
    mixedSupportExtensionPrime 1193 = 1201 := by
  rfl

theorem mixedExtensionSemanticPrime1193 :
    Nat.Prime (mixedSupportExtensionPrime 1193) ∧
      1193 < mixedSupportExtensionPrime 1193 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1193 < candidate →
        mixedSupportExtensionPrime 1193 ≤ candidate := by
  rw [mixedExtensionPrimeEq1193]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1201 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1201 :
    mixedSupportExtensionPrime 1201 = 1213 := by
  rfl

theorem mixedExtensionSemanticPrime1201 :
    Nat.Prime (mixedSupportExtensionPrime 1201) ∧
      1201 < mixedSupportExtensionPrime 1201 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1201 < candidate →
        mixedSupportExtensionPrime 1201 ≤ candidate := by
  rw [mixedExtensionPrimeEq1201]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1213 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1213 :
    mixedSupportExtensionPrime 1213 = 1217 := by
  rfl

theorem mixedExtensionSemanticPrime1213 :
    Nat.Prime (mixedSupportExtensionPrime 1213) ∧
      1213 < mixedSupportExtensionPrime 1213 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1213 < candidate →
        mixedSupportExtensionPrime 1213 ≤ candidate := by
  rw [mixedExtensionPrimeEq1213]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1217 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1217 :
    mixedSupportExtensionPrime 1217 = 1223 := by
  rfl

theorem mixedExtensionSemanticPrime1217 :
    Nat.Prime (mixedSupportExtensionPrime 1217) ∧
      1217 < mixedSupportExtensionPrime 1217 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1217 < candidate →
        mixedSupportExtensionPrime 1217 ≤ candidate := by
  rw [mixedExtensionPrimeEq1217]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1223 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1223 :
    mixedSupportExtensionPrime 1223 = 1229 := by
  rfl

theorem mixedExtensionSemanticPrime1223 :
    Nat.Prime (mixedSupportExtensionPrime 1223) ∧
      1223 < mixedSupportExtensionPrime 1223 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1223 < candidate →
        mixedSupportExtensionPrime 1223 ≤ candidate := by
  rw [mixedExtensionPrimeEq1223]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1229 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1229 :
    mixedSupportExtensionPrime 1229 = 1231 := by
  rfl

theorem mixedExtensionSemanticPrime1229 :
    Nat.Prime (mixedSupportExtensionPrime 1229) ∧
      1229 < mixedSupportExtensionPrime 1229 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1229 < candidate →
        mixedSupportExtensionPrime 1229 ≤ candidate := by
  rw [mixedExtensionPrimeEq1229]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1231 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1231 :
    mixedSupportExtensionPrime 1231 = 1237 := by
  rfl

theorem mixedExtensionSemanticPrime1231 :
    Nat.Prime (mixedSupportExtensionPrime 1231) ∧
      1231 < mixedSupportExtensionPrime 1231 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1231 < candidate →
        mixedSupportExtensionPrime 1231 ≤ candidate := by
  rw [mixedExtensionPrimeEq1231]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1237 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1237 :
    mixedSupportExtensionPrime 1237 = 1249 := by
  rfl

theorem mixedExtensionSemanticPrime1237 :
    Nat.Prime (mixedSupportExtensionPrime 1237) ∧
      1237 < mixedSupportExtensionPrime 1237 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1237 < candidate →
        mixedSupportExtensionPrime 1237 ≤ candidate := by
  rw [mixedExtensionPrimeEq1237]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1249 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1249 :
    mixedSupportExtensionPrime 1249 = 1259 := by
  rfl

theorem mixedExtensionSemanticPrime1249 :
    Nat.Prime (mixedSupportExtensionPrime 1249) ∧
      1249 < mixedSupportExtensionPrime 1249 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1249 < candidate →
        mixedSupportExtensionPrime 1249 ≤ candidate := by
  rw [mixedExtensionPrimeEq1249]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1259 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1259 :
    mixedSupportExtensionPrime 1259 = 1277 := by
  rfl

theorem mixedExtensionSemanticPrime1259 :
    Nat.Prime (mixedSupportExtensionPrime 1259) ∧
      1259 < mixedSupportExtensionPrime 1259 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1259 < candidate →
        mixedSupportExtensionPrime 1259 ≤ candidate := by
  rw [mixedExtensionPrimeEq1259]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1277 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1277 :
    mixedSupportExtensionPrime 1277 = 1279 := by
  rfl

theorem mixedExtensionSemanticPrime1277 :
    Nat.Prime (mixedSupportExtensionPrime 1277) ∧
      1277 < mixedSupportExtensionPrime 1277 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1277 < candidate →
        mixedSupportExtensionPrime 1277 ≤ candidate := by
  rw [mixedExtensionPrimeEq1277]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1279 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1279 :
    mixedSupportExtensionPrime 1279 = 1283 := by
  rfl

theorem mixedExtensionSemanticPrime1279 :
    Nat.Prime (mixedSupportExtensionPrime 1279) ∧
      1279 < mixedSupportExtensionPrime 1279 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1279 < candidate →
        mixedSupportExtensionPrime 1279 ≤ candidate := by
  rw [mixedExtensionPrimeEq1279]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1283 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1283 :
    mixedSupportExtensionPrime 1283 = 1289 := by
  rfl

theorem mixedExtensionSemanticPrime1283 :
    Nat.Prime (mixedSupportExtensionPrime 1283) ∧
      1283 < mixedSupportExtensionPrime 1283 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1283 < candidate →
        mixedSupportExtensionPrime 1283 ≤ candidate := by
  rw [mixedExtensionPrimeEq1283]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1289 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1289 :
    mixedSupportExtensionPrime 1289 = 1291 := by
  rfl

theorem mixedExtensionSemanticPrime1289 :
    Nat.Prime (mixedSupportExtensionPrime 1289) ∧
      1289 < mixedSupportExtensionPrime 1289 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1289 < candidate →
        mixedSupportExtensionPrime 1289 ≤ candidate := by
  rw [mixedExtensionPrimeEq1289]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1291 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1291 :
    mixedSupportExtensionPrime 1291 = 1297 := by
  rfl

theorem mixedExtensionSemanticPrime1291 :
    Nat.Prime (mixedSupportExtensionPrime 1291) ∧
      1291 < mixedSupportExtensionPrime 1291 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1291 < candidate →
        mixedSupportExtensionPrime 1291 ≤ candidate := by
  rw [mixedExtensionPrimeEq1291]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1297 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1297 :
    mixedSupportExtensionPrime 1297 = 1301 := by
  rfl

theorem mixedExtensionSemanticPrime1297 :
    Nat.Prime (mixedSupportExtensionPrime 1297) ∧
      1297 < mixedSupportExtensionPrime 1297 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1297 < candidate →
        mixedSupportExtensionPrime 1297 ≤ candidate := by
  rw [mixedExtensionPrimeEq1297]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1301 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1301 :
    mixedSupportExtensionPrime 1301 = 1303 := by
  rfl

theorem mixedExtensionSemanticPrime1301 :
    Nat.Prime (mixedSupportExtensionPrime 1301) ∧
      1301 < mixedSupportExtensionPrime 1301 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1301 < candidate →
        mixedSupportExtensionPrime 1301 ≤ candidate := by
  rw [mixedExtensionPrimeEq1301]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1303 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1303 :
    mixedSupportExtensionPrime 1303 = 1307 := by
  rfl

theorem mixedExtensionSemanticPrime1303 :
    Nat.Prime (mixedSupportExtensionPrime 1303) ∧
      1303 < mixedSupportExtensionPrime 1303 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1303 < candidate →
        mixedSupportExtensionPrime 1303 ≤ candidate := by
  rw [mixedExtensionPrimeEq1303]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1307 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1307 :
    mixedSupportExtensionPrime 1307 = 1319 := by
  rfl

theorem mixedExtensionSemanticPrime1307 :
    Nat.Prime (mixedSupportExtensionPrime 1307) ∧
      1307 < mixedSupportExtensionPrime 1307 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1307 < candidate →
        mixedSupportExtensionPrime 1307 ≤ candidate := by
  rw [mixedExtensionPrimeEq1307]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1319 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1319 :
    mixedSupportExtensionPrime 1319 = 1321 := by
  rfl

theorem mixedExtensionSemanticPrime1319 :
    Nat.Prime (mixedSupportExtensionPrime 1319) ∧
      1319 < mixedSupportExtensionPrime 1319 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1319 < candidate →
        mixedSupportExtensionPrime 1319 ≤ candidate := by
  rw [mixedExtensionPrimeEq1319]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1321 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1321 :
    mixedSupportExtensionPrime 1321 = 1327 := by
  rfl

theorem mixedExtensionSemanticPrime1321 :
    Nat.Prime (mixedSupportExtensionPrime 1321) ∧
      1321 < mixedSupportExtensionPrime 1321 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1321 < candidate →
        mixedSupportExtensionPrime 1321 ≤ candidate := by
  rw [mixedExtensionPrimeEq1321]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1327 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1327 :
    mixedSupportExtensionPrime 1327 = 1361 := by
  rfl

theorem mixedExtensionSemanticPrime1327 :
    Nat.Prime (mixedSupportExtensionPrime 1327) ∧
      1327 < mixedSupportExtensionPrime 1327 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1327 < candidate →
        mixedSupportExtensionPrime 1327 ≤ candidate := by
  rw [mixedExtensionPrimeEq1327]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1361 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1361 :
    mixedSupportExtensionPrime 1361 = 1367 := by
  rfl

theorem mixedExtensionSemanticPrime1361 :
    Nat.Prime (mixedSupportExtensionPrime 1361) ∧
      1361 < mixedSupportExtensionPrime 1361 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1361 < candidate →
        mixedSupportExtensionPrime 1361 ≤ candidate := by
  rw [mixedExtensionPrimeEq1361]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1367 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1367 :
    mixedSupportExtensionPrime 1367 = 1373 := by
  rfl

theorem mixedExtensionSemanticPrime1367 :
    Nat.Prime (mixedSupportExtensionPrime 1367) ∧
      1367 < mixedSupportExtensionPrime 1367 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1367 < candidate →
        mixedSupportExtensionPrime 1367 ≤ candidate := by
  rw [mixedExtensionPrimeEq1367]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1373 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1373 :
    mixedSupportExtensionPrime 1373 = 1381 := by
  rfl

theorem mixedExtensionSemanticPrime1373 :
    Nat.Prime (mixedSupportExtensionPrime 1373) ∧
      1373 < mixedSupportExtensionPrime 1373 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1373 < candidate →
        mixedSupportExtensionPrime 1373 ≤ candidate := by
  rw [mixedExtensionPrimeEq1373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1381 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1381 :
    mixedSupportExtensionPrime 1381 = 1399 := by
  rfl

theorem mixedExtensionSemanticPrime1381 :
    Nat.Prime (mixedSupportExtensionPrime 1381) ∧
      1381 < mixedSupportExtensionPrime 1381 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1381 < candidate →
        mixedSupportExtensionPrime 1381 ≤ candidate := by
  rw [mixedExtensionPrimeEq1381]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1399 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1399 :
    mixedSupportExtensionPrime 1399 = 1409 := by
  rfl

theorem mixedExtensionSemanticPrime1399 :
    Nat.Prime (mixedSupportExtensionPrime 1399) ∧
      1399 < mixedSupportExtensionPrime 1399 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1399 < candidate →
        mixedSupportExtensionPrime 1399 ≤ candidate := by
  rw [mixedExtensionPrimeEq1399]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1409 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1409 :
    mixedSupportExtensionPrime 1409 = 1423 := by
  rfl

theorem mixedExtensionSemanticPrime1409 :
    Nat.Prime (mixedSupportExtensionPrime 1409) ∧
      1409 < mixedSupportExtensionPrime 1409 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1409 < candidate →
        mixedSupportExtensionPrime 1409 ≤ candidate := by
  rw [mixedExtensionPrimeEq1409]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1423 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1423 :
    mixedSupportExtensionPrime 1423 = 1427 := by
  rfl

theorem mixedExtensionSemanticPrime1423 :
    Nat.Prime (mixedSupportExtensionPrime 1423) ∧
      1423 < mixedSupportExtensionPrime 1423 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1423 < candidate →
        mixedSupportExtensionPrime 1423 ≤ candidate := by
  rw [mixedExtensionPrimeEq1423]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1427 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq1427 :
    mixedSupportExtensionPrime 1427 = 1429 := by
  rfl

theorem mixedExtensionSemanticPrime1427 :
    Nat.Prime (mixedSupportExtensionPrime 1427) ∧
      1427 < mixedSupportExtensionPrime 1427 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        1427 < candidate →
        mixedSupportExtensionPrime 1427 ≤ candidate := by
  rw [mixedExtensionPrimeEq1427]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 1429 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0006_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0006) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0006, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime1181
  · exact mixedExtensionSemanticPrime1187
  · exact mixedExtensionSemanticPrime1193
  · exact mixedExtensionSemanticPrime1201
  · exact mixedExtensionSemanticPrime1213
  · exact mixedExtensionSemanticPrime1217
  · exact mixedExtensionSemanticPrime1223
  · exact mixedExtensionSemanticPrime1229
  · exact mixedExtensionSemanticPrime1231
  · exact mixedExtensionSemanticPrime1237
  · exact mixedExtensionSemanticPrime1249
  · exact mixedExtensionSemanticPrime1259
  · exact mixedExtensionSemanticPrime1277
  · exact mixedExtensionSemanticPrime1279
  · exact mixedExtensionSemanticPrime1283
  · exact mixedExtensionSemanticPrime1289
  · exact mixedExtensionSemanticPrime1291
  · exact mixedExtensionSemanticPrime1297
  · exact mixedExtensionSemanticPrime1301
  · exact mixedExtensionSemanticPrime1303
  · exact mixedExtensionSemanticPrime1307
  · exact mixedExtensionSemanticPrime1319
  · exact mixedExtensionSemanticPrime1321
  · exact mixedExtensionSemanticPrime1327
  · exact mixedExtensionSemanticPrime1361
  · exact mixedExtensionSemanticPrime1367
  · exact mixedExtensionSemanticPrime1373
  · exact mixedExtensionSemanticPrime1381
  · exact mixedExtensionSemanticPrime1399
  · exact mixedExtensionSemanticPrime1409
  · exact mixedExtensionSemanticPrime1423
  · exact mixedExtensionSemanticPrime1427

#print axioms mixedExtensionSemanticInputs0006_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
