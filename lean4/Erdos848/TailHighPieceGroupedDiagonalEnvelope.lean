import Erdos848.TailHighPieceGroupedDiagonal
import Erdos848.TailHighDiagonalAnalyticEnvelope

namespace Erdos848

/-!
# Analytic envelope for the piece-grouped diagonal

The reciprocal-square coefficient is identical to the previous grouped
bound.  Only the endpoint term changes:

`138 / 25 * selectionResidueCount`

is replaced by

`138 / 25 * highPieceCount`.

The latter is at most four in every branch.  All division and summation
steps below are ordinary kernel proofs; a later generated row supplies only
an upper certificate for `primeCounting cutoff`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem highPieceEndpointSum_eq
    (N modulus : Nat)
    (pieces : List HighDiagonalProgressionPiece) :
    (pieces.map fun piece =>
        23 * ((N + 1) / (modulus * piece.period) + 1) + 46).sum =
      23 * (pieces.map fun piece =>
        (N + 1) / (modulus * piece.period)).sum +
          69 * pieces.length := by
  induction pieces with
  | nil => simp
  | cons head rest ih =>
      simp only [List.map_cons, List.sum_cons, List.length_cons]
      rw [ih]
      omega

private theorem highPieceQuotientSum_cast_le
    {N modulus : Nat}
    {pieces : List HighDiagonalProgressionPiece}
    (hmodulus : 0 < modulus)
    (hperiod :
      ∀ piece ∈ pieces, 0 < piece.period) :
    (((pieces.map fun piece =>
        (N + 1) / (modulus * piece.period)).sum : Nat) : Rat) ≤
      (((N + 1 : Nat) : Rat) / modulus) *
        (pieces.map fun piece =>
          (1 : Rat) / piece.period).sum := by
  induction pieces with
  | nil => simp
  | cons head rest ih =>
      have hheadPos : 0 < head.period :=
        hperiod head (by simp)
      have hrest :
          ∀ piece ∈ rest, 0 < piece.period :=
        fun piece hpiece => hperiod piece (by simp [hpiece])
      have hhead :=
        cast_nat_div_le_rat (N + 1)
          (modulus * head.period)
          (Nat.mul_pos hmodulus hheadPos)
      have hfactor :
          (((N + 1 : Nat) : Rat) /
              (modulus * head.period)) =
            (((N + 1 : Nat) : Rat) / modulus) *
              ((1 : Rat) / head.period) := by
        have hmodulusQ : (modulus : Rat) ≠ 0 := by
          exact_mod_cast (Nat.ne_of_gt hmodulus)
        have hperiodQ : (head.period : Rat) ≠ 0 := by
          exact_mod_cast (Nat.ne_of_gt hheadPos)
        push_cast
        field_simp
      have hhead' :
          (((N + 1) /
              (modulus * head.period) : Nat) : Rat) ≤
            ((N + 1 : Nat) : Rat) /
              ((modulus : Rat) * head.period) := by
        simpa only [Nat.cast_add, Nat.cast_one,
          Nat.cast_mul] using hhead
      change
        ((((N + 1) / (modulus * head.period)) +
            (rest.map fun piece =>
              (N + 1) /
                (modulus * piece.period)).sum : Nat) : Rat) ≤
          (((N + 1 : Nat) : Rat) / modulus) *
            ((1 : Rat) / head.period +
              (rest.map fun piece =>
                (1 : Rat) / piece.period).sum)
      rw [Nat.cast_add]
      calc
        ((((N + 1) /
              (modulus * head.period) : Nat) : Rat) +
            ((rest.map fun piece =>
              (N + 1) /
                (modulus * piece.period)).sum : Rat)) ≤
          (((N + 1 : Nat) : Rat) /
              (modulus * head.period)) +
            (((N + 1 : Nat) : Rat) / modulus) *
              (rest.map fun piece =>
                (1 : Rat) / piece.period).sum :=
          add_le_add hhead' (ih hrest)
        _ =
          (((N + 1 : Nat) : Rat) / modulus) *
            ((1 : Rat) / head.period +
              (rest.map fun piece =>
                (1 : Rat) / piece.period).sum) := by
          rw [hfactor]
          ring

theorem highPieceGroupedDiagonalPrimeTerm_cast_le
    {N p : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) :
    (highPieceGroupedDiagonalPrimeTerm N p selection : Rat) ≤
      (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod /
              (p ^ 2 : Nat)) +
        (138 * selection.highPieceCount / 25) := by
  let pieces := highDiagonalSelectionPieces selection
  let quotients : List Nat :=
    pieces.map fun piece =>
      (N + 1) / (p ^ 2 * piece.period)
  let endpointSum : Nat :=
    (pieces.map fun piece =>
      23 * ((N + 1) /
        (p ^ 2 * piece.period) + 1) + 46).sum
  have hperiod :
      ∀ piece ∈ pieces, 0 < piece.period :=
    fun piece hpiece =>
      highDiagonalSelectionPiece_period_pos hpiece
  have hquotients :
      (quotients.sum : Rat) ≤
        (((N + 1 : Nat) : Rat) / (p ^ 2 : Nat)) *
          (pieces.map fun piece =>
            (1 : Rat) / piece.period).sum := by
    simpa [quotients] using
      (highPieceQuotientSum_cast_le
        (N := N) (modulus := p ^ 2)
        (pieces := pieces)
        (pow_pos hp.pos 2) hperiod)
  have hendpoint :
      endpointSum =
        23 * quotients.sum + 69 * pieces.length := by
    simpa [endpointSum, quotients, pieces] using
      highPieceEndpointSum_eq N (p ^ 2) pieces
  unfold highPieceGroupedDiagonalPrimeTerm
  change (((2 * endpointSum) / 25 : Nat) : Rat) ≤ _
  calc
    (((2 * endpointSum) / 25 : Nat) : Rat) ≤
        ((2 * endpointSum : Nat) : Rat) / 25 :=
      cast_nat_div_le_rat (2 * endpointSum) 25 (by norm_num)
    _ =
        (46 / 25 : Rat) * quotients.sum +
          (138 / 25 : Rat) * pieces.length := by
      rw [hendpoint]
      push_cast
      ring
    _ ≤
        (46 / 25 : Rat) *
            ((((N + 1 : Nat) : Rat) / (p ^ 2 : Nat)) *
              (pieces.map fun piece =>
                (1 : Rat) / piece.period).sum) +
          (138 / 25 : Rat) * pieces.length := by
      gcongr
    _ =
      (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod /
              (p ^ 2 : Nat)) +
        (138 * selection.highPieceCount / 25) := by
      rw [highDiagonalSelectionPieces_reciprocal_sum,
        highDiagonalSelectionPieces_length]
      ring

def highPieceGroupedDiagonalPrimePayment
    (cutoff N : Nat) (selection : PaperDiagonalSelection) : Nat :=
  ∑ p ∈ highDiagonalPrimes cutoff,
    highPieceGroupedDiagonalPrimeTerm N p selection

theorem truncatedPrimeSquareSelected_card_le_pieceGroupedPayment
    {cutoff N : Nat} (selection : PaperDiagonalSelection) :
    ((truncatedPrimeSquareBadXValues cutoff N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
      highPieceGroupedDiagonalPrimePayment cutoff N selection := by
  calc
    ((truncatedPrimeSquareBadXValues cutoff N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
      ((highDiagonalPrimes cutoff).biUnion fun p =>
        paperPrimeSelectedBad N p selection).card :=
      Finset.card_le_card <|
        truncatedPrimeSquareSelected_subset_primeUnion selection
    _ ≤ ∑ p ∈ highDiagonalPrimes cutoff,
        (paperPrimeSelectedBad N p selection).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ highDiagonalPrimes cutoff,
        highPieceGroupedDiagonalPrimeTerm N p selection := by
      apply Finset.sum_le_sum
      intro p hpMem
      have hpParts :
          Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5 :=
        (Finset.mem_filter.mp hpMem).2
      exact paperPrimeSelectedBad_card_le_pieceGroupedTerm
        selection hpParts.1 hpParts.2.1 hpParts.2.2
    _ = highPieceGroupedDiagonalPrimePayment
        cutoff N selection := rfl

theorem tailDiagonalSelected_card_le_pieceGroupedPayment_add_largeSquare
    {cutoff N : Nat} (selection : PaperDiagonalSelection) :
    ((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
      highPieceGroupedDiagonalPrimePayment cutoff N selection +
        highLargeSquarePayment cutoff (N + 1)
          selection.isOdd := by
  let select := fun x =>
    truncatedDiagonalAtomOf x ∈ selection.atoms
  have hsmall :=
    truncatedPrimeSquareSelected_card_le_pieceGroupedPayment
      (cutoff := cutoff) (N := N) selection
  by_cases hodd : selection.isOdd = true
  · have hoddSelect :
        ∀ x, select x → x % 2 = 1 :=
      fun _ hx => selection.odd_of_mem_atoms hodd hx
    let large := largeSquareOddBadXValues cutoff (N + 1)
    have hsubset :
        (tailDiagonalBad N).filter select ⊆
          (truncatedPrimeSquareBadXValues cutoff N).filter select ∪
            large := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      rcases
          mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
            hxParts.1 with htruncated | hlarge
      · exact Finset.mem_union_left _
          (Finset.mem_filter.mpr ⟨htruncated, hxParts.2⟩)
      · exact Finset.mem_union_right _
          (Finset.mem_filter.mpr
            ⟨hlarge, hoddSelect x hxParts.2⟩)
    calc
      ((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
        (((truncatedPrimeSquareBadXValues cutoff N).filter select) ∪
          large).card := by
            simpa [select] using Finset.card_le_card hsubset
      _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          large.card :=
        Finset.card_union_le _ _
      _ ≤ highPieceGroupedDiagonalPrimePayment cutoff N selection +
          ((N + 1) ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
            Nat.clog 5 (N + 1) :=
        Nat.add_le_add hsmall highLargeSquareOddBadXValues_card_le
      _ = highPieceGroupedDiagonalPrimePayment cutoff N selection +
          highLargeSquarePayment cutoff (N + 1)
            selection.isOdd := by
        simp [highLargeSquarePayment, hodd]
  · have hoddFalse : selection.isOdd = false := by
      cases hvalue : selection.isOdd <;> simp_all
    let large := largeSquareBadXValues cutoff (N + 1)
    have hsubset :
        (tailDiagonalBad N).filter select ⊆
          (truncatedPrimeSquareBadXValues cutoff N).filter select ∪
            large := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      rcases
          mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
            hxParts.1 with htruncated | hlarge
      · exact Finset.mem_union_left _
          (Finset.mem_filter.mpr ⟨htruncated, hxParts.2⟩)
      · exact Finset.mem_union_right _ hlarge
    calc
      ((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
        (((truncatedPrimeSquareBadXValues cutoff N).filter select) ∪
          large).card := by
            simpa [select] using Finset.card_le_card hsubset
      _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          large.card :=
        Finset.card_union_le _ _
      _ ≤ highPieceGroupedDiagonalPrimePayment cutoff N selection +
          ((N + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) *
            Nat.clog 5 (N + 1) :=
        Nat.add_le_add hsmall highLargeSquareBadXValues_card_le
      _ = highPieceGroupedDiagonalPrimePayment cutoff N selection +
          highLargeSquarePayment cutoff (N + 1)
            selection.isOdd := by
        simp [highLargeSquarePayment, hoddFalse]

def highPieceGroupedDiagonalPrimeEnvelopeWithCountQ
    (N : Nat) (primeCount : Rat)
    (selection : PaperDiagonalSelection) : Rat :=
  (46 * selection.selectionResidueCount / 25) *
      (((N + 1 : Nat) : Rat) /
        selection.selectionPeriod / 70) +
    (138 * selection.highPieceCount / 25) * primeCount

theorem highPieceGroupedDiagonalPrimePayment_le_envelopeWithCount
    {cutoff N : Nat} {primeCount : Rat}
    (selection : PaperDiagonalSelection)
    (hcount :
      ((highDiagonalPrimes cutoff).card : Rat) ≤ primeCount) :
    (highPieceGroupedDiagonalPrimePayment
        cutoff N selection : Rat) ≤
      highPieceGroupedDiagonalPrimeEnvelopeWithCountQ
        N primeCount selection := by
  let primes := highDiagonalPrimes cutoff
  have hterm :
      ∀ p ∈ primes,
        (highPieceGroupedDiagonalPrimeTerm N p selection : Rat) ≤
          (46 * selection.selectionResidueCount / 25) *
              (((N + 1 : Nat) : Rat) /
                selection.selectionPeriod /
                  (p ^ 2 : Nat)) +
            (138 * selection.highPieceCount / 25) := by
    intro p hpMem
    exact highPieceGroupedDiagonalPrimeTerm_cast_le selection
      (Finset.mem_filter.mp hpMem).2.1
  have hsum :
      (highPieceGroupedDiagonalPrimePayment
          cutoff N selection : Rat) ≤
        ∑ p ∈ primes,
          ((46 * selection.selectionResidueCount / 25) *
              (((N + 1 : Nat) : Rat) /
                selection.selectionPeriod /
                  (p ^ 2 : Nat)) +
            (138 * selection.highPieceCount / 25)) := by
    unfold highPieceGroupedDiagonalPrimePayment
    exact_mod_cast Finset.sum_le_sum hterm
  have hreciprocal :=
    sum_highDiagonalPrimes_reciprocal_sq_le cutoff
  have hmain :
      ∑ p ∈ primes,
          (46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod /
                (p ^ 2 : Nat)) ≤
        (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod / 70) := by
    have hcoefficient :
        (0 : Rat) ≤
          (46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod) := by
      positivity
    have hrearrange :
        (∑ p ∈ primes,
          (46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod /
                (p ^ 2 : Nat))) =
          ((46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod)) *
            ∑ p ∈ primes, (1 : Rat) / (p ^ 2 : Rat) := by
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p hpMem
      have hpPrime : Nat.Prime p :=
        (Finset.mem_filter.mp hpMem).2.1
      have hpQ : (p : Rat) ≠ 0 := by
        exact_mod_cast hpPrime.ne_zero
      push_cast
      field_simp
    rw [hrearrange]
    calc
      ((46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod)) *
          ∑ p ∈ primes, (1 : Rat) / (p ^ 2 : Rat) ≤
        ((46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod)) * (1 / 70) :=
          mul_le_mul_of_nonneg_left
            (by simpa [primes] using hreciprocal)
            hcoefficient
      _ =
        (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod / 70) := by ring
  have hcard : (primes.card : Rat) ≤ primeCount := by
    simpa [primes] using hcount
  calc
    (highPieceGroupedDiagonalPrimePayment
        cutoff N selection : Rat) ≤
      ∑ p ∈ primes,
        ((46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod /
                (p ^ 2 : Nat)) +
          (138 * selection.highPieceCount / 25)) := hsum
    _ =
      (∑ p ∈ primes,
        (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod /
              (p ^ 2 : Nat))) +
        (138 * selection.highPieceCount / 25) *
          primes.card := by
      rw [Finset.sum_add_distrib]
      simp
      ring
    _ ≤
      (46 * selection.selectionResidueCount / 25) *
          (((N + 1 : Nat) : Rat) /
            selection.selectionPeriod / 70) +
        (138 * selection.highPieceCount / 25) *
          primeCount := by
      gcongr
    _ =
      highPieceGroupedDiagonalPrimeEnvelopeWithCountQ
        N primeCount selection := rfl

theorem tailDiagonalSelected_card_le_pieceGroupedAnalyticEnvelope
    {cutoff N : Nat} {primeCount : Rat}
    (selection : PaperDiagonalSelection)
    (hcount :
      ((highDiagonalPrimes cutoff).card : Rat) ≤ primeCount) :
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) ≤
      highPieceGroupedDiagonalPrimeEnvelopeWithCountQ
          N primeCount selection +
        highLargeSquarePayment cutoff (N + 1)
          selection.isOdd := by
  have hcardNat :=
    tailDiagonalSelected_card_le_pieceGroupedPayment_add_largeSquare
      (cutoff := cutoff) (N := N) selection
  have hcardRat :
      (((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) ≤
        highPieceGroupedDiagonalPrimePayment cutoff N selection +
          highLargeSquarePayment cutoff (N + 1)
            selection.isOdd := by
    exact_mod_cast hcardNat
  exact hcardRat.trans <|
    add_le_add
      (highPieceGroupedDiagonalPrimePayment_le_envelopeWithCount
        selection hcount)
      le_rfl

#print axioms highPieceGroupedDiagonalPrimeTerm_cast_le
#print axioms
  tailDiagonalSelected_card_le_pieceGroupedAnalyticEnvelope

end Erdos848
