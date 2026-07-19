import Erdos848.GeneratedTailGlobalMixedSupportCoverage.CommonData

namespace Erdos848

/-! Lightweight affine prime-row definitions for the fixed cut.

These definitions used to live in the full support checker.  The terminal
soundness layer needs only this affine row, so isolating it avoids loading the
finite diagonal and Hall dependency graph. -/

def globalMixedSplit : ℕ := 55
def globalMixedNormalBound : ℕ := 3025
def globalMixedTwistBound : ℕ := 605

/-- Exact cross-multiplied form of
`(coefficient / 100 + primeCount) / N ≤ fiveMillionOddRoot7Envelope / 6`. -/
def globalMixedCombinedAtPasses
    (coefficient primeCount N : ℕ) : Bool :=
  decide (
    (coefficient + 100 * primeCount) * (6 * 12_755_647_965_025) ≤
      100 * 221_926_420_176 * N)

/-- Discount in the affine prime-count envelope
`1000 * primeCounting y ≤ 153 * y - discount`. -/
def globalMixedLineDiscountAux (endpoint : ℕ) :
    List (ℕ × ℕ × ℕ) → ℕ
  | [] => 11_427_393
  | block :: blocks =>
      if endpoint < globalMixedSplit * (block.2.1 + 1) then
        min (153 * block.1 - 1000 * block.2.2) 11_427_393
      else globalMixedLineDiscountAux endpoint blocks

def globalMixedLineDiscount (endpoint : ℕ) : ℕ :=
  globalMixedLineDiscountAux endpoint
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks

/-- One affine-line check covering every later prime-count block. -/
def globalMixedLinePasses (coefficient endpoint : ℕ) : Bool :=
  let discount := globalMixedLineDiscount endpoint
  if 10 * coefficient ≤ discount then true
  else
    decide (
      (153_000 * endpoint +
          55_000 * (10 * coefficient - discount)) *
          (6 * 12_755_647_965_025) ≤
        221_926_420_176 * 55_000_000 * endpoint)

end Erdos848
