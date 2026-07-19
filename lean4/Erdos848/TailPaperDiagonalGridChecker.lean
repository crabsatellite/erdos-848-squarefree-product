import Erdos848.TailPaperTruncatedDiagonalBridge

namespace Erdos848

/-!
# Compact kernel checker for the paper diagonal grids

An untrusted producer supplies one table of the 477 atomic prefix counts at
each short interval endpoint.  The checker verifies all atomic cutoff claims,
the interval regime, and every paper envelope by reduction.  Its soundness
theorems then turn those Boolean equalities into ordinary kernel proofs.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure TruncatedDiagonalAtomCounts where
  divisibleByEight : Fin 9 → Nat
  evenTwo : Fin 9 → Nat
  evenOne : Fin 9 → Fin 49 → Nat
  oddFalse : Fin 9 → Nat
  oddTrue : Fin 9 → Nat

def TruncatedDiagonalAtomCounts.count
    (counts : TruncatedDiagonalAtomCounts) :
    TruncatedDiagonalAtom → Nat
  | .divisibleByEightCell cell => counts.divisibleByEight cell
  | .evenTwoCell cell => counts.evenTwo cell
  | .evenOneFibre cell residue => counts.evenOne cell residue
  | .oddCell false cell => counts.oddFalse cell
  | .oddCell true cell => counts.oddTrue cell

inductive PaperDiagonalSelection where
  | unrestricted
  | concentrated (residueClass : Fin 4) (cell : Fin 9)
  | lowTwoAdic
  | evenTwoCell (cell : Fin 9)
  | oddUnion
  | oddPlusCell (parity : Bool) (cell : Fin 9)
  | oneOdd (parity : Bool)
  | oneOddCell (parity : Bool) (cell : Fin 9)
  deriving DecidableEq, Fintype

def PaperDiagonalSelection.AcceptsAtom :
    PaperDiagonalSelection → TruncatedDiagonalAtom → Prop
  | .unrestricted, _ => True
  | .concentrated residueClass cell, atom =>
      atom.modFourClass ≠ residueClass ∨ atom.modNineCell = cell
  | .lowTwoAdic, .divisibleByEightCell _ => True
  | .lowTwoAdic, .oddCell _ _ => True
  | .lowTwoAdic, _ => False
  | .evenTwoCell _, .divisibleByEightCell _ => True
  | .evenTwoCell _, .oddCell _ _ => True
  | .evenTwoCell cell, .evenTwoCell storedCell => storedCell = cell
  | .evenTwoCell _, .evenOneFibre _ _ => False
  | .oddUnion, .oddCell _ _ => True
  | .oddUnion, _ => False
  | .oddPlusCell parity cell, .oddCell storedParity storedCell =>
      storedParity = parity ∨
        (storedParity = oppositeOddParity parity ∧ storedCell = cell)
  | .oddPlusCell _ _, _ => False
  | .oneOdd parity, .oddCell storedParity _ => storedParity = parity
  | .oneOdd _, _ => False
  | .oneOddCell parity cell, .oddCell storedParity storedCell =>
      storedParity = parity ∧ storedCell = cell
  | .oneOddCell _ _, _ => False

instance PaperDiagonalSelection.acceptsAtomDecidable
    (selection : PaperDiagonalSelection)
    (atom : TruncatedDiagonalAtom) :
    Decidable (selection.AcceptsAtom atom) := by
  cases selection <;> cases atom <;>
    simp [PaperDiagonalSelection.AcceptsAtom] <;> infer_instance

def PaperDiagonalSelection.atoms
    (selection : PaperDiagonalSelection) :
    Finset TruncatedDiagonalAtom :=
  Finset.univ.filter selection.AcceptsAtom

def PaperDiagonalSelection.isOdd : PaperDiagonalSelection → Bool
  | .oddUnion | .oddPlusCell _ _ | .oneOdd _ | .oneOddCell _ _ => true
  | _ => false

lemma odd_of_truncatedDiagonalAtomOf_eq_oddCell
    {x : Nat} {parity : Bool} {cell : Fin 9}
    (h : truncatedDiagonalAtomOf x = .oddCell parity cell) :
    x % 2 = 1 := by
  by_cases hx : x % 2 = 1
  · exact hx
  · exfalso
    simp only [truncatedDiagonalAtomOf, hx, if_false] at h
    split at h <;> simp_all
    split at h <;> simp_all

theorem PaperDiagonalSelection.odd_of_mem_atoms
    {selection : PaperDiagonalSelection} {x : Nat}
    (hodd : selection.isOdd = true)
    (hx : truncatedDiagonalAtomOf x ∈ selection.atoms) :
    x % 2 = 1 := by
  have haccepts := (Finset.mem_filter.mp hx).2
  generalize hatom : truncatedDiagonalAtomOf x = atom at haccepts
  cases selection <;>
    simp [PaperDiagonalSelection.isOdd] at hodd
  all_goals
    cases atom <;>
      simp [PaperDiagonalSelection.AcceptsAtom] at haccepts
  all_goals
    exact odd_of_truncatedDiagonalAtomOf_eq_oddCell hatom

def TruncatedDiagonalAtomCounts.sum
    (counts : TruncatedDiagonalAtomCounts)
    (selection : PaperDiagonalSelection) : Nat :=
  ∑ atom ∈ selection.atoms, counts.count atom

def truncatedDiagonalAtomCutoffsPass
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (upper : Nat) (counts : TruncatedDiagonalAtomCounts) : Bool :=
  decide (∀ atom, (targets atom).Cutoff upper (counts.count atom))

theorem truncatedDiagonalAtomCutoffsPass_sound
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {upper : Nat} {counts : TruncatedDiagonalAtomCounts}
    (hpass : truncatedDiagonalAtomCutoffsPass targets upper counts = true) :
    ∀ atom, (targets atom).Cutoff upper (counts.count atom) := by
  exact of_decide_eq_true hpass

inductive PaperDiagonalRegime where
  | tenToTwenty
  | twentyToForty
  | fortyToFifty
  | fiftyToSeventy
  | seventyToEighty
  | eightyToHundred
  | hundredToHundredFifty
  | hundredFiftyToTwoHundred
  deriving DecidableEq, Fintype

def PaperDiagonalRegime.lower : PaperDiagonalRegime → Nat
  | .tenToTwenty => 10_000_000
  | .twentyToForty => 20_000_000
  | .fortyToFifty => 40_000_000
  | .fiftyToSeventy => 50_000_000
  | .seventyToEighty => 70_000_000
  | .eightyToHundred => 80_000_000
  | .hundredToHundredFifty => 100_000_000
  | .hundredFiftyToTwoHundred => 150_000_000

def PaperDiagonalRegime.stop : PaperDiagonalRegime → Nat
  | .tenToTwenty => 20_000_000
  | .twentyToForty => 40_000_000
  | .fortyToFifty => 50_000_000
  | .fiftyToSeventy => 70_000_000
  | .seventyToEighty => 80_000_000
  | .eightyToHundred => 100_000_000
  | .hundredToHundredFifty => 150_000_000
  | .hundredFiftyToTwoHundred => 200_000_000

/-- All paper diagonal ceilings are normalized to denominator `10^9`. -/
def PaperDiagonalRegime.envelopeNumerator :
    PaperDiagonalRegime → PaperDiagonalSelection → Nat
  | .tenToTwenty, .unrestricted => 25_289_862
  | .tenToTwenty, .concentrated _ _ => 19_674_183
  | .tenToTwenty, .lowTwoAdic => 15_808_416
  | .tenToTwenty, .evenTwoCell _ => 16_160_942
  | .tenToTwenty, .oddUnion => 12_647_924
  | .tenToTwenty, .oddPlusCell _ _ => 12_647_924
  | .tenToTwenty, .oneOdd _ => 6_325_016
  | .tenToTwenty, .oneOddCell _ _ => 705_902
  | .twentyToForty, .unrestricted => 25_289_550
  | .twentyToForty, .concentrated _ _ => 19_671_796
  | .twentyToForty, .lowTwoAdic => 15_806_240
  | .twentyToForty, .evenTwoCell _ => 16_158_563
  | .twentyToForty, .oddUnion => 12_646_194
  | .twentyToForty, .oddPlusCell _ _ => 7_027_715
  | .twentyToForty, .oneOdd _ => 6_323_839
  | .twentyToForty, .oneOddCell _ _ => 705_249
  | .fortyToFifty, .unrestricted => 25_288_306
  | .fortyToFifty, .concentrated _ _ => 19_669_629
  | .fortyToFifty, .oddUnion => 12_644_928
  | .fortyToFifty, .oddPlusCell _ _ => 12_644_928
  | .fortyToFifty, .oneOdd _ => 6_323_387
  | .fortyToFifty, .oneOddCell _ _ => 704_922
  | .fiftyToSeventy, .unrestricted => 25_289_177
  | .fiftyToSeventy, .concentrated _ _ => 19_670_398
  | .fiftyToSeventy, .oddUnion => 12_645_934
  | .fiftyToSeventy, .oddPlusCell _ _ => 12_645_934
  | .fiftyToSeventy, .oneOdd _ => 6_324_212
  | .fiftyToSeventy, .oneOddCell _ _ => 705_254
  | .seventyToEighty, .unrestricted => 25_289_195
  | .seventyToEighty, .concentrated _ _ => 19_670_557
  | .seventyToEighty, .oddUnion => 12_646_195
  | .seventyToEighty, .oddPlusCell _ _ => 12_646_195
  | .seventyToEighty, .oneOdd _ => 6_324_677
  | .seventyToEighty, .oneOddCell _ _ => 705_450
  | .eightyToHundred, .unrestricted => 25_289_763
  | .eightyToHundred, .concentrated _ _ => 19_670_912
  | .eightyToHundred, .oddUnion => 12_646_399
  | .eightyToHundred, .oddPlusCell _ _ => 12_646_399
  | .eightyToHundred, .oneOdd _ => 6_324_905
  | .eightyToHundred, .oneOddCell _ _ => 706_127
  | .hundredToHundredFifty, .unrestricted => 25_291_155
  | .hundredToHundredFifty, .concentrated _ _ => 19_672_482
  | .hundredToHundredFifty, .oddUnion => 12_648_139
  | .hundredToHundredFifty, .oddPlusCell _ _ => 12_648_139
  | .hundredToHundredFifty, .oneOdd _ => 6_326_632
  | .hundredToHundredFifty, .oneOddCell _ _ => 707_564
  | .hundredFiftyToTwoHundred, .unrestricted => 25_292_702
  | .hundredFiftyToTwoHundred, .concentrated _ _ => 19_673_898
  | .hundredFiftyToTwoHundred, .oddUnion => 12_649_812
  | .hundredFiftyToTwoHundred, .oddPlusCell _ _ => 12_649_812
  | .hundredFiftyToTwoHundred, .oneOdd _ => 6_328_282
  | .hundredFiftyToTwoHundred, .oneOddCell _ _ => 709_139
  | .fortyToFifty, .lowTwoAdic => 25_288_306
  | .fortyToFifty, .evenTwoCell _ => 25_288_306
  | .fiftyToSeventy, .lowTwoAdic => 25_289_177
  | .fiftyToSeventy, .evenTwoCell _ => 25_289_177
  | .seventyToEighty, .lowTwoAdic => 25_289_195
  | .seventyToEighty, .evenTwoCell _ => 25_289_195
  | .eightyToHundred, .lowTwoAdic => 25_289_763
  | .eightyToHundred, .evenTwoCell _ => 25_289_763
  | .hundredToHundredFifty, .lowTwoAdic => 25_291_155
  | .hundredToHundredFifty, .evenTwoCell _ => 25_291_155
  | .hundredFiftyToTwoHundred, .lowTwoAdic => 25_292_702
  | .hundredFiftyToTwoHundred, .evenTwoCell _ => 25_292_702

def paperLargeSquarePayment
    (cutoff upper : Nat) (odd : Bool) : Nat :=
  if odd then
    (((upper + 1) ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13)
  else
    (((upper + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) * 13)

theorem paperLargeSquarePayment_mono
    {cutoff N upper : Nat} {odd : Bool} (hN : N ≤ upper) :
    paperLargeSquarePayment cutoff N odd ≤
      paperLargeSquarePayment cutoff upper odd := by
  have hsucc : N + 1 ≤ upper + 1 := by omega
  have hpow : (N + 1) ^ 2 ≤ (upper + 1) ^ 2 :=
    Nat.pow_le_pow_left hsucc 2
  have hdiv :
      (N + 1) ^ 2 / (cutoff + 1) ^ 2 ≤
        (upper + 1) ^ 2 / (cutoff + 1) ^ 2 :=
    Nat.div_le_div_right hpow
  cases odd
  · simp only [paperLargeSquarePayment, Bool.false_eq_true, ↓reduceIte]
    exact Nat.mul_le_mul_right 13 (Nat.add_le_add_right hdiv 1)
  · simp only [paperLargeSquarePayment, ↓reduceIte]
    have hdivEight :
        ((N + 1) ^ 2 / (cutoff + 1) ^ 2) / 8 ≤
          ((upper + 1) ^ 2 / (cutoff + 1) ^ 2) / 8 :=
      Nat.div_le_div_right hdiv
    exact Nat.mul_le_mul_right 13
      (Nat.add_le_add_right hdivEight 1)

structure PaperDiagonalGridRow where
  regime : PaperDiagonalRegime
  lower : Nat
  upper : Nat
  counts : TruncatedDiagonalAtomCounts

def PaperDiagonalGridRow.rangeValid
    (row : PaperDiagonalGridRow) : Prop :=
  row.regime.lower ≤ row.lower ∧ row.lower ≤ row.upper ∧
    row.upper < row.regime.stop

def PaperDiagonalGridRow.budgetsValid
    (row : PaperDiagonalGridRow) (cutoff : Nat) : Prop :=
  ∀ selection,
    (row.counts.sum selection +
      paperLargeSquarePayment cutoff row.upper
        selection.isOdd) * 1_000_000_000 ≤
      row.regime.envelopeNumerator selection * row.lower

instance (row : PaperDiagonalGridRow) :
    Decidable row.rangeValid := by
  unfold PaperDiagonalGridRow.rangeValid
  infer_instance

instance (row : PaperDiagonalGridRow) (cutoff : Nat) :
    Decidable (row.budgetsValid cutoff) := by
  unfold PaperDiagonalGridRow.budgetsValid
  infer_instance

def PaperDiagonalGridRow.check
    (row : PaperDiagonalGridRow)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (cutoff : Nat) : Bool :=
  truncatedDiagonalAtomCutoffsPass targets row.upper row.counts &&
    (decide row.rangeValid &&
      decide (row.budgetsValid cutoff))

theorem PaperDiagonalGridRow.check_sound
    {row : PaperDiagonalGridRow}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat}
    (hcheck : row.check targets cutoff = true) :
    (∀ atom, (targets atom).Cutoff row.upper
      (row.counts.count atom)) ∧
      row.rangeValid ∧ row.budgetsValid cutoff := by
  have hparts := Bool.and_eq_true_iff.mp hcheck
  have hrest := Bool.and_eq_true_iff.mp hparts.2
  exact ⟨truncatedDiagonalAtomCutoffsPass_sound hparts.1,
    of_decide_eq_true hrest.1, of_decide_eq_true hrest.2⟩

structure CertifiedPaperDiagonalGridRow
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (cutoff : Nat) where
  row : PaperDiagonalGridRow
  checked : row.check targets cutoff = true

def paperDiagonalGridCoversFrom
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat} (start stop : Nat) :
    List (CertifiedPaperDiagonalGridRow targets cutoff) → Bool
  | [] => decide (start = stop)
  | certificate :: rest =>
      decide (certificate.row.lower = start ∧
        start ≤ certificate.row.upper) &&
      paperDiagonalGridCoversFrom
        (certificate.row.upper + 1) stop rest

theorem exists_certifiedPaperDiagonalGridRow_of_cover
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff start stop N : Nat}
    {rows : List (CertifiedPaperDiagonalGridRow targets cutoff)}
    (hcover : paperDiagonalGridCoversFrom start stop rows = true)
    (hstart : start ≤ N) (hstop : N < stop) :
    ∃ certificate ∈ rows,
      certificate.row.lower ≤ N ∧ N ≤ certificate.row.upper := by
  induction rows generalizing start with
  | nil =>
      change decide (start = stop) = true at hcover
      have heq : start = stop := of_decide_eq_true hcover
      omega
  | cons certificate rest ih =>
      change
        (decide (certificate.row.lower = start ∧
          start ≤ certificate.row.upper) &&
          paperDiagonalGridCoversFrom
            (certificate.row.upper + 1) stop rest) = true at hcover
      have hparts := Bool.and_eq_true_iff.mp hcover
      have hfirst :
          certificate.row.lower = start ∧
            start ≤ certificate.row.upper :=
        of_decide_eq_true hparts.1
      by_cases hNUpper : N ≤ certificate.row.upper
      · exact ⟨certificate, by simp, hfirst.1 ▸ hstart, hNUpper⟩
      · obtain ⟨found, hfound, hlower, hupper⟩ :=
          ih hparts.2 (by omega)
        exact ⟨found, by simp [hfound], hlower, hupper⟩

theorem CertifiedPaperDiagonalGridRow.card_mul_le_envelope
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat}
    (gridRow : CertifiedPaperDiagonalGridRow targets cutoff)
    (certificate : TruncatedDiagonalCoverageCertificate)
    (hcertificateCutoff : certificate.cutoff = cutoff)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered : ∀ atom, (targets atom).AdjacentOrdered)
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hlower : gridRow.row.lower ≤ N)
    (hupper : N ≤ gridRow.row.upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      gridRow.row.regime.envelopeNumerator selection * N := by
  have hsound := gridRow.row.check_sound gridRow.checked
  let counts := gridRow.row.counts.count
  let atoms := selection.atoms
  have hcutoffs :
      ∀ atom ∈ atoms,
        (targets atom).Cutoff gridRow.row.upper (counts atom) := by
    intro atom _hatom
    exact hsound.1 atom
  have hcard :
      ((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card ≤
        gridRow.row.counts.sum selection +
          paperLargeSquarePayment cutoff N
            selection.isOdd := by
    by_cases hodd : selection.isOdd = true
    · have hoddDecide : selection.isOdd = true := hodd
      simpa [atoms, counts, TruncatedDiagonalAtomCounts.sum,
        paperLargeSquarePayment, hoddDecide, hcertificateCutoff] using
        (tailDiagonalOddFiltered_card_le_truncated_add_largeSquare
          (fun x => truncatedDiagonalAtomOf x ∈ atoms)
          (fun _ hx => selection.odd_of_mem_atoms hodd hx)
          hbound).trans
          (Nat.add_le_add_right
            (truncatedPrimeSquareFiltered_card_le_atomUnion
              certificate targets atoms counts
              (fun x => truncatedDiagonalAtomOf x ∈ atoms)
              (fun _ hx => hx)
              hprojects (fun atom _ => hordered atom) hNLimit
              hcutoffs hupper) _)
    · have hoddDecide : selection.isOdd = false := by
        cases hvalue : selection.isOdd <;> simp_all
      simpa [atoms, counts, TruncatedDiagonalAtomCounts.sum,
        paperLargeSquarePayment, hoddDecide, hcertificateCutoff] using
        tailDiagonalFiltered_card_le_atomUnion
          certificate targets atoms counts
          (fun x => truncatedDiagonalAtomOf x ∈ atoms)
          (fun _ hx => hx)
          hprojects (fun atom _ => hordered atom) hNLimit
          hcutoffs hupper hbound
  have hremainder :=
    paperLargeSquarePayment_mono
      (cutoff := cutoff) (odd := selection.isOdd) hupper
  have hpayment :
      ((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
        gridRow.row.counts.sum selection +
          paperLargeSquarePayment cutoff gridRow.row.upper
            selection.isOdd := by
    exact hcard.trans (Nat.add_le_add_left hremainder _)
  calc
    ((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
          1_000_000_000 ≤
        (gridRow.row.counts.sum selection +
          paperLargeSquarePayment cutoff gridRow.row.upper
            selection.isOdd) * 1_000_000_000 :=
      Nat.mul_le_mul_right 1_000_000_000 hpayment
    _ ≤ gridRow.row.regime.envelopeNumerator selection *
          gridRow.row.lower :=
      hsound.2.2 selection
    _ ≤ gridRow.row.regime.envelopeNumerator selection * N :=
      Nat.mul_le_mul_left _ hlower

#print axioms PaperDiagonalSelection.odd_of_mem_atoms
#print axioms truncatedDiagonalAtomCutoffsPass_sound
#print axioms PaperDiagonalGridRow.check_sound
#print axioms exists_certifiedPaperDiagonalGridRow_of_cover
#print axioms CertifiedPaperDiagonalGridRow.card_mul_le_envelope

end Erdos848
