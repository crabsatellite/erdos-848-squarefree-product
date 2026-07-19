namespace Erdos848

/-! The three literal even valuation rows used by the global support checker. -/

inductive GlobalMixedEvenValuation where
  | one
  | two
  | three
  deriving DecidableEq

structure GlobalMixedEvenCounts where
  normalFalseTwo : Nat
  normalTrueTwo : Nat
  twistFalseTwo : Nat
  twistTrueTwo : Nat
  normalFalseThree : Nat
  normalTrueThree : Nat
  twistFalseThree : Nat
  twistTrueThree : Nat
  deriving DecidableEq

/-- One branch-and-bound terminal in the even support trie.  `branchPrefix` is
the branch prefix used to cover complete feasible supports, while
`maskedPrefix` removes primes above the QR-mask cutoff.  `endpoint` is the
least complete-support endpoint below that branch. -/
structure GlobalMixedEvenTerminal where
  branchPrefix : List Nat
  maskedPrefix : List Nat
  endpoint : Nat
  counts : GlobalMixedEvenCounts
  deriving DecidableEq

def globalMixedEvenRootFactor : GlobalMixedEvenValuation -> Nat
  | .one => 1
  | .two => 2
  | .three => 4

def globalMixedEvenNormalModulus : GlobalMixedEvenValuation -> Nat
  | .one => 2
  | .two => 4
  | .three => 8

def globalMixedEvenNormalResidue : GlobalMixedEvenValuation -> Nat
  | .one => 1
  | .two => 1
  | .three => 1

def globalMixedEvenTwistModulus : GlobalMixedEvenValuation -> Nat
  | .one => 2
  | .two => 4
  | .three => 8

def globalMixedEvenTwistResidue : GlobalMixedEvenValuation -> Nat
  | .one => 1
  | .two => 1
  | .three => 5

/-- At the fixed five-million cut, `N / 55 >= 90_113` and hence the
prime-counting term in every global row is at least `8727`.  For the `E3`
three-pivot payment we may therefore compare the actual coefficient `c`
against

`ceil ((5*c - 100*8727) / 6)`

in the already certified odd-row checker.  The semantic bridge proves that
this is exactly a `6/5` root allowance; this definition is only the
integer normalization used by the Boolean leaves. -/
def globalMixedEvenThreeCheckerCoefficient100 (coefficient : Nat) : Nat :=
  (5 * coefficient - 872_700 + 5) / 6

/-- Coefficient submitted to the existing prime-row checker.  `E2` uses the
literal coefficient.  `E3` uses the exact lower-prime-count normalization
above; it does not weaken or move the five-million cut. -/
def globalMixedEvenCheckerCoefficient100
    (valuation : GlobalMixedEvenValuation) (coefficient : Nat) : Nat :=
  match valuation with
  | .one => coefficient
  | .two => coefficient
  | .three => globalMixedEvenThreeCheckerCoefficient100 coefficient

end Erdos848
