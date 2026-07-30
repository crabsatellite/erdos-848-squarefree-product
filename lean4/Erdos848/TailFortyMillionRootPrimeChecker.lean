import Erdos848.TailFortyMillionTenBranchArithmetic
import Erdos848.TailFortyMillionRootCoefficientDefs

namespace Erdos848


/-!
# Closed arithmetic checker for the `40M--200M` root rows

Prime classification is certified separately.  This checker only combines a
coefficient ceiling, a cumulative prime-count ceiling, and the least possible
ambient denominator in one product block / prime interval.
-/

def fortyMillionRootCoefficientCeiling
    (block : FortyMillionTenBranchBlock)
    (rootClass : FortyMillionRootClass) : Nat :=
  match rootClass with
  | .odd => 971_528
  | .evenOne => 487_528
  | .evenTwo =>
      match block with
      | .fortyToFifty => 686_592
      | _ => 737_792
  | .evenThree =>
      match block with
      | .fortyToFifty | .fiftyToSeventy | .seventyToEighty => 1_373_184
      | _ => 1_475_584

def fortyMillionRootEnvelopeNumerator
    (block : FortyMillionTenBranchBlock)
    (rootClass : FortyMillionRootClass) : Nat :=
  match rootClass with
  | .odd => fortyMillionTenBranchRootOddNumerator block
  | .evenOne => fortyMillionTenBranchRootEvenOneNumerator block
  | .evenTwo => fortyMillionTenBranchRootEvenTwoNumerator block
  | .evenThree => fortyMillionTenBranchRootEvenThreeNumerator block

/-- The even finite certificates stop at `23`; the odd finite certificates
stop at `19`.  Keeping the cutoff attached to the root class prevents the
single missing prime `23` from falling between the finite and high tails. -/
def fortyMillionRootPrimeCutoff : FortyMillionRootClass -> Nat
  | .odd => 19
  | .evenOne | .evenTwo | .evenThree => 23

def fortyMillionRootPrimeCutoffCount : FortyMillionRootClass -> Nat
  | .odd => 8
  | .evenOne | .evenTwo | .evenThree => 9

def fortyMillionRootPrimeBlockLower
    (block : FortyMillionTenBranchBlock)
    (primeBlock : Nat × Nat × Nat) : Nat :=
  max block.lower (55 * primeBlock.1)

def fortyMillionFiniteRootPrimeBlockPasses
    (block : FortyMillionTenBranchBlock)
    (rootClass : FortyMillionRootClass)
    (primeBlock : Nat × Nat × Nat) : Bool :=
  let lower := fortyMillionRootPrimeBlockLower block primeBlock
  if lower < block.upper && lower < 55 * (primeBlock.2.1 + 1) then
    decide (
      60_000_000 *
          (fortyMillionRootCoefficientCeiling block rootClass +
            100 * (primeBlock.2.2 -
              fortyMillionRootPrimeCutoffCount rootClass)) <=
        fortyMillionRootEnvelopeNumerator block rootClass * lower)
  else true

/-- Above `21M * 2^k`, the support product pays for the unscreened root
coefficient.  The fraction `242882 / 2100000000` is the resulting coefficient
contribution after division by `100 * N`. -/
def fortyMillionLargeRootPrimeBlockPasses
    (block : FortyMillionTenBranchBlock)
    (rootClass : FortyMillionRootClass)
    (primeBlock : Nat × Nat × Nat) : Bool :=
  let lower := fortyMillionRootPrimeBlockLower block primeBlock
  if lower < block.upper && lower < 55 * (primeBlock.2.1 + 1) then
    decide (
      (242_882 * lower +
          2_100_000_000 * (primeBlock.2.2 -
            fortyMillionRootPrimeCutoffCount rootClass)) * 6_000_000_000 <=
        fortyMillionRootEnvelopeNumerator block rootClass *
          2_100_000_000 * lower)
  else true

end Erdos848
