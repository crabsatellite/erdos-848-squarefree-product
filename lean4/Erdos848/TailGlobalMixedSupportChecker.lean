import Erdos848.TailGlobalMixedFeasiblePrefixes
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.CommonData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData
import Erdos848.TailGlobalMixedSupportWordDefs
import Erdos848.TailGlobalMixedPrimeCheckerDefs

namespace Erdos848

/-!
# Fixed-cut global mixed-support checker

This is the kernel-facing finite calculation for the uniform split
`Y = N / 55`.  It enumerates support prefixes and short QR masks, never an
interval of ambient values of `N`.
-/

/- The finite structural domain moved to `TailGlobalMixedFeasiblePrefixes`.
It does not depend on QR masks, affine rows, or Hall certificates. -/

def globalMixedSupportLowerProduct (supportPrefix : List ℕ) : ℕ :=
  supportPrefix.prod *
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
      (supportPrefix.getLast?.getD 0)

def globalMixedSupportEndpoint (supportPrefix : List ℕ) : ℕ :=
  max 5_000_000 (globalMixedSupportLowerProduct supportPrefix)

/- The word-list definitions below now live in
`TailGlobalMixedSupportWordDefs`; keeping this historical block commented
preserves a low-noise diff while the public checker continues to use the same
names and definitions. -/
/-
def globalMixedNormalSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset).getD
        wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p).getD
          wordIndex 0 &&&
        globalMixedNormalSupportWord support squareCoset wordIndex

def globalMixedTwistSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset).getD
        wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p).getD
          wordIndex 0 &&&
        globalMixedTwistSupportWord support squareCoset wordIndex

/-- Word-list intersection.  Working a whole list at once is important: each
prime's generated table is dispatched exactly once, instead of once per one
of its 48 words. -/
def globalMixedIntersectWords : List ℕ → List ℕ → List ℕ
  | left :: lefts, right :: rights =>
      (left &&& right) :: globalMixedIntersectWords lefts rights
  | _, _ => []

def globalMixedNormalSupportWords : List ℕ → Bool → List ℕ
  | [], squareCoset =>
      GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset
  | p :: support, squareCoset =>
      globalMixedIntersectWords
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
        (globalMixedNormalSupportWords support squareCoset)

def globalMixedTwistSupportWords : List ℕ → Bool → List ℕ
  | [], squareCoset =>
      GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset
  | p :: support, squareCoset =>
      globalMixedIntersectWords
        (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
        (globalMixedTwistSupportWords support squareCoset)

def globalMixedCountWords : List ℕ → ℕ
  | [] => 0
  | word :: words => word.bits.count true + globalMixedCountWords words

def countGlobalMixedNormalWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (globalMixedNormalSupportWord support squareCoset start).bits.count true +
        countGlobalMixedNormalWords support squareCoset (start + 1) count

def countGlobalMixedTwistWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (globalMixedTwistSupportWord support squareCoset start).bits.count true +
        countGlobalMixedTwistWords support squareCoset (start + 1) count

/-- Exact popcount on `1,…,3025`; unused high bits of the final word are zero. -/
def globalMixedNormalSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  globalMixedCountWords (globalMixedNormalSupportWords support squareCoset)

/-- Exact popcount on `1,…,605`; unused high bits of the final word are zero. -/
def globalMixedTwistSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  globalMixedCountWords (globalMixedTwistSupportWords support squareCoset)
-/

/-- Kernel comparison of both generated QR masks with their mathematical
predicates. -/
def globalMixedNormalMaskSemanticPasses (p : ℕ) : Bool :=
  decide (0 < p) &&
  allNatRange
    (fun index =>
      wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p) index ==
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
          (index % p))
    0 globalMixedNormalBound &&
  allNatRange
    (fun root => decide (
      root % p = 0 ∨
      globalMixedNormalBound ≤ (root * root + (p - 1)) % p ∨
      wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
          ((root * root + (p - 1)) % p) = true))
    1 (p - 1)

def globalMixedTwistMaskSemanticPasses (p : ℕ) : Bool :=
  allNatRange
    (fun index =>
      wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p) index ==
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
          (5 * (index + 1) - 1))
    0 globalMixedTwistBound

def globalMixedMaskSemanticPasses (p : ℕ) : Bool :=
  globalMixedNormalMaskSemanticPasses p &&
    globalMixedTwistMaskSemanticPasses p

/-- `100` times the numerator of the root-cardinality bound.  The constant
`441 / 100` bounds the endpoint-and-spacing payment
`2 * (N / 25 + 2) / (N / 55)` for every `N ≥ 5,000,000`. -/
def globalMixedRootCoefficient100
    (k survivors : ℕ) : ℕ :=
  2 ^ (k + 1) * (100 * survivors + 441)

/- Exact cross-multiplied form of
`(coefficient / 100 + primeCount) / N ≤ fiveMillionOddRoot7Envelope / 6`.
-/
/- `globalMixedCombinedAtPasses` is defined in
`TailGlobalMixedPrimeCheckerDefs`. -/

/-- A prime-count block covers all `N` for which `N / 55` lies between its
first two entries.  Within a block the combined rational row is antitone, so
only the first possible ambient endpoint is checked. -/
def globalMixedPrimeBlockPasses
    (coefficient endpoint : ℕ) (block : ℕ × ℕ × ℕ) : Bool :=
  let start := block.1
  let stop := block.2.1
  let primeCount := block.2.2
  let lower := max endpoint (globalMixedSplit * start)
  if lower < globalMixedSplit * (stop + 1) then
    globalMixedCombinedAtPasses coefficient primeCount lower
  else true

/-- Past `primeCounting 204081`, the terminal sieve has slope `153/1000`.
After division by the split 55, the asymptotic term is `153/55000`; the
remaining numerator is `10 * coefficient - 11427393`. -/
def globalMixedTerminalPasses (coefficient endpoint : ℕ) : Bool :=
  let lower := max endpoint (globalMixedSplit * 204_082)
  if 10 * coefficient ≤ 11_427_393 then true
  else
    decide (
      (153_000 * lower +
          55_000 * (10 * coefficient - 11_427_393)) *
          (6 * 12_755_647_965_025) ≤
        221_926_420_176 * 55_000_000 * lower)

/-- Discount in the affine prime-count envelope
`1000 * primeCounting y ≤ 153 * y - discount`.  Finite-block discounts are
capped by the terminal-sieve discount.  Consequently the first block reached
by an ambient endpoint controls every later block, including the transition
past `204081`. -/
/- The affine discount and line checker are defined in
`TailGlobalMixedPrimeCheckerDefs`. -/

def globalMixedOneRowPasses
    (k : ℕ) (supportPrefix : List ℕ)
    (fiveTwist squareCoset : Bool) : Bool :=
  let endpoint := globalMixedSupportEndpoint supportPrefix
  let maskedSupport := supportPrefix.filter fun p => decide (p ≤ 2843)
  let survivors :=
    if fiveTwist then
      globalMixedTwistSurvivorCount maskedSupport squareCoset
    else
      globalMixedNormalSurvivorCount maskedSupport squareCoset
  let coefficient := globalMixedRootCoefficient100 k survivors
  globalMixedLinePasses coefficient endpoint ||
    (GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
        (globalMixedPrimeBlockPasses coefficient endpoint) &&
      globalMixedTerminalPasses coefficient endpoint)

/-- All four possible rows: ordinary/five-twist and the two nonzero mod-five
square cosets. -/
def globalMixedSupportPrefixPasses
    (k : ℕ) (supportPrefix : List ℕ) : Bool :=
  globalMixedOneRowPasses k supportPrefix false false &&
    globalMixedOneRowPasses k supportPrefix false true &&
    globalMixedOneRowPasses k supportPrefix true false &&
    globalMixedOneRowPasses k supportPrefix true true

#print axioms globalMixedSupportPrefixPasses

end Erdos848
