import Erdos848.Asymptotic
import Erdos848.TailHighDiagonalPrimeUnion

namespace Erdos848

/-!
# Analytic envelope for the unbounded diagonal prime union

The semantic prime union contains a floor error for each prime.  This module
separates that error from the reciprocal-square main term.  The main term is
bounded once and for all by the already kernel-checked `1 / 70` estimate;
only a prime-count bound at the movable cutoff remains numerical.
-/

theorem highDiagonalPrimes_eq_diagPrimesUpTo (cutoff : Nat) :
    highDiagonalPrimes cutoff = diagPrimesUpTo cutoff := by
  ext p
  simp only [highDiagonalPrimes, diagPrimesUpTo, primesUpTo,
    Finset.mem_filter, Finset.mem_range]
  constructor
  · rintro ⟨hpRange, hpPrime, hpMod, hpNeFive⟩
    exact ⟨⟨hpRange, hpPrime⟩, hpMod,
      prime_ge_13_of_mod4_one_ne5 p hpPrime hpMod hpNeFive⟩
  · rintro ⟨⟨hpRange, hpPrime⟩, hpMod, hpThirteen⟩
    exact ⟨hpRange, hpPrime, hpMod, by omega⟩

theorem highDiagonalPrimes_card_le_primeCounting (cutoff : Nat) :
    (highDiagonalPrimes cutoff).card ≤ cutoff.primeCounting := by
  rw [highDiagonalPrimes_eq_diagPrimesUpTo]
  calc
    (diagPrimesUpTo cutoff).card ≤ (primesUpTo cutoff).card := by
      apply Finset.card_le_card
      intro p hp
      exact (Finset.mem_filter.mp hp).1
    _ = cutoff.primeCounting := primesUpTo_card cutoff

theorem sum_highDiagonalPrimes_reciprocal_sq_le (cutoff : Nat) :
    (∑ p ∈ highDiagonalPrimes cutoff,
      (1 : Rat) / (p ^ 2 : Rat)) ≤ (1 : Rat) / 70 := by
  rw [highDiagonalPrimes_eq_diagPrimesUpTo]
  exact sum_diagPrimesUpTo_le cutoff

def highDiagonalReciprocalBound : Rat :=
  1_391 / 100_000

theorem sum_highDiagonalPrimes_reciprocal_sq_le_sharp
    (cutoff : Nat) :
    (∑ p ∈ highDiagonalPrimes cutoff,
      (1 : Rat) / (p ^ 2 : Rat)) ≤
        highDiagonalReciprocalBound := by
  rw [highDiagonalPrimes_eq_diagPrimesUpTo]
  exact sum_diagPrimesUpTo_le_sharp cutoff

def highDiagonalPrimePayment
    (cutoff N : Nat) (selection : PaperDiagonalSelection) : Nat :=
  ∑ p ∈ highDiagonalPrimes cutoff,
    2 * selection.smallResidues.card *
      ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)

def highDiagonalPrimeEnvelopeQ
    (cutoff N : Nat) (selection : PaperDiagonalSelection) : Rat :=
  2 * selection.smallResidues.card *
    (((N + 1 : Nat) : Rat) / selection.smallPeriod / 70 +
      cutoff.primeCounting)

def highDiagonalPrimeEnvelopeWithCountQ
    (N primeCount : Nat)
    (selection : PaperDiagonalSelection) : Rat :=
  2 * selection.smallResidues.card *
    (((N + 1 : Nat) : Rat) / selection.smallPeriod / 70 +
      primeCount)

private theorem highDiagonalPrimeBaseSum_le
    (cutoff N : Nat) (selection : PaperDiagonalSelection) :
    ((∑ p ∈ highDiagonalPrimes cutoff,
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) : Nat) : Rat) ≤
      (((N + 1 : Nat) : Rat) / selection.smallPeriod) *
          (∑ p ∈ highDiagonalPrimes cutoff,
            (1 : Rat) / (p ^ 2 : Rat)) +
        cutoff.primeCounting := by
  classical
  let primes := highDiagonalPrimes cutoff
  have hterm :
      ∀ p ∈ primes,
        (((N + 1) / (p ^ 2 * selection.smallPeriod) : Nat) : Rat) ≤
          ((N + 1 : Nat) : Rat) /
            (p ^ 2 * selection.smallPeriod) := by
    intro p hp
    have hpPrime : Nat.Prime p :=
      (Finset.mem_filter.mp hp).2.1
    simpa [Nat.cast_mul, Nat.cast_pow] using
      cast_nat_div_le_rat (N + 1)
        (p ^ 2 * selection.smallPeriod)
        (Nat.mul_pos (pow_pos hpPrime.pos 2) selection.smallPeriod_pos)
  have hdiv :
      ((∑ p ∈ primes,
          ((N + 1) / (p ^ 2 * selection.smallPeriod) : Nat) : Nat) : Rat) ≤
        ∑ p ∈ primes,
          ((N + 1 : Nat) : Rat) /
            (p ^ 2 * selection.smallPeriod) := by
    exact_mod_cast Finset.sum_le_sum fun p hp => hterm p hp
  have hrearrange :
      (∑ p ∈ primes,
          ((N + 1 : Nat) : Rat) /
            (p ^ 2 * selection.smallPeriod)) =
        (((N + 1 : Nat) : Rat) / selection.smallPeriod) *
          ∑ p ∈ primes, (1 : Rat) / (p ^ 2 : Rat) := by
    simp only [div_eq_mul_inv, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro p hp
    have hpPrime : Nat.Prime p :=
      (Finset.mem_filter.mp hp).2.1
    have hpNonzero : (p : Rat) ≠ 0 := by
      exact_mod_cast hpPrime.ne_zero
    have hperiodNonzero :
        (selection.smallPeriod : Rat) ≠ 0 := by
      exact_mod_cast ne_of_gt selection.smallPeriod_pos
    field_simp
  have hcard :
      (primes.card : Rat) ≤ cutoff.primeCounting := by
    exact_mod_cast highDiagonalPrimes_card_le_primeCounting cutoff
  calc
    ((∑ p ∈ highDiagonalPrimes cutoff,
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) : Nat) : Rat) =
        ((∑ p ∈ primes,
          ((N + 1) / (p ^ 2 * selection.smallPeriod) : Nat) : Nat) : Rat) +
          primes.card := by
      simp [primes, Finset.sum_add_distrib]
    _ ≤ (∑ p ∈ primes,
          ((N + 1 : Nat) : Rat) /
            (p ^ 2 * selection.smallPeriod)) +
          cutoff.primeCounting :=
      add_le_add hdiv hcard
    _ = (((N + 1 : Nat) : Rat) / selection.smallPeriod) *
          (∑ p ∈ highDiagonalPrimes cutoff,
            (1 : Rat) / (p ^ 2 : Rat)) +
          cutoff.primeCounting := by
      rw [hrearrange]

theorem highDiagonalPrimePayment_le_envelope
    (cutoff N : Nat) (selection : PaperDiagonalSelection) :
    (highDiagonalPrimePayment cutoff N selection : Rat) ≤
      highDiagonalPrimeEnvelopeQ cutoff N selection := by
  let coefficient := 2 * selection.smallResidues.card
  have hbase :=
    highDiagonalPrimeBaseSum_le cutoff N selection
  have hreciprocal :=
    sum_highDiagonalPrimes_reciprocal_sq_le cutoff
  have hmain :
      (((N + 1 : Nat) : Rat) / selection.smallPeriod) *
          (∑ p ∈ highDiagonalPrimes cutoff,
            (1 : Rat) / (p ^ 2 : Rat)) ≤
        (((N + 1 : Nat) : Rat) / selection.smallPeriod) / 70 := by
    have hnonnegative :
        (0 : Rat) ≤
          ((N + 1 : Nat) : Rat) / selection.smallPeriod := by
      positivity
    simpa [div_eq_mul_inv, mul_assoc] using
      mul_le_mul_of_nonneg_left hreciprocal hnonnegative
  have hbase' :
      ((∑ p ∈ highDiagonalPrimes cutoff,
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) : Nat) : Rat) ≤
        (((N + 1 : Nat) : Rat) / selection.smallPeriod) / 70 +
          cutoff.primeCounting :=
    hbase.trans (add_le_add hmain le_rfl)
  have hfactor :
      (highDiagonalPrimePayment cutoff N selection : Rat) =
        coefficient *
          ((∑ p ∈ highDiagonalPrimes cutoff,
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) : Nat) : Rat) := by
    simp [highDiagonalPrimePayment, coefficient, Finset.mul_sum]
  have hcoefficientNonnegative : (0 : Rat) ≤ coefficient := by
    positivity
  rw [hfactor]
  simpa [highDiagonalPrimeEnvelopeQ, coefficient] using
    mul_le_mul_of_nonneg_left hbase' hcoefficientNonnegative

theorem highDiagonalPrimePayment_le_envelopeWithCount
    {cutoff N primeCount : Nat} (selection : PaperDiagonalSelection)
    (hcount : cutoff.primeCounting ≤ primeCount) :
    (highDiagonalPrimePayment cutoff N selection : Rat) ≤
      highDiagonalPrimeEnvelopeWithCountQ
        N primeCount selection := by
  have hbase :=
    highDiagonalPrimePayment_le_envelope cutoff N selection
  apply hbase.trans
  unfold highDiagonalPrimeEnvelopeQ
  unfold highDiagonalPrimeEnvelopeWithCountQ
  gcongr

theorem tailDiagonalSelected_card_le_analyticEnvelope
    {cutoff N primeCount : Nat} (selection : PaperDiagonalSelection)
    (hcount : cutoff.primeCounting ≤ primeCount) :
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) ≤
      highDiagonalPrimeEnvelopeWithCountQ
          N primeCount selection +
        highLargeSquarePayment cutoff (N + 1) selection.isOdd := by
  have hcardNat :=
    tailDiagonalSelected_card_le_primeSum_add_largeSquare
      (cutoff := cutoff) (N := N) selection
  have hcardRat :
      (((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) ≤
        highDiagonalPrimePayment cutoff N selection +
          highLargeSquarePayment cutoff (N + 1) selection.isOdd := by
    exact_mod_cast hcardNat
  exact hcardRat.trans <|
    add_le_add
      (highDiagonalPrimePayment_le_envelopeWithCount selection hcount)
      le_rfl

#print axioms highDiagonalPrimePayment_le_envelope
#print axioms tailDiagonalSelected_card_le_analyticEnvelope

end Erdos848
