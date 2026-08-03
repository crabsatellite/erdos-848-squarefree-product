import Erdos848.TailPureMatching

namespace Erdos848

/-!
# Exact five-million arithmetic for the uniform pure matching certificate

This file contains the exact endpoint arithmetic for the uniform pure
matching certificate.  It has no floating-point input: the finite union
constant is evaluated from the displayed prime list, and the tail payment
uses the rounded-up support bounds checked in
`GeneratedTailPureSupportCoverage`.  The theorem below proves that the
structurally certified envelope clears the strict half-block margin consumed
by the dense matching argument.
-/

/-- Odd primes other than five through the finite cutoff `47`. -/
def pureSmallPrimes47 : List ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]

def purePrimeSquareReciprocals47 : List ℚ :=
  pureSmallPrimes47.map fun p => 1 / (p : ℚ) ^ 2

def pureFiveMillionSmallDensity : ℚ := purePrimeSquareReciprocals47.sum

/-- Each small prime contributes its square-density on a block of length at
most `100001`, plus one terminal residue class. -/
def pureFiveMillionSmallBadUpper : ℚ :=
  100_001 * pureFiveMillionSmallDensity + pureSmallPrimes47.length

/-- Medium-prime payment using one complete mod-`25` base progression and
the already-certified relaxed bound `π(192307) ≤ π(204081) = 18311`.
Using mod `25` rather than the sharper parity-aware mod `50` count costs
fewer than `389` points and gives a uniform semantic interface. -/
def pureFiveMillionMediumEnvelope : ℚ := 190_884 / 10

/-- Uniform root payment.  The worst certified row is the five-prime support
row: `512 * (6 + 1.04004) = 3604.50048`. -/
def pureFiveMillionRootEnvelope : ℚ := 11_264_064 / 3_125

/-- Rounded-up structural tail envelope used by the matching proof. -/
def pureFiveMillionTailEnvelope : ℚ :=
  pureFiveMillionMediumEnvelope + pureFiveMillionRootEnvelope

def pureFiveMillionDegreeLower : ℚ :=
  99_999 - pureFiveMillionSmallBadUpper - pureFiveMillionTailEnvelope

theorem pureSmallPrimes47_length : pureSmallPrimes47.length = 13 := by
  decide

theorem pureFiveMillionSmallDensity_exact :
    pureFiveMillionSmallDensity =
      598_780_483_492_152_027_754_941_002_030_317 /
        3_780_894_447_317_222_339_538_673_796_437_881 := by
  norm_num [pureFiveMillionSmallDensity, purePrimeSquareReciprocals47,
    pureSmallPrimes47]

theorem pureFiveMillionTailEnvelope_exact :
    pureFiveMillionTailEnvelope = 22_692_900_480 / 1_000_000 := by
  norm_num [pureFiveMillionTailEnvelope, pureFiveMillionMediumEnvelope,
    pureFiveMillionRootEnvelope]

/-- The actual degree lower bound is strictly above the half-block target
`N/100 + 1` at the five-million endpoint. -/
theorem pureFiveMillionDegree_gt_halfBlock :
    (50_001 : ℚ) < pureFiveMillionDegreeLower := by
  unfold pureFiveMillionDegreeLower pureFiveMillionSmallBadUpper
  rw [pureFiveMillionSmallDensity_exact, pureSmallPrimes47_length]
  rw [pureFiveMillionTailEnvelope_exact]
  norm_num

/-- The same endpoint degree clears the `N/125 + 2` span threshold. -/
theorem pureFiveMillionDegree_gt_spanThreshold :
    (40_002 : ℚ) < pureFiveMillionDegreeLower := by
  exact (by norm_num : (40_002 : ℚ) < 50_001).trans
    pureFiveMillionDegree_gt_halfBlock

#print axioms pureFiveMillionDegree_gt_halfBlock
#print axioms pureFiveMillionDegree_gt_spanThreshold

end Erdos848
