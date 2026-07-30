import Erdos848.TailHighPieceGroupedDiagonalEnvelope

namespace Erdos848

/-!
# Sharp piece-grouped diagonal envelope

This is the publication route's version of the piece-grouped envelope.  It
uses the arithmetic-progression tail

`∑_{p ≡ 1 (mod 4), p ≥ 13} p⁻² ≤ 1391 / 100000`

proved in `Asymptotic`, instead of the older all-integer tail `1/70`.
The semantic payment and the at-most-four progression decomposition are
unchanged.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highPieceGroupedDiagonalPrimeEnvelopeSharpQ
    (N : Nat) (primeCount : Rat)
    (selection : PaperDiagonalSelection) : Rat :=
  (46 * selection.selectionResidueCount / 25) *
      ((((N + 1 : Nat) : Rat) /
        selection.selectionPeriod) *
          highDiagonalReciprocalBound) +
    (138 * selection.highPieceCount / 25) * primeCount

theorem highPieceGroupedDiagonalPrimePayment_le_sharpEnvelope
    {cutoff N : Nat} {primeCount : Rat}
    (selection : PaperDiagonalSelection)
    (hcount :
      ((highDiagonalPrimes cutoff).card : Rat) ≤ primeCount) :
    (highPieceGroupedDiagonalPrimePayment
        cutoff N selection : Rat) ≤
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
        N primeCount selection := by
  let primes := highDiagonalPrimes cutoff
  have hterm :
      ∀ p ∈ primes,
        (highPieceGroupedDiagonalPrimeTerm
          N p selection : Rat) ≤
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
    sum_highDiagonalPrimes_reciprocal_sq_le_sharp cutoff
  have hmain :
      ∑ p ∈ primes,
          (46 * selection.selectionResidueCount / 25) *
            (((N + 1 : Nat) : Rat) /
              selection.selectionPeriod /
                (p ^ 2 : Nat)) ≤
        (46 * selection.selectionResidueCount / 25) *
          ((((N + 1 : Nat) : Rat) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) := by
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
            selection.selectionPeriod)) *
          highDiagonalReciprocalBound :=
        mul_le_mul_of_nonneg_left
          (by simpa [primes] using hreciprocal)
          hcoefficient
      _ =
        (46 * selection.selectionResidueCount / 25) *
          ((((N + 1 : Nat) : Rat) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) := by ring
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
          ((((N + 1 : Nat) : Rat) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) +
        (138 * selection.highPieceCount / 25) *
          primeCount := by
      gcongr
    _ =
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
        N primeCount selection := rfl

theorem tailDiagonalSelected_card_le_pieceGroupedSharpEnvelope
    {cutoff N : Nat} {primeCount : Rat}
    (selection : PaperDiagonalSelection)
    (hcount :
      ((highDiagonalPrimes cutoff).card : Rat) ≤ primeCount) :
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) ≤
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
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
      (highPieceGroupedDiagonalPrimePayment_le_sharpEnvelope
        selection hcount)
      le_rfl

#print axioms highPieceGroupedDiagonalPrimePayment_le_sharpEnvelope
#print axioms tailDiagonalSelected_card_le_pieceGroupedSharpEnvelope

end Erdos848
