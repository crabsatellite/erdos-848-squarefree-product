import Erdos848.GeneratedTailPrimeIntervalCoverage.Certificate
import Erdos848.TailFiniteSieve
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.RingTheory.Coprime.Lemmas

namespace Erdos848

/-!
# Uniform prime-terminal sieve above the five-million cut

The endpoint certificate gives `π(204081) = 18311`.  Beyond that endpoint
we count only integers avoiding the first eleven primes and apply the
degree-six upper Bonferroni truncation.  This is a single uniform estimate;
it does not enumerate values of `N` or introduce a `5M--10M` block.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def terminalSievePrimes : Finset ℕ :=
  [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31].toFinset

theorem terminalSievePrimes_card : terminalSievePrimes.card = 11 := by
  decide

theorem terminalSievePrimes_prime
    {p : ℕ} (hp : p ∈ terminalSievePrimes) : Nat.Prime p := by
  simp only [terminalSievePrimes, List.mem_toFinset, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals norm_num

theorem terminalSievePrimes_pairwise_coprime :
    (terminalSievePrimes : Set ℕ).Pairwise Nat.Coprime := by
  intro p hp q hq hpq
  exact (Nat.coprime_primes
    (terminalSievePrimes_prime hp)
    (terminalSievePrimes_prime hq)).mpr hpq

private theorem Ioc_filter_dvd_card_eq_div_sub_div
    (a b d : ℕ) (hab : a ≤ b) :
    ((Finset.Ioc a b).filter fun n => d ∣ n).card = b / d - a / d := by
  let big := (Finset.Ioc 0 b).filter fun n => d ∣ n
  let small := (Finset.Ioc 0 a).filter fun n => d ∣ n
  have hset :
      (Finset.Ioc a b).filter (fun n => d ∣ n) = big \ small := by
    ext n
    simp only [big, small, Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_sdiff]
    omega
  have hsubset : small ⊆ big := by
    intro n hn
    simp only [small, big, Finset.mem_filter, Finset.mem_Ioc] at hn ⊢
    exact ⟨⟨hn.1.1, hn.1.2.trans hab⟩, hn.2⟩
  rw [hset, Finset.card_sdiff]
  have hinter : small ∩ big = small := Finset.inter_eq_left.mpr hsubset
  rw [hinter]
  simp only [small, big, Nat.Ioc_filter_dvd_card_eq_div]

private theorem Ioc_filter_dvd_card_cast_bounds
    (a b d : ℕ) (hab : a ≤ b) (hd : 0 < d) :
    (((b - a : ℕ) : ℚ) / d - 1 ≤
        (((Finset.Ioc a b).filter fun n => d ∣ n).card : ℚ)) ∧
      ((((Finset.Ioc a b).filter fun n => d ∣ n).card : ℚ) ≤
        ((b - a : ℕ) : ℚ) / d + 1) := by
  have hdiv : a / d ≤ b / d := Nat.div_le_div_right hab
  have haUpperNat : a < d * (a / d + 1) := Nat.lt_mul_div_succ a hd
  have hbUpperNat : b < d * (b / d + 1) := Nat.lt_mul_div_succ b hd
  have haFloor := Nat.cast_div_le (α := ℚ) (m := a) (n := d)
  have hbFloor := Nat.cast_div_le (α := ℚ) (m := b) (n := d)
  have haUpperQ : (a : ℚ) / d - 1 < (a / d : ℕ) := by
    have hcast : (a : ℚ) < d * ((a / d : ℕ) + 1) := by exact_mod_cast haUpperNat
    have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
    apply (sub_lt_iff_lt_add).2
    apply (div_lt_iff₀ hdQ).2
    nlinarith
  have hbUpperQ : (b : ℚ) / d - 1 < (b / d : ℕ) := by
    have hcast : (b : ℚ) < d * ((b / d : ℕ) + 1) := by exact_mod_cast hbUpperNat
    have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
    apply (sub_lt_iff_lt_add).2
    apply (div_lt_iff₀ hdQ).2
    nlinarith
  rw [Ioc_filter_dvd_card_eq_div_sub_div a b d hab]
  rw [Nat.cast_sub hdiv, Nat.cast_sub hab]
  have hsplit :
      ((b : ℚ) - a) / d = (b : ℚ) / d - (a : ℚ) / d := by ring
  rw [hsplit]
  constructor <;> push_cast at * <;> linarith

private theorem terminalSieve_prod_dvd_iff
    {subset : Finset ℕ} (hsubset : subset ⊆ terminalSievePrimes)
    (n : ℕ) :
    (∏ p ∈ subset, p) ∣ n ↔ ∀ p ∈ subset, p ∣ n := by
  constructor
  · intro hprod p hp
    exact (Finset.dvd_prod_of_mem (fun q : ℕ => q) hp).trans hprod
  · intro hall
    induction subset using Finset.induction_on with
    | empty => simp
    | @insert p subset hpNotMem ih =>
        rw [Finset.prod_insert hpNotMem]
        apply Nat.Coprime.mul_dvd_of_dvd_of_dvd
        · rw [Nat.coprime_prod_right_iff]
          intro q hq
          exact terminalSievePrimes_pairwise_coprime
            (hsubset (Finset.mem_insert_self p subset))
            (hsubset (Finset.mem_insert_of_mem hq))
            (by exact fun hpq => hpNotMem (hpq ▸ hq))
        · exact hall p (Finset.mem_insert_self p subset)
        · apply ih
          · exact fun q hq => hsubset (Finset.mem_insert_of_mem hq)
          · exact fun q hq => hall q (Finset.mem_insert_of_mem hq)

private theorem terminalSieve_eventIntersection_eq
    (a b : ℕ) {subset : Finset ℕ}
    (hsubset : subset ⊆ terminalSievePrimes) :
    eventIntersection (Finset.Ioc a b)
        (fun p n : ℕ => p ∣ n) subset =
      (Finset.Ioc a b).filter fun n => (∏ p ∈ subset, p) ∣ n := by
  ext n
  simp only [eventIntersection, Finset.mem_filter]
  exact and_congr_right fun _ =>
    (terminalSieve_prod_dvd_iff hsubset n).symm

private theorem terminalSieve_subset_prod_pos
    {subset : Finset ℕ} (hsubset : subset ⊆ terminalSievePrimes) :
    0 < ∏ p ∈ subset, p := by
  apply Finset.prod_pos
  intro p hp
  exact (terminalSievePrimes_prime (hsubset hp)).pos

def terminalElementarySum : List ℚ → ℕ → ℚ
  | _, 0 => 1
  | [], _ + 1 => 0
  | a :: tail, rank + 1 =>
      terminalElementarySum tail (rank + 1) +
        a * terminalElementarySum tail rank

private theorem terminalElementarySum_eq_esymm
    (values : List ℚ) (rank : ℕ) :
    terminalElementarySum values rank =
      (values : Multiset ℚ).esymm rank := by
  induction values generalizing rank with
  | nil =>
      cases rank <;> simp [terminalElementarySum, Multiset.esymm]
  | cons a tail ih =>
      cases rank with
      | zero => simp [terminalElementarySum, Multiset.esymm]
      | succ rank =>
          change terminalElementarySum (a :: tail) (rank + 1) =
            (a ::ₘ (tail : Multiset ℚ)).esymm (rank + 1)
          rw [Multiset.esymm, Multiset.powersetCard_cons]
          simp [terminalElementarySum, Multiset.esymm, ih, add_comm]
          rw [Multiset.sum_map_mul_left]
          ac_rfl

def terminalSieveWeights : List ℚ :=
  [1 / 2, 1 / 3, 1 / 5, 1 / 7, 1 / 11, 1 / 13,
    1 / 17, 1 / 19, 1 / 23, 1 / 29, 1 / 31]

def terminalSieveDensity : ℚ :=
  ∑ rank ∈ Finset.range 7,
    (-1 : ℚ) ^ rank *
      ∑ subset ∈ terminalSievePrimes.powersetCard rank,
        subset.prod fun p => 1 / (p : ℚ)

private theorem terminalSieveDensity_eq_recursive :
    terminalSieveDensity =
      ∑ rank ∈ Finset.range 7,
        (-1 : ℚ) ^ rank *
          terminalElementarySum terminalSieveWeights rank := by
  rw [terminalSieveDensity]
  apply Finset.sum_congr rfl
  intro rank _hrank
  congr 1
  rw [← Finset.esymm_map_val]
  rw [terminalElementarySum_eq_esymm]
  congr 1

theorem terminalSieveDensity_le :
    terminalSieveDensity ≤ 153 / 1000 := by
  rw [terminalSieveDensity_eq_recursive]
  norm_num [terminalElementarySum, terminalSieveWeights,
    Finset.sum_range_succ]

def terminalSieveBonferroni (a b : ℕ) : ℚ :=
  ∑ rank ∈ Finset.range 7,
    (-1 : ℚ) ^ rank *
      ∑ subset ∈ terminalSievePrimes.powersetCard rank,
        ((eventIntersection (Finset.Ioc a b) (fun p n : ℕ => p ∣ n)
          subset).card : ℚ)

def terminalSieveUpperSum (a b : ℕ) : ℚ :=
  ∑ rank ∈ Finset.range 7,
    ∑ subset ∈ terminalSievePrimes.powersetCard rank,
      ((-1 : ℚ) ^ rank *
        (((b - a : ℕ) : ℚ) / (subset.prod fun p => (p : ℚ))) + 1)

private theorem terminalSieve_noEvent_le_bonferroni (a b : ℕ) :
    ((noEventPoints (Finset.Ioc a b) terminalSievePrimes
      (fun p n : ℕ => p ∣ n)).card : ℚ) ≤
      terminalSieveBonferroni a b := by
  have hInt := noEvent_card_le_bonferroni_six
    (Finset.Ioc a b) terminalSievePrimes (fun p n : ℕ => p ∣ n)
  have hQ :
      ((noEventPoints (Finset.Ioc a b) terminalSievePrimes
        (fun p n : ℕ => p ∣ n)).card : ℚ) ≤
        (bonferroniIntersectionSum (Finset.Ioc a b) terminalSievePrimes
          (fun p n : ℕ => p ∣ n) 6 : ℚ) := by
    exact_mod_cast hInt
  simpa only [terminalSieveBonferroni, bonferroniIntersectionSum,
    Int.cast_sum, Int.cast_mul, Int.cast_pow, Int.cast_neg,
    Int.cast_one, Int.cast_natCast] using hQ

private theorem terminalSieve_bonferroni_le_upper
    (a b : ℕ) (hab : a ≤ b) :
    terminalSieveBonferroni a b ≤ terminalSieveUpperSum a b := by
  unfold terminalSieveBonferroni terminalSieveUpperSum
  apply Finset.sum_le_sum
  intro rank hrank
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro subset hsubsetRank
  have hsubset := (Finset.mem_powersetCard.mp hsubsetRank).1
  have hprodPos := terminalSieve_subset_prod_pos hsubset
  have hbounds := Ioc_filter_dvd_card_cast_bounds a b
    (∏ p ∈ subset, p) hab hprodPos
  rw [terminalSieve_eventIntersection_eq a b hsubset]
  have hprodCast :
      ((∏ p ∈ subset, p : ℕ) : ℚ) =
        subset.prod fun p => (p : ℚ) := by push_cast; rfl
  rw [hprodCast] at hbounds
  have hrankLt : rank < 7 := Finset.mem_range.mp hrank
  interval_cases rank <;> norm_num at hbounds ⊢ <;> linarith

private theorem terminalSieve_term_count :
    (∑ rank ∈ Finset.range 7,
      (terminalSievePrimes.powersetCard rank).card : ℚ) = 1486 := by
  simp only [Finset.card_powersetCard, terminalSievePrimes_card]
  norm_num [Finset.sum_range_succ, Nat.choose]

private theorem terminalSieve_main_sum_identity (a b : ℕ) :
    (∑ rank ∈ Finset.range 7,
      ∑ subset ∈ terminalSievePrimes.powersetCard rank,
        (-1 : ℚ) ^ rank *
          (((b - a : ℕ) : ℚ) /
            (subset.prod fun p => (p : ℚ)))) =
      ((b - a : ℕ) : ℚ) * terminalSieveDensity := by
  rw [terminalSieveDensity, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro rank _hrank
  calc
    (∑ subset ∈ terminalSievePrimes.powersetCard rank,
        (-1 : ℚ) ^ rank *
          (((b - a : ℕ) : ℚ) /
            (subset.prod fun p => (p : ℚ)))) =
        ∑ subset ∈ terminalSievePrimes.powersetCard rank,
          ((b - a : ℕ) : ℚ) *
            ((-1 : ℚ) ^ rank *
              (subset.prod fun p => 1 / (p : ℚ))) := by
      apply Finset.sum_congr rfl
      intro subset _hsubset
      simp only [one_div]
      rw [Finset.prod_inv_distrib]
      simp only [div_eq_mul_inv]
      ring
    _ = ((b - a : ℕ) : ℚ) *
        (∑ subset ∈ terminalSievePrimes.powersetCard rank,
          (-1 : ℚ) ^ rank *
            (subset.prod fun p => 1 / (p : ℚ))) :=
      (Finset.mul_sum
        (terminalSievePrimes.powersetCard rank)
        (fun subset => (-1 : ℚ) ^ rank *
          (subset.prod fun p => 1 / (p : ℚ)))
        ((b - a : ℕ) : ℚ)).symm
    _ = ((b - a : ℕ) : ℚ) *
        ((-1 : ℚ) ^ rank *
          ∑ subset ∈ terminalSievePrimes.powersetCard rank,
            subset.prod fun p => 1 / (p : ℚ)) := by
      congr 1
      exact (Finset.mul_sum
        (terminalSievePrimes.powersetCard rank)
        (fun subset => subset.prod fun p => 1 / (p : ℚ))
        ((-1 : ℚ) ^ rank)).symm

private theorem terminalSieve_upperSum_identity (a b : ℕ) :
    terminalSieveUpperSum a b =
      ((b - a : ℕ) : ℚ) * terminalSieveDensity + 1486 := by
  unfold terminalSieveUpperSum
  have hones :
      (∑ rank ∈ Finset.range 7,
        ∑ _subset ∈ terminalSievePrimes.powersetCard rank, (1 : ℚ)) =
        1486 := by simpa using terminalSieve_term_count
  rw [← terminalSieve_main_sum_identity a b, ← hones]
  simp only [Finset.sum_add_distrib]

private theorem terminalSieve_noEvent_card_cast_le
    (a b : ℕ) (hab : a ≤ b) :
    ((noEventPoints (Finset.Ioc a b) terminalSievePrimes
      (fun p n : ℕ => p ∣ n)).card : ℚ) ≤
      153 / 1000 * (b - a) + 1486 := by
  calc
    ((noEventPoints (Finset.Ioc a b) terminalSievePrimes
        (fun p n : ℕ => p ∣ n)).card : ℚ) ≤
        terminalSieveBonferroni a b := terminalSieve_noEvent_le_bonferroni a b
    _ ≤ terminalSieveUpperSum a b :=
      terminalSieve_bonferroni_le_upper a b hab
    _ = ((b - a : ℕ) : ℚ) * terminalSieveDensity + 1486 :=
      terminalSieve_upperSum_identity a b
    _ ≤ ((b - a : ℕ) : ℚ) * (153 / 1000) + 1486 := by
      gcongr
      exact terminalSieveDensity_le
    _ = 153 / 1000 * (b - a) + 1486 := by
      rw [Nat.cast_sub hab, mul_comm]

def terminalPrimeSift (y : ℕ) : Finset ℕ :=
  noEventPoints (Finset.Ioc 204_081 y) terminalSievePrimes
    (fun p n : ℕ => p ∣ n)

private theorem terminalPrimeSift_contains_large_prime
    {y p : ℕ} (hpPrime : Nat.Prime p)
    (hpLower : 204_081 < p) (hpUpper : p ≤ y) :
    p ∈ terminalPrimeSift y := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ioc.mpr ⟨hpLower, hpUpper⟩, ?_⟩
  apply Finset.card_eq_zero.mpr
  ext q
  constructor
  · intro hq
    have hqData := Finset.mem_filter.mp hq
    have hqPrime := terminalSievePrimes_prime hqData.1
    have hqp : q = p :=
      (Nat.prime_dvd_prime_iff_eq hqPrime hpPrime).mp hqData.2
    subst q
    have hpMem := hqData.1
    simp only [terminalSievePrimes, List.mem_toFinset, List.mem_cons,
      List.not_mem_nil, or_false] at hpMem
    rcases hpMem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl <;> norm_num at hpLower
  · simp

private theorem primesLE_subset_endpoint_union_terminalPrimeSift (y : ℕ) :
    Nat.primesLE y ⊆ Nat.primesLE 204_081 ∪ terminalPrimeSift y := by
  intro p hp
  have hpData := Nat.mem_primesLE.mp hp
  by_cases hpLow : p ≤ 204_081
  · exact Finset.mem_union.mpr <| Or.inl <|
      Nat.mem_primesLE.mpr ⟨hpLow, hpData.2⟩
  · exact Finset.mem_union.mpr <| Or.inr <|
      terminalPrimeSift_contains_large_prime hpData.2 (by omega) hpData.1

private theorem primeCounting_le_endpoint_add_sift_card (y : ℕ) :
    Nat.primeCounting y ≤
      Nat.primeCounting 204_081 + (terminalPrimeSift y).card := by
  have hcardNat :
      (Nat.primesLE y).card ≤
        (Nat.primesLE 204_081).card + (terminalPrimeSift y).card := by
    exact (Finset.card_le_card
      (primesLE_subset_endpoint_union_terminalPrimeSift y)).trans
      (Finset.card_union_le (Nat.primesLE 204_081) (terminalPrimeSift y))
  simpa only [Nat.primesLE_card_eq_primeCounting] using hcardNat

private theorem primeCounting_cast_le_endpoint_add_sift_card (y : ℕ) :
    (Nat.primeCounting y : ℚ) ≤
      18_311 + ((terminalPrimeSift y).card : ℚ) := by
  have h := primeCounting_le_endpoint_add_sift_card y
  rw [GeneratedTailPrimeIntervalCoverage.primeCounting_204081] at h
  exact_mod_cast h

set_option maxRecDepth 100000 in
theorem primeCounting_le_endpoint_add_terminalSieve
    {y : ℕ} (hy : 204_081 ≤ y) :
    (Nat.primeCounting y : ℚ) ≤
      18_311 +
        (153 / 1000 * ((y : ℚ) - 204_081) + 1486) := by
  have hsift : ((terminalPrimeSift y).card : ℚ) ≤
      153 / 1000 * ((y : ℚ) - 204_081) + 1486 :=
    terminalSieve_noEvent_card_cast_le 204_081 y hy
  have hsum :
      (18_311 : ℚ) + ((terminalPrimeSift y).card : ℚ) ≤
        18_311 + (153 / 1000 * ((y : ℚ) - 204_081) + 1486) :=
    by linarith only [hsift]
  exact le_trans (primeCounting_cast_le_endpoint_add_sift_card y) hsum

/-- The one-terminal-per-prime term is uniformly below `0.0059 N` from the
fixed five-million cut. -/
theorem primeTerminal_div_le
    {N : ℕ} (hN : 5_000_000 ≤ N) :
    (Nat.primeCounting (N / 26) : ℚ) / N ≤ 59 / 10_000 := by
  have hNpos : (0 : ℚ) < N := by positivity
  by_cases hy : N / 26 ≤ 204_081
  · have hcount := Nat.monotone_primeCounting hy
    rw [GeneratedTailPrimeIntervalCoverage.primeCounting_204081] at hcount
    have hcountQ : (Nat.primeCounting (N / 26) : ℚ) ≤ 18_311 := by
      exact_mod_cast hcount
    have hNQ : (5_000_000 : ℚ) ≤ N := by exact_mod_cast hN
    calc
      (Nat.primeCounting (N / 26) : ℚ) / N ≤ 18_311 / N :=
        div_le_div_of_nonneg_right hcountQ hNpos.le
      _ ≤ 18_311 / 5_000_000 := by
        exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hNQ
      _ ≤ 59 / 10_000 := by norm_num
  · have hyLower : 204_081 ≤ N / 26 := by omega
    have hcount := primeCounting_le_endpoint_add_terminalSieve hyLower
    have hlinear :
        (18_311 : ℚ) +
            (153 / 1000 * (((N / 26 : ℕ) : ℚ) - 204_081) + 1486) ≤
          153 / 1000 * ((N / 26 : ℕ) : ℚ) := by
      norm_num
      linarith
    have hcountLinear := hcount.trans hlinear
    have hfloorNat : (N / 26) * 26 ≤ N := Nat.div_mul_le_self N 26
    have hfloorQ : ((N / 26 : ℕ) : ℚ) ≤ (N : ℚ) / 26 := by
      have hcast : (((N / 26) * 26 : ℕ) : ℚ) ≤ N := by
        exact_mod_cast hfloorNat
      push_cast at hcast
      linarith
    calc
      (Nat.primeCounting (N / 26) : ℚ) / N ≤
          (153 / 1000 * (N / 26 : ℕ)) / N :=
        div_le_div_of_nonneg_right hcountLinear hNpos.le
      _ ≤ (153 / 1000 * ((N : ℚ) / 26)) / N := by
        gcongr
      _ = 153 / 26_000 := by field_simp; ring
      _ ≤ 59 / 10_000 := by norm_num

#print axioms terminalSieveDensity_le
#print axioms primeCounting_le_endpoint_add_terminalSieve
#print axioms primeTerminal_div_le

end Erdos848
