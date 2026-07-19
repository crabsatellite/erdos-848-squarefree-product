import Erdos848.TailTenMillionBudget
import Erdos848.TailDiagonalFiniteChecker
import Erdos848.TailSupportScanChecker
import Erdos848.TailRootEnvelope

namespace Erdos848

/-!
Exact certificate interfaces for the two producer families which are still
external in the ten-million block.  These are `Prop`-valued obligations, not
axioms and not completed certificates.  Their purpose is to make the missing
kernel work precise before generating large data.
-/

/-! ## Seven eventwise diagonal envelopes -/

def tenMillionDiagonalConcentratedSet
    (N evenClass modNineCell : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x =>
    x % 4 ≠ evenClass ∨ x % 9 = modNineCell

def tenMillionDiagonalLowTwoAdicSet (N : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x =>
    x % 8 = 0 ∨ x % 8 = 1 ∨ x % 8 = 3 ∨
      x % 8 = 5 ∨ x % 8 = 7

def tenMillionDiagonalE2CellSet (N modNineCell : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x =>
    x % 8 = 0 ∨ x % 8 = 1 ∨ x % 8 = 3 ∨
      x % 8 = 5 ∨ x % 8 = 7 ∨
      (x % 8 = 4 ∧ x % 9 = modNineCell)

def tenMillionDiagonalOddUnionSet (N : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x => x % 4 = 1 ∨ x % 4 = 3

def tenMillionDiagonalOneOddSet (N oddClass : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x => x % 4 = oddClass

def tenMillionDiagonalOneOddCellSet
    (N oddClass modNineCell : ℕ) : Finset ℕ :=
  (tailDiagonalBad N).filter fun x =>
    x % 4 = oddClass ∧ x % 9 = modNineCell

def TenMillionDiagonalUnrestrictedCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ((tailDiagonalBad N).card : ℚ) / N ≤
      tenMillionDiagonalUnrestricted

def TenMillionDiagonalConcentratedCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ evenClass, (evenClass = 0 ∨ evenClass = 2) →
      ∀ modNineCell, modNineCell < 9 →
        ((tenMillionDiagonalConcentratedSet
          N evenClass modNineCell).card : ℚ) / N ≤
            tenMillionDiagonalConcentrated

def TenMillionDiagonalLowTwoAdicCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ((tenMillionDiagonalLowTwoAdicSet N).card : ℚ) / N ≤
      tenMillionDiagonalLowTwoAdic

def TenMillionDiagonalE2CellCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ modNineCell, modNineCell < 9 →
      ((tenMillionDiagonalE2CellSet N modNineCell).card : ℚ) / N ≤
        tenMillionDiagonalE2Cell

def TenMillionDiagonalOddUnionCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ((tenMillionDiagonalOddUnionSet N).card : ℚ) / N ≤
      tenMillionDiagonalOddUnion

def TenMillionDiagonalOneOddCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ oddClass, (oddClass = 1 ∨ oddClass = 3) →
      ((tenMillionDiagonalOneOddSet N oddClass).card : ℚ) / N ≤
        tenMillionDiagonalOneOdd

def TenMillionDiagonalOneOddCellCertificate : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ oddClass, (oddClass = 1 ∨ oddClass = 3) →
      ∀ modNineCell, modNineCell < 9 →
        ((tenMillionDiagonalOneOddCellSet
          N oddClass modNineCell).card : ℚ) / N ≤
            tenMillionDiagonalOneOddCell

structure TenMillionDiagonalCertificates : Prop where
  unrestricted : TenMillionDiagonalUnrestrictedCertificate
  concentrated : TenMillionDiagonalConcentratedCertificate
  lowTwoAdic : TenMillionDiagonalLowTwoAdicCertificate
  e2Cell : TenMillionDiagonalE2CellCertificate
  oddUnion : TenMillionDiagonalOddUnionCertificate
  oneOdd : TenMillionDiagonalOneOddCertificate
  oneOddCell : TenMillionDiagonalOneOddCellCertificate

/-! ## Five transformed-root profile and jump envelopes -/

inductive TenMillionRootRow where
  | v1
  | v2
  | v3
  | odd7
  | odd17
  deriving DecidableEq

def TenMillionRootRow.split : TenMillionRootRow → ℕ
  | .v1 | .v2 => 78
  | .v3 => 70
  | .odd7 | .odd17 => 62

def TenMillionRootRow.cutoff : TenMillionRootRow → ℕ
  | .v1 | .v2 | .v3 | .odd7 => 7
  | .odd17 => 17

def TenMillionRootRow.heightFactor : TenMillionRootRow → ℕ
  | .v1 | .odd7 | .odd17 => 1
  | .v2 => 2
  | .v3 => 4

def TenMillionRootRow.envelope : TenMillionRootRow → ℚ
  | .v1 => tenMillionRootV1
  | .v2 => tenMillionRootV2
  | .v3 => tenMillionRootV3
  | .odd7 => tenMillionRootOdd7
  | .odd17 => tenMillionRootOdd17

/-- Exact support maxima printed by `support_coset_maximum`; entries above
six are irrelevant because the product of the seven least eligible primes
already exceeds the interval endpoint. -/
def TenMillionRootRow.survivorCeiling
    (row : TenMillionRootRow) (supportLength : ℕ) : ℕ :=
  match row, supportLength with
  | .v1, 0 | .v1, 1 => 1217
  | .v1, 2 => 654
  | .v1, 3 => 342
  | .v1, 4 => 168
  | .v1, 5 => 80
  | .v1, 6 => 34
  | .v2, 0 | .v2, 1 => 609
  | .v2, 2 => 339
  | .v2, 3 => 181
  | .v2, 4 => 98
  | .v2, 5 => 51
  | .v2, 6 => 24
  | .v3, 0 | .v3, 1 => 246
  | .v3, 2 => 152
  | .v3, 3 => 87
  | .v3, 4 => 52
  | .v3, 5 => 30
  | .v3, 6 => 17
  | .odd7, 0 | .odd7, 1 | .odd17, 0 | .odd17, 1 => 1538
  | .odd7, 2 | .odd17, 2 => 826
  | .odd7, 3 | .odd17, 3 => 431
  | .odd7, 4 | .odd17, 4 => 222
  | .odd7, 5 | .odd17, 5 => 108
  | .odd7, 6 | .odd17, 6 => 49
  | _, _ => 0

def TenMillionRootRow.quotientAccepts
    (row : TenMillionRootRow) (m : ℕ) : Bool :=
  match row with
  | .v1 => decide (m % 2 = 1)
  | .v2 => decide (m % 4 = 1)
  | .v3 => decide (m % 8 = 1)
  | .odd7 | .odd17 => true

def tenMillionRootSupportAccepts
    (row : TenMillionRootRow) (support : List ℕ)
    (squareCoset : Bool) (m : ℕ) : Bool :=
  modFiveCosetAccepts squareCoset m && row.quotientAccepts m &&
    support.all fun p => decide (qrMaskAccepts p m)

def tenMillionRootSurvivorCount
    (row : TenMillionRootRow) (support : List ℕ)
    (squareCoset : Bool) : ℕ :=
  countNatRange (tenMillionRootSupportAccepts row support squareCoset) 1
    (row.split ^ 2)

def TenMillionSupportPrime (p : ℕ) : Prop :=
  Nat.Prime p ∧ p ≠ 5 ∧ p % 2 = 1

/-- Finite QR-mask obligation.  It includes the product-bound completeness
step and therefore cannot be discharged by checking only the displayed
witness supports. -/
def TenMillionRootSupportProfileCertificate : Prop :=
  ∀ (row : TenMillionRootRow) (support : List Nat)
      (squareCoset : Bool),
    (∀ p ∈ support, TenMillionSupportPrime p) →
    support.Pairwise (· < ·) → support.prod ≤ tenMillionUpper →
    support.length ≤ 6 ∧
      tenMillionRootSurvivorCount row support.dropLast squareCoset ≤
        row.survivorCeiling support.length

/-- Prime-jump obligation after replacing every actual support by its
certified survivor ceiling.  Between these candidates, antitonicity is already
the kernel theorem `transformedRootRow_antitone`. -/
def TenMillionRootJumpCertificate : Prop :=
  ∀ (row : TenMillionRootRow) (N supportLength : Nat),
    tenMillionLower ≤ N → N < tenMillionUpper → supportLength ≤ 6 →
    transformedRootRow N (N / row.split)
      (Nat.primeCounting (N / row.split) - Nat.primeCounting row.cutoff)
      (row.heightFactor * 2 ^ (supportLength + 1))
      (row.survivorCeiling supportLength) ≤ row.envelope

theorem transformedRootRow_le_of_survivors_le
    {N Y primeDelta height survivors ceiling : ℕ}
    (hN : 0 < N) (hsurvivors : survivors ≤ ceiling) :
    transformedRootRow N Y primeDelta height survivors ≤
      transformedRootRow N Y primeDelta height ceiling := by
  have hnumerator :
      6 * primeDelta + 6 * height * survivors ≤
        6 * primeDelta + 6 * height * ceiling := by
    exact Nat.add_le_add_left
      (Nat.mul_le_mul_left (6 * height) hsurvivors) (6 * primeDelta)
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  unfold transformedRootRow
  have hfirst :
      ((6 * primeDelta + 6 * height * survivors : ℕ) : ℚ) / N ≤
        ((6 * primeDelta + 6 * height * ceiling : ℕ) : ℚ) / N := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hnumerator) hNq.le
  linarith

/-- Reusable assembly of the two root certificate families. -/
theorem tenMillionRootEnvelope_of_profile_jump
    (hprofile : TenMillionRootSupportProfileCertificate)
    (hjump : TenMillionRootJumpCertificate)
    (row : TenMillionRootRow) (N : ℕ) (support : List ℕ)
    (squareCoset : Bool)
    (hLower : tenMillionLower ≤ N) (hUpper : N < tenMillionUpper)
    (hPrimes : ∀ p ∈ support, TenMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ tenMillionUpper) :
    transformedRootRow N (N / row.split)
      (Nat.primeCounting (N / row.split) - Nat.primeCounting row.cutoff)
      (row.heightFactor * 2 ^ (support.length + 1))
      (tenMillionRootSurvivorCount row support.dropLast squareCoset) ≤
        row.envelope := by
  obtain ⟨hLength, hSurvivors⟩ :=
    hprofile row support squareCoset hPrimes hIncreasing hProduct
  exact (transformedRootRow_le_of_survivors_le
    (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower) hSurvivors).trans
      (hjump row N support.length hLower hUpper hLength)

end Erdos848
