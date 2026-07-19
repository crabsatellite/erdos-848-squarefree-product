import Mathlib.Data.Nat.Bits
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.CommonData

namespace Erdos848

/-! Lightweight parameterized core for the fixed-cut mixed certificate.
Generated leaves supply only the small mask-data groups they actually use. -/

def globalMixedCoreSplit : ℕ := 55

def globalMixedCoreIntersectWords : List ℕ → List ℕ → List ℕ
  | left :: lefts, right :: rights =>
      (left &&& right) :: globalMixedCoreIntersectWords lefts rights
  | _, _ => []

def globalMixedCoreSupportWords
    (lookup : ℕ → List ℕ) : List ℕ → List ℕ → List ℕ
  | [], cosetWords => cosetWords
  | p :: support, cosetWords =>
      globalMixedCoreIntersectWords (lookup p)
        (globalMixedCoreSupportWords lookup support cosetWords)

/-- Both cosets share one lookup and one recursive support traversal. -/
def globalMixedCoreSupportWordPair
    (lookup : ℕ → List ℕ) :
    List ℕ → List ℕ → List ℕ → (List ℕ × List ℕ)
  | [], falseWords, trueWords => (falseWords, trueWords)
  | p :: support, falseWords, trueWords =>
      let rest := globalMixedCoreSupportWordPair lookup support
        falseWords trueWords
      let mask := lookup p
      (globalMixedCoreIntersectWords mask rest.1,
        globalMixedCoreIntersectWords mask rest.2)

/-- Popcount of one hexadecimal digit. -/
def globalMixedCoreNibbleCount : ℕ → ℕ
  | 0 => 0 | 1 => 1 | 2 => 1 | 3 => 2
  | 4 => 1 | 5 => 2 | 6 => 2 | 7 => 3
  | 8 => 1 | 9 => 2 | 10 => 2 | 11 => 3
  | 12 => 2 | 13 => 3 | 14 => 3 | 15 => 4
  | _ => 0

/-- Popcount of one byte via its two hexadecimal digits. -/
def globalMixedCoreByteCount (byte : ℕ) : ℕ :=
  globalMixedCoreNibbleCount (byte % 16) +
    globalMixedCoreNibbleCount (byte / 16)

/-- Eight-byte popcount for a generated 64-bit word. -/
def globalMixedCoreWordCountAux : ℕ → ℕ → ℕ
  | _, 0 => 0
  | word, bytes + 1 =>
      globalMixedCoreByteCount (word % 256) +
        globalMixedCoreWordCountAux (word / 256) bytes

def globalMixedCoreWordCount (word : ℕ) : ℕ :=
  let first := word - ((word / 2) &&& 6_148_914_691_236_517_205)
  let second := (first &&& 3_689_348_814_741_910_323) +
    ((first / 4) &&& 3_689_348_814_741_910_323)
  let third := (second + second / 16) &&& 1_085_102_592_571_150_095
  ((third * 72_340_172_838_076_673) % 18_446_744_073_709_551_616) /
    72_057_594_037_927_936

def globalMixedCoreCountWords : List ℕ → ℕ
  | [] => 0
  | word :: words =>
      globalMixedCoreWordCount word + globalMixedCoreCountWords words

def globalMixedCoreSurvivorCount
    (lookup : ℕ → List ℕ) (cosetWords : List ℕ)
    (support : List ℕ) : ℕ :=
  globalMixedCoreCountWords
    (globalMixedCoreSupportWords lookup support cosetWords)

def globalMixedCoreSurvivorCounts
    (lookup : ℕ → List ℕ)
    (falseWords trueWords : List ℕ) (support : List ℕ) : ℕ × ℕ :=
  let words := globalMixedCoreSupportWordPair lookup support
    falseWords trueWords
  (globalMixedCoreCountWords words.1, globalMixedCoreCountWords words.2)

def globalMixedCoreRootCoefficient100 (k survivors : ℕ) : ℕ :=
  2 ^ (k + 1) * (100 * survivors + 441)

def globalMixedCoreCombinedAtPasses
    (coefficient primeCount N : ℕ) : Bool :=
  decide (
    (coefficient + 100 * primeCount) * (6 * 12_755_647_965_025) ≤
      100 * 221_926_420_176 * N)

def globalMixedCorePrimeBlockPasses
    (coefficient endpoint : ℕ) (block : ℕ × ℕ × ℕ) : Bool :=
  let start := block.1
  let stop := block.2.1
  let primeCount := block.2.2
  let lower := max endpoint (globalMixedCoreSplit * start)
  if lower < globalMixedCoreSplit * (stop + 1) then
    globalMixedCoreCombinedAtPasses coefficient primeCount lower
  else true

def globalMixedCoreTerminalPasses (coefficient endpoint : ℕ) : Bool :=
  let lower := max endpoint (globalMixedCoreSplit * 204_082)
  if 10 * coefficient ≤ 11_427_393 then true
  else
    decide (
      (153_000 * lower + 55_000 * (10 * coefficient - 11_427_393)) *
          (6 * 12_755_647_965_025) ≤
        221_926_420_176 * 55_000_000 * lower)

def globalMixedCoreLineDiscountAux (endpoint : ℕ) :
    List (ℕ × ℕ × ℕ) → ℕ
  | [] => 11_427_393
  | block :: blocks =>
      if endpoint < globalMixedCoreSplit * (block.2.1 + 1) then
        min (153 * block.1 - 1000 * block.2.2) 11_427_393
      else globalMixedCoreLineDiscountAux endpoint blocks

def globalMixedCoreLineDiscount (endpoint : ℕ) : ℕ :=
  globalMixedCoreLineDiscountAux endpoint
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks

def globalMixedCoreLinePassesAt
    (coefficient endpoint discount : ℕ) : Bool :=
  if 10 * coefficient ≤ discount then true
  else
    decide (
      (153_000 * endpoint + 55_000 * (10 * coefficient - discount)) *
          (6 * 12_755_647_965_025) ≤
        221_926_420_176 * 55_000_000 * endpoint)

def globalMixedCoreLinePasses (coefficient endpoint : ℕ) : Bool :=
  globalMixedCoreLinePassesAt coefficient endpoint
    (globalMixedCoreLineDiscount endpoint)

def globalMixedCoreRowPasses
    (coefficient endpoint : ℕ) : Bool :=
  globalMixedCoreLinePasses coefficient endpoint ||
    (GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
        (globalMixedCorePrimeBlockPasses coefficient endpoint) &&
      globalMixedCoreTerminalPasses coefficient endpoint)

def globalMixedCoreRowPassesAt
    (coefficient endpoint discount : ℕ) : Bool :=
  globalMixedCoreLinePassesAt coefficient endpoint discount ||
    (GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
        (globalMixedCorePrimeBlockPasses coefficient endpoint) &&
      globalMixedCoreTerminalPasses coefficient endpoint)

/-- Four rows at once.  The lookup functions are supplied locally by each
generated leaf, preventing every leaf from loading the full mask table. -/
def globalMixedCorePrefixPasses
    (normalLookup twistLookup : ℕ → List ℕ)
    (k endpoint : ℕ) (supportPrefix : List ℕ) : Bool :=
  let maskedSupport := supportPrefix.filter fun p => decide (p ≤ 2843)
  let normalFalse := globalMixedCoreSurvivorCount normalLookup
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
    maskedSupport
  let normalTrue := globalMixedCoreSurvivorCount normalLookup
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    maskedSupport
  let twistFalse := globalMixedCoreSurvivorCount twistLookup
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
    maskedSupport
  let twistTrue := globalMixedCoreSurvivorCount twistLookup
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    maskedSupport
  let discount := globalMixedCoreLineDiscount endpoint
  globalMixedCoreRowPassesAt
      (globalMixedCoreRootCoefficient100 k normalFalse) endpoint discount &&
    globalMixedCoreRowPassesAt
      (globalMixedCoreRootCoefficient100 k normalTrue) endpoint discount &&
    globalMixedCoreRowPassesAt
      (globalMixedCoreRootCoefficient100 k twistFalse) endpoint discount &&
    globalMixedCoreRowPassesAt
      (globalMixedCoreRootCoefficient100 k twistTrue) endpoint discount

end Erdos848
