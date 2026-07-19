import Erdos848.TailPureFiveMillionFinite
import Erdos848.TailPureFiveMillionPrime
import Erdos848.TailPrimeProgressionCounting
import Erdos848.TailPrimeSquareBound
import Mathlib.Tactic.IrreducibleDef

namespace Erdos848

/-!
# Medium-prime union at the five-million endpoint

For `47 < p ≤ 192307`, a bad point in one sharp base progression occupies
one CRT class modulo `25 p²`.  We deliberately do not use the additional
parity factor here: the resulting payment is still far below the half-block
threshold and reuses the public one-progression counting lemma directly.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 800000

irreducible_def pureFiveMillionMediumPrimes : Finset ℕ :=
  tailIntermediatePrimes 47 192_307

noncomputable irreducible_def pureFiveMillionMediumBadPoints
    (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  points.filter fun point =>
    ∃ p ∈ pureFiveMillionMediumPrimes,
      p ^ 2 ∣ pivot * point + 1

def baseResiduePrimeSquareUnion
    (N pivot residue : ℕ) (primes : Finset ℕ) : Finset ℕ :=
  primes.biUnion fun p => baseResiduePrimeSquarePoints N pivot residue p

lemma pureFiveMillionMediumPrime_data
    {p : ℕ} (hp : p ∈ pureFiveMillionMediumPrimes) :
    Nat.Prime p ∧ 47 < p ∧ p ≤ 192_307 :=
  mem_tailIntermediatePrimes.mp (by
    simpa only [pureFiveMillionMediumPrimes_def] using hp)

lemma pureFiveMillionMediumPrime_prime
    {p : ℕ} (hp : p ∈ pureFiveMillionMediumPrimes) : Nat.Prime p :=
  (pureFiveMillionMediumPrime_data hp).1

lemma pureFiveMillionMediumPrime_large
    {p : ℕ} (hp : p ∈ pureFiveMillionMediumPrimes) : 47 < p :=
  (pureFiveMillionMediumPrime_data hp).2.1

lemma pureFiveMillionMediumPrime_ne_five
    {p : ℕ} (hp : p ∈ pureFiveMillionMediumPrimes) : p ≠ 5 := by
  have hpLarge := pureFiveMillionMediumPrime_large hp
  omega

theorem pureFiveMillionMediumPrimes_all_prime :
    ∀ p ∈ pureFiveMillionMediumPrimes, Nat.Prime p :=
  fun _ hp => pureFiveMillionMediumPrime_prime hp

theorem pureFiveMillionMediumPrimes_all_large :
    ∀ p ∈ pureFiveMillionMediumPrimes, 47 < p :=
  fun _ hp => pureFiveMillionMediumPrime_large hp

theorem pureFiveMillionMediumPrimes_all_ne_five :
    ∀ p ∈ pureFiveMillionMediumPrimes, p ≠ 5 :=
  fun _ hp => pureFiveMillionMediumPrime_ne_five hp

theorem baseResiduePrimeSquarePoints_ratio_le
    {N pivot residue p : ℕ} (hN : 0 < N)
    (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    ((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ) / N ≤
      reciprocalSquareQ p / 25 + 1 / N := by
  have hcountNat := baseResiduePrimeSquarePoints_card_le
    N pivot residue p hp hp5
  have hcountQ :
      ((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ) ≤
        ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) := by
    exact_mod_cast hcountNat
  have hceil := ceilDiv_cast_le_div_add_one N (25 * p ^ 2)
    (Nat.mul_pos (by norm_num) (pow_pos hp.pos _))
  have hceil' : ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) ≤
      (N : ℚ) / (25 * (p : ℚ) ^ 2) + 1 := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_pow] using hceil
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  calc
    ((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ) / N ≤
        ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) / N :=
      div_le_div_of_nonneg_right hcountQ hNQ.le
    _ ≤ ((N : ℚ) / (25 * p ^ 2) + 1) / N :=
      div_le_div_of_nonneg_right hceil' hNQ.le
    _ = reciprocalSquareQ p / 25 + 1 / N := by
      unfold reciprocalSquareQ
      field_simp

theorem baseResiduePrimeSquareUnion_ratio_le
    {N pivot residue : ℕ} (hN : 0 < N) (primes : Finset ℕ)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hfive : ∀ p ∈ primes, p ≠ 5) :
    ((baseResiduePrimeSquareUnion N pivot residue primes).card : ℚ) / N ≤
      (∑ p ∈ primes, reciprocalSquareQ p) / 25 + primes.card / N := by
  have hcardQ :
      ((baseResiduePrimeSquareUnion N pivot residue primes).card : ℚ) ≤
        ∑ p ∈ primes,
          ((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ) := by
    have hraw :
        (baseResiduePrimeSquareUnion N pivot residue primes).card ≤
          ∑ p ∈ primes,
            (baseResiduePrimeSquarePoints N pivot residue p).card :=
      Finset.card_biUnion_le
    exact_mod_cast hraw
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  calc
    ((baseResiduePrimeSquareUnion N pivot residue primes).card : ℚ) / N ≤
        (∑ p ∈ primes,
          ((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ)) / N :=
      div_le_div_of_nonneg_right hcardQ hNQ.le
    _ = ∑ p ∈ primes,
        (((baseResiduePrimeSquarePoints N pivot residue p).card : ℚ) / N) := by
      rw [Finset.sum_div]
    _ ≤ ∑ p ∈ primes, (reciprocalSquareQ p / 25 + 1 / N) := by
      exact Finset.sum_le_sum fun p hpMem =>
        baseResiduePrimeSquarePoints_ratio_le hN
          (hprime p hpMem) (hfive p hpMem)
    _ = (∑ p ∈ primes, reciprocalSquareQ p) / 25 +
        primes.card / N := by
      rw [Finset.sum_add_distrib, Finset.sum_div]
      simp only [Finset.sum_const, nsmul_eq_mul]
      ring

set_option maxRecDepth 1000000 in
theorem pureFiveMillionBaseResidueMediumUnion_ratio_le
    (pivot residue : ℕ) :
    ((baseResiduePrimeSquareUnion 5_000_000 pivot residue
      pureFiveMillionMediumPrimes).card : ℚ) / 5_000_000 ≤
      (∑ p ∈ pureFiveMillionMediumPrimes, reciprocalSquareQ p) / 25 +
        pureFiveMillionMediumPrimes.card / 5_000_000 :=
  baseResiduePrimeSquareUnion_ratio_le
    (N := 5_000_000) (pivot := pivot) (residue := residue)
    (by norm_num) pureFiveMillionMediumPrimes
    pureFiveMillionMediumPrimes_all_prime
    pureFiveMillionMediumPrimes_all_ne_five

theorem pureFiveMillionMediumPrimes_reciprocal_sum_le :
    (∑ p ∈ pureFiveMillionMediumPrimes, reciprocalSquareQ p) ≤
      (3_887 : ℚ) / 1_000_000 := by
  simpa only [primeSquareTail47Envelope] using
    (finitePrimeSquareTail47_lt pureFiveMillionMediumPrimes
      pureFiveMillionMediumPrimes_all_prime
      pureFiveMillionMediumPrimes_all_large).le

theorem pureFiveMillionMediumPrimes_card_le :
    pureFiveMillionMediumPrimes.card ≤ 18_311 := by
  rw [pureFiveMillionMediumPrimes_def]
  exact pureFiveMillion_mediumPrimes_card_le

theorem pureFiveMillionBaseResidueMediumUnion_card_cast_le
    (pivot residue : ℕ) :
    ((baseResiduePrimeSquareUnion 5_000_000 pivot residue
      pureFiveMillionMediumPrimes).card : ℚ) ≤
        pureFiveMillionMediumEnvelope := by
  have hratio := pureFiveMillionBaseResidueMediumUnion_ratio_le pivot residue
  have hcountQ : (pureFiveMillionMediumPrimes.card : ℚ) ≤ 18_311 := by
    exact_mod_cast pureFiveMillionMediumPrimes_card_le
  have hraw :
      ((baseResiduePrimeSquareUnion 5_000_000 pivot residue
        pureFiveMillionMediumPrimes).card : ℚ) ≤
          (5_000_000 : ℚ) * 3_887 / (25 * 1_000_000) + 18_311 := by
    linarith [pureFiveMillionMediumPrimes_reciprocal_sum_le, hcountQ]
  exact hraw.trans pureFiveMillion_medium_numeric_payment_le

set_option maxRecDepth 1000000 in
/-- Literal medium-prime payment for any subset of one sharp base
progression. -/
theorem pureFiveMillionMediumBadPoints_card_cast_le
    (points : Finset ℕ) (pivot residue : ℕ)
    (hBase : points ⊆ baseResidueClass 5_000_000 residue) :
    ((pureFiveMillionMediumBadPoints points pivot).card : ℚ) ≤
      pureFiveMillionMediumEnvelope := by
  classical
  have hsubset :
      pureFiveMillionMediumBadPoints points pivot ⊆
        baseResiduePrimeSquareUnion 5_000_000 pivot residue
          pureFiveMillionMediumPrimes := by
    intro point hpoint
    rw [pureFiveMillionMediumBadPoints_def] at hpoint
    have hparts := Finset.mem_filter.mp hpoint
    obtain ⟨p, hp, hpdiv⟩ := hparts.2
    apply Finset.mem_biUnion.mpr
    exact ⟨p, hp, Finset.mem_filter.mpr ⟨hBase hparts.1, hpdiv⟩⟩
  have hcardQ :
      ((pureFiveMillionMediumBadPoints points pivot).card : ℚ) ≤
        ((baseResiduePrimeSquareUnion 5_000_000 pivot residue
          pureFiveMillionMediumPrimes).card : ℚ) := by
    exact Nat.cast_le.mpr (Finset.card_le_card hsubset)
  exact hcardQ.trans
    (pureFiveMillionBaseResidueMediumUnion_card_cast_le pivot residue)

theorem pureFiveMillionA7MediumBad_card_le
    (pivot : ℕ) (parity : Bool) :
    (pureFiveMillionMediumBadPoints
      (pureA7OppositeParityBlock 5_000_000 parity) pivot).card ≤ 19_088 := by
  have hq := pureFiveMillionMediumBadPoints_card_cast_le
    (points := pureA7OppositeParityBlock 5_000_000 parity)
    (pivot := pivot) (residue := 7) (by
      intro point hpoint
      have hbase := pureA7OppositeParityBlock_subset 5_000_000 parity hpoint
      exact Finset.mem_filter.mpr
        ⟨(Finset.mem_filter.mp hbase).1, (Finset.mem_filter.mp hbase).2⟩)
  have hlt :
      ((pureFiveMillionMediumBadPoints
        (pureA7OppositeParityBlock 5_000_000 parity) pivot).card : ℚ) < 19_089 :=
    hq.trans_lt (by norm_num [pureFiveMillionMediumEnvelope])
  have hltNat :
      (pureFiveMillionMediumBadPoints
        (pureA7OppositeParityBlock 5_000_000 parity) pivot).card < 19_089 := by
    exact_mod_cast hlt
  omega

theorem pureFiveMillionA18MediumBad_card_le
    (pivot : ℕ) (parity : Bool) :
    (pureFiveMillionMediumBadPoints
      (pureA18ParityBlock 5_000_000 parity) pivot).card ≤ 19_088 := by
  have hq := pureFiveMillionMediumBadPoints_card_cast_le
    (points := pureA18ParityBlock 5_000_000 parity)
    (pivot := pivot) (residue := 18) (by
      intro point hpoint
      have hbase := pureA18ParityBlock_subset 5_000_000 parity hpoint
      exact Finset.mem_filter.mpr
        ⟨(Finset.mem_filter.mp hbase).1, (Finset.mem_filter.mp hbase).2⟩)
  have hlt :
      ((pureFiveMillionMediumBadPoints
        (pureA18ParityBlock 5_000_000 parity) pivot).card : ℚ) < 19_089 :=
    hq.trans_lt (by norm_num [pureFiveMillionMediumEnvelope])
  have hltNat :
      (pureFiveMillionMediumBadPoints
        (pureA18ParityBlock 5_000_000 parity) pivot).card < 19_089 := by
    exact_mod_cast hlt
  omega

#print axioms baseResiduePrimeSquareUnion_ratio_le
#print axioms pureFiveMillionMediumBadPoints_card_cast_le
#print axioms pureFiveMillionA7MediumBad_card_le
#print axioms pureFiveMillionA18MediumBad_card_le

end Erdos848
