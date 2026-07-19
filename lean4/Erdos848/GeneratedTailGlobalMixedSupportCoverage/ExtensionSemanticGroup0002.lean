import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedExtensionSemanticInputs0002 : List ℕ :=
  [317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509]

theorem mixedExtensionPrimeEq317 :
    mixedSupportExtensionPrime 317 = 331 := by
  rfl

theorem mixedExtensionSemanticPrime317 :
    Nat.Prime (mixedSupportExtensionPrime 317) ∧
      317 < mixedSupportExtensionPrime 317 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        317 < candidate →
        mixedSupportExtensionPrime 317 ≤ candidate := by
  rw [mixedExtensionPrimeEq317]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 331 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq331 :
    mixedSupportExtensionPrime 331 = 337 := by
  rfl

theorem mixedExtensionSemanticPrime331 :
    Nat.Prime (mixedSupportExtensionPrime 331) ∧
      331 < mixedSupportExtensionPrime 331 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        331 < candidate →
        mixedSupportExtensionPrime 331 ≤ candidate := by
  rw [mixedExtensionPrimeEq331]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 337 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq337 :
    mixedSupportExtensionPrime 337 = 347 := by
  rfl

theorem mixedExtensionSemanticPrime337 :
    Nat.Prime (mixedSupportExtensionPrime 337) ∧
      337 < mixedSupportExtensionPrime 337 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        337 < candidate →
        mixedSupportExtensionPrime 337 ≤ candidate := by
  rw [mixedExtensionPrimeEq337]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 347 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq347 :
    mixedSupportExtensionPrime 347 = 349 := by
  rfl

theorem mixedExtensionSemanticPrime347 :
    Nat.Prime (mixedSupportExtensionPrime 347) ∧
      347 < mixedSupportExtensionPrime 347 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        347 < candidate →
        mixedSupportExtensionPrime 347 ≤ candidate := by
  rw [mixedExtensionPrimeEq347]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 349 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq349 :
    mixedSupportExtensionPrime 349 = 353 := by
  rfl

theorem mixedExtensionSemanticPrime349 :
    Nat.Prime (mixedSupportExtensionPrime 349) ∧
      349 < mixedSupportExtensionPrime 349 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        349 < candidate →
        mixedSupportExtensionPrime 349 ≤ candidate := by
  rw [mixedExtensionPrimeEq349]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 353 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq353 :
    mixedSupportExtensionPrime 353 = 359 := by
  rfl

theorem mixedExtensionSemanticPrime353 :
    Nat.Prime (mixedSupportExtensionPrime 353) ∧
      353 < mixedSupportExtensionPrime 353 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        353 < candidate →
        mixedSupportExtensionPrime 353 ≤ candidate := by
  rw [mixedExtensionPrimeEq353]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 359 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq359 :
    mixedSupportExtensionPrime 359 = 367 := by
  rfl

theorem mixedExtensionSemanticPrime359 :
    Nat.Prime (mixedSupportExtensionPrime 359) ∧
      359 < mixedSupportExtensionPrime 359 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        359 < candidate →
        mixedSupportExtensionPrime 359 ≤ candidate := by
  rw [mixedExtensionPrimeEq359]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 367 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq367 :
    mixedSupportExtensionPrime 367 = 373 := by
  rfl

theorem mixedExtensionSemanticPrime367 :
    Nat.Prime (mixedSupportExtensionPrime 367) ∧
      367 < mixedSupportExtensionPrime 367 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        367 < candidate →
        mixedSupportExtensionPrime 367 ≤ candidate := by
  rw [mixedExtensionPrimeEq367]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 373 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq373 :
    mixedSupportExtensionPrime 373 = 379 := by
  rfl

theorem mixedExtensionSemanticPrime373 :
    Nat.Prime (mixedSupportExtensionPrime 373) ∧
      373 < mixedSupportExtensionPrime 373 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        373 < candidate →
        mixedSupportExtensionPrime 373 ≤ candidate := by
  rw [mixedExtensionPrimeEq373]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 379 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq379 :
    mixedSupportExtensionPrime 379 = 383 := by
  rfl

theorem mixedExtensionSemanticPrime379 :
    Nat.Prime (mixedSupportExtensionPrime 379) ∧
      379 < mixedSupportExtensionPrime 379 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        379 < candidate →
        mixedSupportExtensionPrime 379 ≤ candidate := by
  rw [mixedExtensionPrimeEq379]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 383 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq383 :
    mixedSupportExtensionPrime 383 = 389 := by
  rfl

theorem mixedExtensionSemanticPrime383 :
    Nat.Prime (mixedSupportExtensionPrime 383) ∧
      383 < mixedSupportExtensionPrime 383 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        383 < candidate →
        mixedSupportExtensionPrime 383 ≤ candidate := by
  rw [mixedExtensionPrimeEq383]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 389 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq389 :
    mixedSupportExtensionPrime 389 = 397 := by
  rfl

theorem mixedExtensionSemanticPrime389 :
    Nat.Prime (mixedSupportExtensionPrime 389) ∧
      389 < mixedSupportExtensionPrime 389 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        389 < candidate →
        mixedSupportExtensionPrime 389 ≤ candidate := by
  rw [mixedExtensionPrimeEq389]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 397 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq397 :
    mixedSupportExtensionPrime 397 = 401 := by
  rfl

theorem mixedExtensionSemanticPrime397 :
    Nat.Prime (mixedSupportExtensionPrime 397) ∧
      397 < mixedSupportExtensionPrime 397 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        397 < candidate →
        mixedSupportExtensionPrime 397 ≤ candidate := by
  rw [mixedExtensionPrimeEq397]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 401 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq401 :
    mixedSupportExtensionPrime 401 = 409 := by
  rfl

theorem mixedExtensionSemanticPrime401 :
    Nat.Prime (mixedSupportExtensionPrime 401) ∧
      401 < mixedSupportExtensionPrime 401 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        401 < candidate →
        mixedSupportExtensionPrime 401 ≤ candidate := by
  rw [mixedExtensionPrimeEq401]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 409 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq409 :
    mixedSupportExtensionPrime 409 = 419 := by
  rfl

theorem mixedExtensionSemanticPrime409 :
    Nat.Prime (mixedSupportExtensionPrime 409) ∧
      409 < mixedSupportExtensionPrime 409 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        409 < candidate →
        mixedSupportExtensionPrime 409 ≤ candidate := by
  rw [mixedExtensionPrimeEq409]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 419 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq419 :
    mixedSupportExtensionPrime 419 = 421 := by
  rfl

theorem mixedExtensionSemanticPrime419 :
    Nat.Prime (mixedSupportExtensionPrime 419) ∧
      419 < mixedSupportExtensionPrime 419 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        419 < candidate →
        mixedSupportExtensionPrime 419 ≤ candidate := by
  rw [mixedExtensionPrimeEq419]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 421 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq421 :
    mixedSupportExtensionPrime 421 = 431 := by
  rfl

theorem mixedExtensionSemanticPrime421 :
    Nat.Prime (mixedSupportExtensionPrime 421) ∧
      421 < mixedSupportExtensionPrime 421 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        421 < candidate →
        mixedSupportExtensionPrime 421 ≤ candidate := by
  rw [mixedExtensionPrimeEq421]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 431 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq431 :
    mixedSupportExtensionPrime 431 = 433 := by
  rfl

theorem mixedExtensionSemanticPrime431 :
    Nat.Prime (mixedSupportExtensionPrime 431) ∧
      431 < mixedSupportExtensionPrime 431 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        431 < candidate →
        mixedSupportExtensionPrime 431 ≤ candidate := by
  rw [mixedExtensionPrimeEq431]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 433 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq433 :
    mixedSupportExtensionPrime 433 = 439 := by
  rfl

theorem mixedExtensionSemanticPrime433 :
    Nat.Prime (mixedSupportExtensionPrime 433) ∧
      433 < mixedSupportExtensionPrime 433 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        433 < candidate →
        mixedSupportExtensionPrime 433 ≤ candidate := by
  rw [mixedExtensionPrimeEq433]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 439 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq439 :
    mixedSupportExtensionPrime 439 = 443 := by
  rfl

theorem mixedExtensionSemanticPrime439 :
    Nat.Prime (mixedSupportExtensionPrime 439) ∧
      439 < mixedSupportExtensionPrime 439 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        439 < candidate →
        mixedSupportExtensionPrime 439 ≤ candidate := by
  rw [mixedExtensionPrimeEq439]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 443 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq443 :
    mixedSupportExtensionPrime 443 = 449 := by
  rfl

theorem mixedExtensionSemanticPrime443 :
    Nat.Prime (mixedSupportExtensionPrime 443) ∧
      443 < mixedSupportExtensionPrime 443 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        443 < candidate →
        mixedSupportExtensionPrime 443 ≤ candidate := by
  rw [mixedExtensionPrimeEq443]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 449 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq449 :
    mixedSupportExtensionPrime 449 = 457 := by
  rfl

theorem mixedExtensionSemanticPrime449 :
    Nat.Prime (mixedSupportExtensionPrime 449) ∧
      449 < mixedSupportExtensionPrime 449 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        449 < candidate →
        mixedSupportExtensionPrime 449 ≤ candidate := by
  rw [mixedExtensionPrimeEq449]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 457 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq457 :
    mixedSupportExtensionPrime 457 = 461 := by
  rfl

theorem mixedExtensionSemanticPrime457 :
    Nat.Prime (mixedSupportExtensionPrime 457) ∧
      457 < mixedSupportExtensionPrime 457 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        457 < candidate →
        mixedSupportExtensionPrime 457 ≤ candidate := by
  rw [mixedExtensionPrimeEq457]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 461 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq461 :
    mixedSupportExtensionPrime 461 = 463 := by
  rfl

theorem mixedExtensionSemanticPrime461 :
    Nat.Prime (mixedSupportExtensionPrime 461) ∧
      461 < mixedSupportExtensionPrime 461 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        461 < candidate →
        mixedSupportExtensionPrime 461 ≤ candidate := by
  rw [mixedExtensionPrimeEq461]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 463 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq463 :
    mixedSupportExtensionPrime 463 = 467 := by
  rfl

theorem mixedExtensionSemanticPrime463 :
    Nat.Prime (mixedSupportExtensionPrime 463) ∧
      463 < mixedSupportExtensionPrime 463 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        463 < candidate →
        mixedSupportExtensionPrime 463 ≤ candidate := by
  rw [mixedExtensionPrimeEq463]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 467 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq467 :
    mixedSupportExtensionPrime 467 = 479 := by
  rfl

theorem mixedExtensionSemanticPrime467 :
    Nat.Prime (mixedSupportExtensionPrime 467) ∧
      467 < mixedSupportExtensionPrime 467 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        467 < candidate →
        mixedSupportExtensionPrime 467 ≤ candidate := by
  rw [mixedExtensionPrimeEq467]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 479 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq479 :
    mixedSupportExtensionPrime 479 = 487 := by
  rfl

theorem mixedExtensionSemanticPrime479 :
    Nat.Prime (mixedSupportExtensionPrime 479) ∧
      479 < mixedSupportExtensionPrime 479 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        479 < candidate →
        mixedSupportExtensionPrime 479 ≤ candidate := by
  rw [mixedExtensionPrimeEq479]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 487 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq487 :
    mixedSupportExtensionPrime 487 = 491 := by
  rfl

theorem mixedExtensionSemanticPrime487 :
    Nat.Prime (mixedSupportExtensionPrime 487) ∧
      487 < mixedSupportExtensionPrime 487 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        487 < candidate →
        mixedSupportExtensionPrime 487 ≤ candidate := by
  rw [mixedExtensionPrimeEq487]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 491 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq491 :
    mixedSupportExtensionPrime 491 = 499 := by
  rfl

theorem mixedExtensionSemanticPrime491 :
    Nat.Prime (mixedSupportExtensionPrime 491) ∧
      491 < mixedSupportExtensionPrime 491 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        491 < candidate →
        mixedSupportExtensionPrime 491 ≤ candidate := by
  rw [mixedExtensionPrimeEq491]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 499 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq499 :
    mixedSupportExtensionPrime 499 = 503 := by
  rfl

theorem mixedExtensionSemanticPrime499 :
    Nat.Prime (mixedSupportExtensionPrime 499) ∧
      499 < mixedSupportExtensionPrime 499 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        499 < candidate →
        mixedSupportExtensionPrime 499 ≤ candidate := by
  rw [mixedExtensionPrimeEq499]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 503 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq503 :
    mixedSupportExtensionPrime 503 = 509 := by
  rfl

theorem mixedExtensionSemanticPrime503 :
    Nat.Prime (mixedSupportExtensionPrime 503) ∧
      503 < mixedSupportExtensionPrime 503 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        503 < candidate →
        mixedSupportExtensionPrime 503 ≤ candidate := by
  rw [mixedExtensionPrimeEq503]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 509 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionPrimeEq509 :
    mixedSupportExtensionPrime 509 = 521 := by
  rfl

theorem mixedExtensionSemanticPrime509 :
    Nat.Prime (mixedSupportExtensionPrime 509) ∧
      509 < mixedSupportExtensionPrime 509 ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        509 < candidate →
        mixedSupportExtensionPrime 509 ≤ candidate := by
  rw [mixedExtensionPrimeEq509]
  constructor
  · norm_num
  constructor
  · norm_num
  · intro candidate hprime hlower
    by_contra hnot
    have hupper : candidate < 521 := Nat.lt_of_not_ge hnot
    interval_cases candidate <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hprime

theorem mixedExtensionSemanticInputs0002_semantic
    {p : ℕ} (hp : p ∈ mixedExtensionSemanticInputs0002) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  simp only [mixedExtensionSemanticInputs0002, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact mixedExtensionSemanticPrime317
  · exact mixedExtensionSemanticPrime331
  · exact mixedExtensionSemanticPrime337
  · exact mixedExtensionSemanticPrime347
  · exact mixedExtensionSemanticPrime349
  · exact mixedExtensionSemanticPrime353
  · exact mixedExtensionSemanticPrime359
  · exact mixedExtensionSemanticPrime367
  · exact mixedExtensionSemanticPrime373
  · exact mixedExtensionSemanticPrime379
  · exact mixedExtensionSemanticPrime383
  · exact mixedExtensionSemanticPrime389
  · exact mixedExtensionSemanticPrime397
  · exact mixedExtensionSemanticPrime401
  · exact mixedExtensionSemanticPrime409
  · exact mixedExtensionSemanticPrime419
  · exact mixedExtensionSemanticPrime421
  · exact mixedExtensionSemanticPrime431
  · exact mixedExtensionSemanticPrime433
  · exact mixedExtensionSemanticPrime439
  · exact mixedExtensionSemanticPrime443
  · exact mixedExtensionSemanticPrime449
  · exact mixedExtensionSemanticPrime457
  · exact mixedExtensionSemanticPrime461
  · exact mixedExtensionSemanticPrime463
  · exact mixedExtensionSemanticPrime467
  · exact mixedExtensionSemanticPrime479
  · exact mixedExtensionSemanticPrime487
  · exact mixedExtensionSemanticPrime491
  · exact mixedExtensionSemanticPrime499
  · exact mixedExtensionSemanticPrime503
  · exact mixedExtensionSemanticPrime509

#print axioms mixedExtensionSemanticInputs0002_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
