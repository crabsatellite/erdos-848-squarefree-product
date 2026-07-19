import Erdos848.TailGlobalMixedEvenTerminalCountDefs
import Erdos848.TailGlobalMixedEvenRootCoefficient
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848

/-!
# Sharp cutoff-23 root checker for the `v₂ = 1` R263 branch

The public fixed-cut masks already use `Y = N / 55`.  This checker changes
only the numerical target and subtracts the nine primes at or below the
literal cutoff `23`.  It reuses the existing feasible support prefixes,
support endpoints, QR masks, and exact prime-count blocks.
-/

set_option maxRecDepth 1000000

/-- Upward rational envelope for the complete sixfold root row. -/
def fiveMillionR263EvenOneRoot23Envelope : Rat := 7161 / 500000

/-- Cross-multiplied form of
`(coefficient / 100 + (primeCount - π(23))) / N ≤
  fiveMillionR263EvenOneRoot23Envelope / 6`. -/
def fiveMillionR263EvenOneRoot23CombinedAtPasses
    (coefficient primeCount N : Nat) : Bool :=
  decide (
    (coefficient + 100 * (primeCount - 9)) * 3_000_000 ≤
      716_100 * N)

/-- One exact prime-count block, restricted to the published
`[5_000_000, 10_000_000)` interval. -/
def fiveMillionR263EvenOneRoot23PrimeBlockPasses
    (coefficient endpoint : Nat) (block : Nat × Nat × Nat) : Bool :=
  let lower := max endpoint (globalMixedSplit * block.1)
  if lower < 10_000_000 &&
      lower < globalMixedSplit * (block.2.1 + 1) then
    fiveMillionR263EvenOneRoot23CombinedAtPasses
      coefficient block.2.2 lower
  else true

/-- One normal/five-twist and mod-five-coset row.  Support primes beyond the
stored mask range are omitted only from the mask intersection; their forced
product is retained in `globalMixedSupportEndpoint`. -/
def fiveMillionR263EvenOneRoot23OneRowPasses
    (k : Nat) (supportPrefix : List Nat)
    (fiveTwist squareCoset : Bool) : Bool :=
  let endpoint := globalMixedSupportEndpoint supportPrefix
  let maskedSupport := supportPrefix.filter fun p => decide (p ≤ 2843)
  let survivors :=
    if fiveTwist then
      globalMixedEvenTerminalTwistCount .one maskedSupport squareCoset
    else
      globalMixedEvenTerminalNormalCount .one maskedSupport squareCoset
  let coefficient := globalMixedEvenRootCoefficient100 1 k survivors
  GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
    (fiveMillionR263EvenOneRoot23PrimeBlockPasses coefficient endpoint)

/-- All four quotient rows attached to one feasible support prefix. -/
def fiveMillionR263EvenOneRoot23PrefixPasses
    (k : Nat) (supportPrefix : List Nat) : Bool :=
  fiveMillionR263EvenOneRoot23OneRowPasses
      k supportPrefix false false &&
    fiveMillionR263EvenOneRoot23OneRowPasses
      k supportPrefix false true &&
    fiveMillionR263EvenOneRoot23OneRowPasses
      k supportPrefix true false &&
    fiveMillionR263EvenOneRoot23OneRowPasses
      k supportPrefix true true

end Erdos848
