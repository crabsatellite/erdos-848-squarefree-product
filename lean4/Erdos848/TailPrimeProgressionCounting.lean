import Erdos848.HallPartition
import Erdos848.TailZModArithmetic
import Erdos848.TailPrimeSquareFinite

namespace Erdos848

/-!
## Literal one-prime counts on the two sharp base progressions

For a fixed pivot and a prime `p ≠ 5`, all points in one mod-25 base
progression satisfying `p^2 ∣ pivot * point + 1` occupy one residue class
modulo `25 * p^2`.  The proofs below establish this from the actual
divisibility event and give the exact ceiling count used by every tail block.
-/

def baseResidueClass (N residue : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter fun point => point % 25 = residue

def baseResiduePrimeSquarePoints
    (N pivot residue p : ℕ) : Finset ℕ :=
  (baseResidueClass N residue).filter fun point =>
    p ^ 2 ∣ pivot * point + 1

def twoBasePrimeSquarePoints
    (N pivot p : ℕ) : Finset ℕ :=
  (lowBaseSet N).filter fun point => p ^ 2 ∣ pivot * point + 1

/-- A length-`N` interval contains at most `ceil (N / modulus)` elements of
any pairwise-congruent finite set. -/
lemma tail_card_le_ceilDiv_of_pairwise_modEq
    (S : Finset ℕ) (N modulus : ℕ) (hmodulus : 0 < modulus)
    (hbounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N)
    (hmod : ∀ x ∈ S, ∀ y ∈ S, x ≡ y [MOD modulus]) :
    S.card ≤ N ⌈/⌉ modulus := by
  let block : ℕ → ℕ := fun point => (point - 1) / modulus
  have hblock : ∀ point ∈ S, block point < N ⌈/⌉ modulus := by
    intro point hpoint
    have hpointIcc := Finset.mem_Icc.mp (hbounds point hpoint)
    have hpointLt : point - 1 < N := by omega
    have hNle : N ≤ modulus * (N ⌈/⌉ modulus) :=
      (ceilDiv_le_iff_le_mul hmodulus).mp le_rfl
    have hpointMul : point - 1 < modulus * (N ⌈/⌉ modulus) :=
      lt_of_lt_of_le hpointLt hNle
    exact (Nat.div_lt_iff_lt_mul hmodulus).mpr
      (by simpa [block, Nat.mul_comm] using hpointMul)
  have hinjective : Set.InjOn block S := by
    intro x hx y hy hblocks
    have hxIcc := Finset.mem_Icc.mp (hbounds x hx)
    have hyIcc := Finset.mem_Icc.mp (hbounds y hy)
    have hxyMod : x - 1 ≡ y - 1 [MOD modulus] := by
      apply Nat.ModEq.add_right_cancel' 1
      simpa [Nat.sub_add_cancel hxIcc.1, Nat.sub_add_cancel hyIcc.1] using
        hmod x hx y hy
    have hremainders : (x - 1) % modulus = (y - 1) % modulus := hxyMod
    dsimp [block] at hblocks
    have hsub : x - 1 = y - 1 := by
      calc
        x - 1 = modulus * ((x - 1) / modulus) + (x - 1) % modulus :=
          (Nat.div_add_mod (x - 1) modulus).symm
        _ = modulus * ((y - 1) / modulus) + (y - 1) % modulus := by
          rw [hblocks, hremainders]
        _ = y - 1 := Nat.div_add_mod (y - 1) modulus
    omega
  calc
    S.card = (S.image block).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ (Finset.range (N ⌈/⌉ modulus)).card := by
      apply Finset.card_le_card
      intro q hq
      obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hq
      exact Finset.mem_range.mpr (hblock point hpoint)
    _ = N ⌈/⌉ modulus := Finset.card_range _

private lemma tail_prime_eq_five_of_dvd_five
    {p : ℕ} (hp : Nat.Prime p) (hp5 : p ∣ 5) : p = 5 := by
  exact (Nat.prime_dvd_prime_iff_eq hp (by norm_num)).mp hp5

lemma tail_coprime_25_prime_square
    {p : ℕ} (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    Nat.Coprime 25 (p ^ 2) := by
  have hnot : ¬ p ∣ 25 := by
    intro hp25
    have hpPow : p ∣ 5 ^ 2 := by simpa using hp25
    exact hp5 (tail_prime_eq_five_of_dvd_five hp
      (hp.dvd_of_dvd_pow hpPow))
  simpa [Nat.coprime_comm] using
    hp.coprime_pow_of_not_dvd (a := 25) (m := 2) hnot

/-- Exact single-progression count for one actual prime-square event. -/
theorem baseResiduePrimeSquarePoints_card_le
    (N pivot residue p : ℕ)
    (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    (baseResiduePrimeSquarePoints N pivot residue p).card ≤
      N ⌈/⌉ (25 * p ^ 2) := by
  let S := baseResiduePrimeSquarePoints N pivot residue p
  have hcoprime : Nat.Coprime 25 (p ^ 2) :=
    tail_coprime_25_prime_square hp hp5
  have hbounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N := by
    intro point hpoint
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpoint).1).1
  have hmod : ∀ x ∈ S, ∀ y ∈ S,
      x ≡ y [MOD 25 * p ^ 2] := by
    intro x hx y hy
    have hxParts := Finset.mem_filter.mp hx
    have hyParts := Finset.mem_filter.mp hy
    have hxBase := Finset.mem_filter.mp hxParts.1
    have hyBase := Finset.mem_filter.mp hyParts.1
    have hxZ := zmod_mul_add_one_eq_zero_of_dvd hxParts.2
    have hyZ := zmod_mul_add_one_eq_zero_of_dvd hyParts.2
    have hpMod : x ≡ y [MOD p ^ 2] :=
      (ZMod.natCast_eq_natCast_iff x y (p ^ 2)).mp
        (mul_add_one_right_unique hxZ hyZ)
    have h25Mod : x ≡ y [MOD 25] := by
      change x % 25 = y % 25
      rw [hxBase.2, hyBase.2]
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcoprime).mp
      ⟨h25Mod, hpMod⟩
  exact tail_card_le_ceilDiv_of_pairwise_modEq S N (25 * p ^ 2)
    (Nat.mul_pos (by norm_num) (pow_pos hp.pos _)) hbounds hmod

/-- The two literal sharp progressions cost at most twice the one-class
ceiling. -/
theorem twoBasePrimeSquarePoints_card_le
    (N pivot p : ℕ) (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    (twoBasePrimeSquarePoints N pivot p).card ≤
      2 * (N ⌈/⌉ (25 * p ^ 2)) := by
  have h7 := baseResiduePrimeSquarePoints_card_le N pivot 7 p hp hp5
  have h18 := baseResiduePrimeSquarePoints_card_le N pivot 18 p hp hp5
  have hsets : twoBasePrimeSquarePoints N pivot p =
      baseResiduePrimeSquarePoints N pivot 7 p ∪
        baseResiduePrimeSquarePoints N pivot 18 p := by
    ext point
    simp [twoBasePrimeSquarePoints, baseResiduePrimeSquarePoints,
      baseResidueClass, lowBaseSet, OriginalA7, OriginalA18,
      or_and_right]
  rw [hsets]
  exact (Finset.card_union_le _ _).trans (by omega)

lemma ceilDiv_cast_le_div_add_one
    (N modulus : ℕ) (hmodulus : 0 < modulus) :
    ((N ⌈/⌉ modulus : ℕ) : ℚ) ≤
      (N : ℚ) / modulus + 1 := by
  have hceilNat : N ⌈/⌉ modulus ≤ N / modulus + 1 := by
    rw [Nat.ceilDiv_eq_add_pred_div]
    calc
      (N + modulus - 1) / modulus ≤ (N + modulus) / modulus :=
        Nat.div_le_div_right (Nat.sub_le _ _)
      _ = N / modulus + 1 := by
        rw [Nat.add_div_right N hmodulus]
  have hceilQ : ((N ⌈/⌉ modulus : ℕ) : ℚ) ≤
      ((N / modulus + 1 : ℕ) : ℚ) := by
    exact_mod_cast hceilNat
  have hdivQ : ((N / modulus : ℕ) : ℚ) ≤
      (N : ℚ) / modulus := Nat.cast_div_le
  push_cast at hceilQ
  linarith

/-- Rational form of the literal one-prime count.  The first term is the
reciprocal-square main density and `2/N` is precisely the two-progression
endpoint cost later replaced by the transformed-root count for large
primes. -/
theorem twoBasePrimeSquarePoints_ratio_le
    {N pivot p : ℕ} (hN : 0 < N)
    (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    ((twoBasePrimeSquarePoints N pivot p).card : ℚ) / N ≤
      2 * reciprocalSquareQ p / 25 + 2 / N := by
  have hcountNat := twoBasePrimeSquarePoints_card_le N pivot p hp hp5
  have hcountQ : ((twoBasePrimeSquarePoints N pivot p).card : ℚ) ≤
      2 * ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) := by
    exact_mod_cast hcountNat
  have hceil := ceilDiv_cast_le_div_add_one N (25 * p ^ 2)
    (Nat.mul_pos (by norm_num) (pow_pos hp.pos _))
  have hceil' : ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) ≤
      (N : ℚ) / (25 * (p : ℚ) ^ 2) + 1 := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_pow] using hceil
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  have hpQ : (0 : ℚ) < p := by exact_mod_cast hp.pos
  calc
    ((twoBasePrimeSquarePoints N pivot p).card : ℚ) / N ≤
        (2 * ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ)) / N :=
      div_le_div_of_nonneg_right hcountQ hNQ.le
    _ ≤ (2 * ((N : ℚ) / (25 * p ^ 2) + 1)) / N := by
      exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hceil' (by norm_num))
        hNQ.le
    _ = 2 * reciprocalSquareQ p / 25 + 2 / N := by
      unfold reciprocalSquareQ
      field_simp

def twoBasePrimeSquareUnion
    (N pivot : ℕ) (primes : Finset ℕ) : Finset ℕ :=
  primes.biUnion fun p => twoBasePrimeSquarePoints N pivot p

/-- The literal primes in the half-open interval `(cutoff, upper]`.  Keeping
this as a set difference of Mathlib's certified prime sets makes its
cardinality exactly a prime-counting difference, rather than an external
table convention. -/
def tailIntermediatePrimes (cutoff upper : ℕ) : Finset ℕ :=
  Nat.primesLE upper \ Nat.primesLE cutoff

lemma mem_tailIntermediatePrimes {cutoff upper p : ℕ} :
    p ∈ tailIntermediatePrimes cutoff upper ↔
      Nat.Prime p ∧ cutoff < p ∧ p ≤ upper := by
  simp only [tailIntermediatePrimes, Finset.mem_sdiff, Nat.mem_primesLE]
  constructor
  · rintro ⟨⟨hpUpper, hpPrime⟩, hpCutoff⟩
    refine ⟨hpPrime, ?_, hpUpper⟩
    by_contra hnot
    exact hpCutoff ⟨Nat.le_of_not_gt hnot, hpPrime⟩
  · rintro ⟨hpPrime, hpCutoff, hpUpper⟩
    exact ⟨⟨hpUpper, hpPrime⟩, fun h => (Nat.not_le_of_gt hpCutoff) h.1⟩

lemma tailIntermediatePrimes_card
    {cutoff upper : ℕ} (hcut : cutoff ≤ upper) :
    (tailIntermediatePrimes cutoff upper).card =
      Nat.primeCounting upper - Nat.primeCounting cutoff := by
  have hsubset : Nat.primesLE cutoff ⊆ Nat.primesLE upper := by
    intro p hp
    rw [Nat.mem_primesLE] at hp ⊢
    exact ⟨hp.1.trans hcut, hp.2⟩
  simpa [tailIntermediatePrimes] using
    (Finset.card_sdiff_of_subset hsubset)

/-- Finite union bound in the exact integer form needed before splitting the
prime range into its reciprocal-square main term and root-count endpoint
term. -/
theorem twoBasePrimeSquareUnion_card_le
    (N pivot : ℕ) (primes : Finset ℕ)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hfive : ∀ p ∈ primes, p ≠ 5) :
    (twoBasePrimeSquareUnion N pivot primes).card ≤
      ∑ p ∈ primes, 2 * (N ⌈/⌉ (25 * p ^ 2)) := by
  unfold twoBasePrimeSquareUnion
  exact Finset.card_biUnion_le.trans
    (Finset.sum_le_sum fun p hp =>
      twoBasePrimeSquarePoints_card_le N pivot p
        (hprime p hp) (hfive p hp))

/-- The complete finite prime union is bounded by the exact reciprocal-square
sum plus one endpoint payment per base progression and per prime. -/
theorem twoBasePrimeSquareUnion_ratio_le
    {N pivot : ℕ} (hN : 0 < N) (primes : Finset ℕ)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hfive : ∀ p ∈ primes, p ≠ 5) :
    ((twoBasePrimeSquareUnion N pivot primes).card : ℚ) / N ≤
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 +
        2 * primes.card / N := by
  have hcardQ : ((twoBasePrimeSquareUnion N pivot primes).card : ℚ) ≤
      ∑ p ∈ primes, ((twoBasePrimeSquarePoints N pivot p).card : ℚ) := by
    have hraw : (twoBasePrimeSquareUnion N pivot primes).card ≤
        ∑ p ∈ primes, (twoBasePrimeSquarePoints N pivot p).card :=
      Finset.card_biUnion_le
    exact_mod_cast hraw
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  calc
    ((twoBasePrimeSquareUnion N pivot primes).card : ℚ) / N ≤
        (∑ p ∈ primes,
          ((twoBasePrimeSquarePoints N pivot p).card : ℚ)) / N :=
      div_le_div_of_nonneg_right hcardQ hNQ.le
    _ = ∑ p ∈ primes,
        (((twoBasePrimeSquarePoints N pivot p).card : ℚ) / N) := by
      rw [Finset.sum_div]
    _ ≤ ∑ p ∈ primes,
        (2 * reciprocalSquareQ p / 25 + 2 / N) := by
      exact Finset.sum_le_sum fun p hpMem =>
        twoBasePrimeSquarePoints_ratio_le hN
          (hprime p hpMem) (hfive p hpMem)
    _ = 2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 +
        2 * primes.card / N := by
      rw [Finset.sum_add_distrib]
      simp only [Finset.sum_const, nsmul_eq_mul]
      ring_nf
      rw [add_comm]
      rw [Finset.sum_mul]

/-- Exact normalized count for all intermediate witness primes.  The main
term is the literal reciprocal-square sum; the only endpoint loss is two
classes for each actual prime in `(cutoff, upper]`. -/
theorem twoBaseIntermediatePrimeSquareUnion_ratio_le
    {N pivot cutoff upper : ℕ} (hN : 0 < N)
    (hcutUpper : cutoff ≤ upper) (hfive : 5 ≤ cutoff) :
    ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff upper)).card : ℚ) / N ≤
      2 * (∑ p ∈ tailIntermediatePrimes cutoff upper,
        reciprocalSquareQ p) / 25 +
        2 * ((Nat.primeCounting upper -
          Nat.primeCounting cutoff : ℕ) : ℚ) / N := by
  have hprime : ∀ p ∈ tailIntermediatePrimes cutoff upper,
      Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hnotFive : ∀ p ∈ tailIntermediatePrimes cutoff upper,
      p ≠ 5 := by
    intro p hp
    have hpCut := (mem_tailIntermediatePrimes.mp hp).2.1
    omega
  simpa [tailIntermediatePrimes_card hcutUpper] using
    twoBasePrimeSquareUnion_ratio_le (pivot := pivot) hN
      (tailIntermediatePrimes cutoff upper) hprime hnotFive

#print axioms baseResiduePrimeSquarePoints_card_le
#print axioms twoBasePrimeSquareUnion_card_le
#print axioms twoBasePrimeSquareUnion_ratio_le
#print axioms twoBaseIntermediatePrimeSquareUnion_ratio_le

end Erdos848
