import Erdos848.TailHybridPaperPrimeSlope
import Erdos848.TailFiniteSieve
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.RingTheory.Coprime.Lemmas

namespace Erdos848

/-!
# Four reusable prime-count profiles above the 16M anchor

The finite and unbounded high tails need prime counts at arguments much
larger than the packed paper certificate.  Extending that certificate would
repeat a large external computation.  Instead we retain its single endpoint

`π(16 000 000) ≤ 1 091 427`

and count only integers in `(16M,y]` avoiding a short list of small primes.
A degree-six upper Bonferroni truncation gives

`π(y) ≤ 1 091 427 + density * (y - 16M) + error`.

The proof below is generic in the finite prime list.  The only instantiated
profiles have 16, 18, 30, and 47 primes; these are exactly the four optima
used by the final four finite rows and the two uniform terminals.  There is
no generated prime table beyond 16M.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchoredPrimePoint : Nat := 16_000_000

def anchoredPrimeUpper : Nat := 1_091_427

def degreeSixElementarySum : List Rat → Nat → Rat
  | _, 0 => 1
  | [], _ + 1 => 0
  | value :: values, rank + 1 =>
      degreeSixElementarySum values (rank + 1) +
        value * degreeSixElementarySum values rank

private theorem degreeSixElementarySum_eq_esymm
    (values : List Rat) (rank : Nat) :
    degreeSixElementarySum values rank =
      (values : Multiset Rat).esymm rank := by
  induction values generalizing rank with
  | nil =>
      cases rank <;>
        simp [degreeSixElementarySum, Multiset.esymm]
  | cons value values ih =>
      cases rank with
      | zero => simp [degreeSixElementarySum, Multiset.esymm]
      | succ rank =>
          change
            degreeSixElementarySum (value :: values) (rank + 1) =
              (value ::ₘ (values : Multiset Rat)).esymm (rank + 1)
          rw [Multiset.esymm, Multiset.powersetCard_cons]
          simp [degreeSixElementarySum, Multiset.esymm, ih,
            add_comm]
          rw [Multiset.sum_map_mul_left]
          ac_rfl

def degreeSixSieveDensity (primes : Finset Nat) : Rat :=
  ∑ rank ∈ Finset.range 7,
    (-1 : Rat) ^ rank *
      ∑ subset ∈ primes.powersetCard rank,
        subset.prod fun p => 1 / (p : Rat)

def degreeSixSieveTermCount (primeCount : Nat) : Nat :=
  ∑ rank ∈ Finset.range 7, Nat.choose primeCount rank

structure AnchoredPrimeSieveProfile where
  primes : List Nat
  nodup : primes.Nodup
  allPrime : ∀ p ∈ primes, Nat.Prime p
  allLeAnchor : ∀ p ∈ primes, p ≤ anchoredPrimePoint
  densityUpper : Rat
  density_le :
    degreeSixSieveDensity primes.toFinset ≤ densityUpper

def AnchoredPrimeSieveProfile.termCount
    (profile : AnchoredPrimeSieveProfile) : Nat :=
  degreeSixSieveTermCount profile.primes.length

theorem AnchoredPrimeSieveProfile.mem_prime
    (profile : AnchoredPrimeSieveProfile)
    {p : Nat} (hp : p ∈ profile.primes.toFinset) :
    Nat.Prime p := by
  exact profile.allPrime p (List.mem_toFinset.mp hp)

theorem AnchoredPrimeSieveProfile.pairwise_coprime
    (profile : AnchoredPrimeSieveProfile) :
    (profile.primes.toFinset : Set Nat).Pairwise Nat.Coprime := by
  intro p hp q hq hpq
  exact
    (Nat.coprime_primes
      (profile.mem_prime hp)
      (profile.mem_prime hq)).mpr hpq

private theorem anchored_Ioc_filter_dvd_card_eq_div_sub_div
    (a b d : Nat) (hab : a ≤ b) :
    ((Finset.Ioc a b).filter fun n => d ∣ n).card =
      b / d - a / d := by
  let big := (Finset.Ioc 0 b).filter fun n => d ∣ n
  let small := (Finset.Ioc 0 a).filter fun n => d ∣ n
  have hset :
      (Finset.Ioc a b).filter (fun n => d ∣ n) =
        big \ small := by
    ext n
    simp only [big, small, Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_sdiff]
    omega
  have hsubset : small ⊆ big := by
    intro n hn
    simp only [small, big, Finset.mem_filter, Finset.mem_Ioc] at hn ⊢
    exact ⟨⟨hn.1.1, hn.1.2.trans hab⟩, hn.2⟩
  rw [hset, Finset.card_sdiff]
  have hinter : small ∩ big = small :=
    Finset.inter_eq_left.mpr hsubset
  rw [hinter]
  simp only [small, big, Nat.Ioc_filter_dvd_card_eq_div]

private theorem anchored_Ioc_filter_dvd_card_cast_bounds
    (a b d : Nat) (hab : a ≤ b) (hd : 0 < d) :
    (((b - a : Nat) : Rat) / d - 1 ≤
        (((Finset.Ioc a b).filter fun n => d ∣ n).card : Rat)) ∧
      ((((Finset.Ioc a b).filter fun n => d ∣ n).card : Rat) ≤
        ((b - a : Nat) : Rat) / d + 1) := by
  have hdiv : a / d ≤ b / d := Nat.div_le_div_right hab
  have haUpperNat : a < d * (a / d + 1) :=
    Nat.lt_mul_div_succ a hd
  have hbUpperNat : b < d * (b / d + 1) :=
    Nat.lt_mul_div_succ b hd
  have haFloor := Nat.cast_div_le (α := Rat) (m := a) (n := d)
  have hbFloor := Nat.cast_div_le (α := Rat) (m := b) (n := d)
  have haUpperQ : (a : Rat) / d - 1 < ((a / d : Nat) : Rat) := by
    have hcast : (a : Rat) < d * ((a / d : Nat) + 1) := by
      exact_mod_cast haUpperNat
    have hdQ : (0 : Rat) < d := by exact_mod_cast hd
    apply (sub_lt_iff_lt_add).2
    apply (div_lt_iff₀ hdQ).2
    nlinarith
  have hbUpperQ : (b : Rat) / d - 1 < ((b / d : Nat) : Rat) := by
    have hcast : (b : Rat) < d * ((b / d : Nat) + 1) := by
      exact_mod_cast hbUpperNat
    have hdQ : (0 : Rat) < d := by exact_mod_cast hd
    apply (sub_lt_iff_lt_add).2
    apply (div_lt_iff₀ hdQ).2
    nlinarith
  rw [anchored_Ioc_filter_dvd_card_eq_div_sub_div a b d hab]
  rw [Nat.cast_sub hdiv, Nat.cast_sub hab]
  have hsplit :
      ((b : Rat) - a) / d = (b : Rat) / d - (a : Rat) / d := by
    ring
  rw [hsplit]
  constructor <;> linarith

private theorem anchored_profile_prod_dvd_iff
    (profile : AnchoredPrimeSieveProfile)
    {subset : Finset Nat}
    (hsubset : subset ⊆ profile.primes.toFinset)
    (n : Nat) :
    (∏ p ∈ subset, p) ∣ n ↔ ∀ p ∈ subset, p ∣ n := by
  constructor
  · intro hprod p hp
    exact
      (Finset.dvd_prod_of_mem (fun q : Nat => q) hp).trans hprod
  · intro hall
    induction subset using Finset.induction_on with
    | empty => simp
    | @insert p subset hpNotMem ih =>
        rw [Finset.prod_insert hpNotMem]
        apply Nat.Coprime.mul_dvd_of_dvd_of_dvd
        · rw [Nat.coprime_prod_right_iff]
          intro q hq
          exact profile.pairwise_coprime
            (hsubset (Finset.mem_insert_self p subset))
            (hsubset (Finset.mem_insert_of_mem hq))
            (by
              exact fun hpq => hpNotMem (hpq ▸ hq))
        · exact hall p (Finset.mem_insert_self p subset)
        · apply ih
          · exact fun q hq =>
              hsubset (Finset.mem_insert_of_mem hq)
          · exact fun q hq =>
              hall q (Finset.mem_insert_of_mem hq)

private theorem anchored_profile_eventIntersection_eq
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) {subset : Finset Nat}
    (hsubset : subset ⊆ profile.primes.toFinset) :
    eventIntersection (Finset.Ioc a b)
        (fun p n : Nat => p ∣ n) subset =
      (Finset.Ioc a b).filter fun n =>
        (∏ p ∈ subset, p) ∣ n := by
  ext n
  simp only [eventIntersection, Finset.mem_filter]
  exact and_congr_right fun _ =>
    (anchored_profile_prod_dvd_iff
      profile hsubset n).symm

private theorem anchored_profile_subset_prod_pos
    (profile : AnchoredPrimeSieveProfile)
    {subset : Finset Nat}
    (hsubset : subset ⊆ profile.primes.toFinset) :
    0 < ∏ p ∈ subset, p := by
  apply Finset.prod_pos
  intro p hp
  exact (profile.mem_prime (hsubset hp)).pos

def degreeSixSieveBonferroni
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) : Rat :=
  ∑ rank ∈ Finset.range 7,
    (-1 : Rat) ^ rank *
      ∑ subset ∈ profile.primes.toFinset.powersetCard rank,
        ((eventIntersection (Finset.Ioc a b)
          (fun p n : Nat => p ∣ n) subset).card : Rat)

def degreeSixSieveUpperSum
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) : Rat :=
  ∑ rank ∈ Finset.range 7,
    ∑ subset ∈ profile.primes.toFinset.powersetCard rank,
      (((-1 : Rat) ^ rank *
        (((b - a : Nat) : Rat) /
          (subset.prod fun p => (p : Rat)))) + 1)

private theorem degreeSix_noEvent_le_bonferroni
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) :
    ((noEventPoints (Finset.Ioc a b)
      profile.primes.toFinset
      (fun p n : Nat => p ∣ n)).card : Rat) ≤
        degreeSixSieveBonferroni profile a b := by
  have hInt := noEvent_card_le_bonferroni_six
    (Finset.Ioc a b) profile.primes.toFinset
      (fun p n : Nat => p ∣ n)
  have hQ :
      ((noEventPoints (Finset.Ioc a b)
        profile.primes.toFinset
        (fun p n : Nat => p ∣ n)).card : Rat) ≤
      (bonferroniIntersectionSum (Finset.Ioc a b)
        profile.primes.toFinset
        (fun p n : Nat => p ∣ n) 6 : Int) := by
    exact_mod_cast hInt
  simpa only [degreeSixSieveBonferroni,
    bonferroniIntersectionSum, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Int.cast_neg, Int.cast_one,
    Int.cast_natCast] using hQ

private theorem degreeSix_bonferroni_le_upper
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) (hab : a ≤ b) :
    degreeSixSieveBonferroni profile a b ≤
      degreeSixSieveUpperSum profile a b := by
  unfold degreeSixSieveBonferroni degreeSixSieveUpperSum
  apply Finset.sum_le_sum
  intro rank hrank
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro subset hsubsetRank
  have hsubset :=
    (Finset.mem_powersetCard.mp hsubsetRank).1
  have hprodPos :=
    anchored_profile_subset_prod_pos profile hsubset
  have hbounds :=
    anchored_Ioc_filter_dvd_card_cast_bounds
      a b (∏ p ∈ subset, p) hab hprodPos
  rw [anchored_profile_eventIntersection_eq
    profile a b hsubset]
  have hprodCast :
      (((∏ p ∈ subset, p : Nat) : Rat)) =
        subset.prod fun p => (p : Rat) := by
    push_cast
    rfl
  rw [hprodCast] at hbounds
  have hrankLt : rank < 7 := Finset.mem_range.mp hrank
  interval_cases rank <;> norm_num at hbounds ⊢ <;> linarith

private theorem degreeSix_term_count_identity
    (profile : AnchoredPrimeSieveProfile) :
    (∑ rank ∈ Finset.range 7,
      (profile.primes.toFinset.powersetCard rank).card) =
        profile.termCount := by
  simp only [Finset.card_powersetCard,
    AnchoredPrimeSieveProfile.termCount,
    degreeSixSieveTermCount]
  rw [List.toFinset_card_of_nodup profile.nodup]

private theorem degreeSix_main_sum_identity
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) :
    (∑ rank ∈ Finset.range 7,
      ∑ subset ∈ profile.primes.toFinset.powersetCard rank,
        (-1 : Rat) ^ rank *
          (((b - a : Nat) : Rat) /
            (subset.prod fun p => (p : Rat)))) =
      ((b - a : Nat) : Rat) *
        degreeSixSieveDensity profile.primes.toFinset := by
  rw [degreeSixSieveDensity, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro rank _hrank
  calc
    (∑ subset ∈ profile.primes.toFinset.powersetCard rank,
        (-1 : Rat) ^ rank *
          (((b - a : Nat) : Rat) /
            (subset.prod fun p => (p : Rat)))) =
      ∑ subset ∈ profile.primes.toFinset.powersetCard rank,
        ((b - a : Nat) : Rat) *
          ((-1 : Rat) ^ rank *
            (subset.prod fun p => 1 / (p : Rat))) := by
        apply Finset.sum_congr rfl
        intro subset _hsubset
        simp only [one_div]
        rw [Finset.prod_inv_distrib]
        simp only [div_eq_mul_inv]
        ring
    _ = ((b - a : Nat) : Rat) *
        (∑ subset ∈ profile.primes.toFinset.powersetCard rank,
          (-1 : Rat) ^ rank *
            (subset.prod fun p => 1 / (p : Rat))) :=
      (Finset.mul_sum
        (profile.primes.toFinset.powersetCard rank)
        (fun subset =>
          (-1 : Rat) ^ rank *
            (subset.prod fun p => 1 / (p : Rat)))
        ((b - a : Nat) : Rat)).symm
    _ = ((b - a : Nat) : Rat) *
        ((-1 : Rat) ^ rank *
          ∑ subset ∈ profile.primes.toFinset.powersetCard rank,
            subset.prod fun p => 1 / (p : Rat)) := by
      congr 1
      exact
        (Finset.mul_sum
          (profile.primes.toFinset.powersetCard rank)
          (fun subset =>
            subset.prod fun p => 1 / (p : Rat))
          ((-1 : Rat) ^ rank)).symm

private theorem degreeSix_upperSum_identity
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) :
    degreeSixSieveUpperSum profile a b =
      ((b - a : Nat) : Rat) *
          degreeSixSieveDensity profile.primes.toFinset +
        profile.termCount := by
  unfold degreeSixSieveUpperSum
  have hones :
      (∑ rank ∈ Finset.range 7,
        ∑ _subset ∈
            profile.primes.toFinset.powersetCard rank,
          (1 : Rat)) = profile.termCount := by
    rw [← degreeSix_term_count_identity profile]
    push_cast
    apply Finset.sum_congr rfl
    intro rank hrank
    simp
  rw [← degreeSix_main_sum_identity profile a b, ← hones]
  simp only [Finset.sum_add_distrib]

theorem degreeSix_noEvent_card_cast_le
    (profile : AnchoredPrimeSieveProfile)
    (a b : Nat) (hab : a ≤ b) :
    ((noEventPoints (Finset.Ioc a b)
      profile.primes.toFinset
      (fun p n : Nat => p ∣ n)).card : Rat) ≤
      profile.densityUpper * (b - a) +
        profile.termCount := by
  calc
    ((noEventPoints (Finset.Ioc a b)
      profile.primes.toFinset
      (fun p n : Nat => p ∣ n)).card : Rat) ≤
        degreeSixSieveBonferroni profile a b :=
      degreeSix_noEvent_le_bonferroni profile a b
    _ ≤ degreeSixSieveUpperSum profile a b :=
      degreeSix_bonferroni_le_upper profile a b hab
    _ = ((b - a : Nat) : Rat) *
          degreeSixSieveDensity profile.primes.toFinset +
        profile.termCount :=
      degreeSix_upperSum_identity profile a b
    _ ≤ ((b - a : Nat) : Rat) *
          profile.densityUpper +
        profile.termCount := by
      gcongr
      exact profile.density_le
    _ = profile.densityUpper * (b - a) +
        profile.termCount := by
      rw [Nat.cast_sub hab]
      ring

def anchoredPrimeSift
    (profile : AnchoredPrimeSieveProfile)
    (y : Nat) : Finset Nat :=
  noEventPoints (Finset.Ioc anchoredPrimePoint y)
    profile.primes.toFinset
    (fun p n : Nat => p ∣ n)

private theorem anchoredPrimeSift_contains_large_prime
    (profile : AnchoredPrimeSieveProfile)
    {y p : Nat}
    (hpPrime : Nat.Prime p)
    (hpLower : anchoredPrimePoint < p)
    (hpUpper : p ≤ y) :
    p ∈ anchoredPrimeSift profile y := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ioc.mpr ⟨hpLower, hpUpper⟩, ?_⟩
  apply Finset.card_eq_zero.mpr
  ext q
  constructor
  · intro hq
    have hqData := Finset.mem_filter.mp hq
    have hqPrime := profile.mem_prime hqData.1
    have hqp : q = p :=
      (Nat.prime_dvd_prime_iff_eq hqPrime hpPrime).mp hqData.2
    subst q
    have hpMem :=
      List.mem_toFinset.mp hqData.1
    have hpBound :=
      profile.allLeAnchor p hpMem
    omega
  · simp

private theorem primesLE_subset_anchor_union_sift
    (profile : AnchoredPrimeSieveProfile)
    (y : Nat) :
    Nat.primesLE y ⊆
      Nat.primesLE anchoredPrimePoint ∪
        anchoredPrimeSift profile y := by
  intro p hp
  have hpData := Nat.mem_primesLE.mp hp
  by_cases hpLow : p ≤ anchoredPrimePoint
  · exact Finset.mem_union.mpr <| Or.inl <|
      Nat.mem_primesLE.mpr ⟨hpLow, hpData.2⟩
  · exact Finset.mem_union.mpr <| Or.inr <|
      anchoredPrimeSift_contains_large_prime
        profile hpData.2 (by omega) hpData.1

private theorem primeCounting_le_anchor_add_sift_card
    (profile : AnchoredPrimeSieveProfile)
    (y : Nat) :
    Nat.primeCounting y ≤
      Nat.primeCounting anchoredPrimePoint +
        (anchoredPrimeSift profile y).card := by
  have hcard :
      (Nat.primesLE y).card ≤
        (Nat.primesLE anchoredPrimePoint).card +
          (anchoredPrimeSift profile y).card := by
    exact
      (Finset.card_le_card
        (primesLE_subset_anchor_union_sift profile y)).trans
      (Finset.card_union_le
        (Nat.primesLE anchoredPrimePoint)
        (anchoredPrimeSift profile y))
  simpa only [Nat.primesLE_card_eq_primeCounting] using hcard

theorem primeCounting_cast_le_anchoredProfile
    (profile : AnchoredPrimeSieveProfile)
    {y : Nat} (hy : anchoredPrimePoint ≤ y) :
    (Nat.primeCounting y : Rat) ≤
      anchoredPrimeUpper +
        profile.densityUpper * (y - anchoredPrimePoint) +
        profile.termCount := by
  have hanchor :
      Nat.primeCounting anchoredPrimePoint ≤ anchoredPrimeUpper := by
    have hslope :=
      hybridPaperPrimeCounting_slope_le
        (y := anchoredPrimePoint) (by norm_num [anchoredPrimePoint])
        (by norm_num [anchoredPrimePoint])
    simpa [anchoredPrimePoint, anchoredPrimeUpper] using hslope
  have hcount :=
    primeCounting_le_anchor_add_sift_card profile y
  have hcountQ :
      (Nat.primeCounting y : Rat) ≤
        anchoredPrimeUpper +
          ((anchoredPrimeSift profile y).card : Rat) := by
    exact_mod_cast hcount.trans
      (Nat.add_le_add_right hanchor
        (anchoredPrimeSift profile y).card)
  have hsift :
      ((anchoredPrimeSift profile y).card : Rat) ≤
        profile.densityUpper * (y - anchoredPrimePoint) +
          profile.termCount := by
    change
      ((noEventPoints (Finset.Ioc anchoredPrimePoint y)
        profile.primes.toFinset
        (fun p n : Nat => p ∣ n)).card : Rat) ≤
          profile.densityUpper * (y - anchoredPrimePoint) +
            profile.termCount
    exact degreeSix_noEvent_card_cast_le
      profile anchoredPrimePoint y hy
  linarith

private theorem degreeSixSieveDensity_eq_recursive
    (primes : List Nat) (hnodup : primes.Nodup) :
    degreeSixSieveDensity primes.toFinset =
      ∑ rank ∈ Finset.range 7,
        (-1 : Rat) ^ rank *
          degreeSixElementarySum
            (primes.map fun p => 1 / (p : Rat)) rank := by
  rw [degreeSixSieveDensity]
  apply Finset.sum_congr rfl
  intro rank _hrank
  congr 1
  rw [← Finset.esymm_map_val]
  rw [degreeSixElementarySum_eq_esymm]
  congr 1
  rw [List.toFinset_val, hnodup.dedup]
  induction primes with
  | nil => simp
  | cons prime primes ih =>
      have htail := ih hnodup.tail
      simpa using htail

def anchoredProfile16Primes : List Nat :=
  [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53]

def anchoredProfile18Primes : List Nat :=
  anchoredProfile16Primes ++ [59, 61]

def anchoredProfile30Primes : List Nat :=
  anchoredProfile18Primes ++
    [67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113]

def anchoredProfile47Primes : List Nat :=
  anchoredProfile30Primes ++
    [127, 131, 137, 139, 149, 151, 157, 163, 167,
      173, 179, 181, 191, 193, 197, 199, 211]

private theorem anchoredProfile16_density :
    degreeSixSieveDensity anchoredProfile16Primes.toFinset ≤
      136_295_168_778 / 1_000_000_000_000 := by
  rw [degreeSixSieveDensity_eq_recursive
    anchoredProfile16Primes (by decide)]
  norm_num [degreeSixElementarySum, anchoredProfile16Primes,
    Finset.sum_range_succ]

private theorem anchoredProfile18_density :
    degreeSixSieveDensity anchoredProfile18Primes.toFinset ≤
      131_876_926_635 / 1_000_000_000_000 := by
  rw [degreeSixSieveDensity_eq_recursive
    anchoredProfile18Primes (by decide)]
  norm_num [degreeSixElementarySum, anchoredProfile18Primes,
    anchoredProfile16Primes, Finset.sum_range_succ]

private theorem anchoredProfile30_density :
    degreeSixSieveDensity anchoredProfile30Primes.toFinset ≤
      115_679_866_584 / 1_000_000_000_000 := by
  rw [degreeSixSieveDensity_eq_recursive
    anchoredProfile30Primes (by decide)]
  norm_num [degreeSixElementarySum, anchoredProfile30Primes,
    anchoredProfile18Primes, anchoredProfile16Primes,
    Finset.sum_range_succ]

private theorem anchoredProfile47_density :
    degreeSixSieveDensity anchoredProfile47Primes.toFinset ≤
      105_272_571_449 / 1_000_000_000_000 := by
  rw [degreeSixSieveDensity_eq_recursive
    anchoredProfile47Primes (by decide)]
  norm_num [degreeSixElementarySum, anchoredProfile47Primes,
    anchoredProfile30Primes, anchoredProfile18Primes,
    anchoredProfile16Primes, Finset.sum_range_succ]

def anchoredPrimeProfile16 : AnchoredPrimeSieveProfile where
  primes := anchoredProfile16Primes
  nodup := by decide
  allPrime := by
    intro p hp
    simp only [anchoredProfile16Primes, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      norm_num
  allLeAnchor := by
    intro p hp
    simp only [anchoredProfile16Primes, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      norm_num [anchoredPrimePoint]
  densityUpper := 136_295_168_778 / 1_000_000_000_000
  density_le := anchoredProfile16_density

def anchoredPrimeProfile18 : AnchoredPrimeSieveProfile where
  primes := anchoredProfile18Primes
  nodup := by decide
  allPrime := by
    intro p hp
    simp only [anchoredProfile18Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile16.allPrime p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl <;> norm_num
  allLeAnchor := by
    intro p hp
    simp only [anchoredProfile18Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile16.allLeAnchor p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl <;> norm_num [anchoredPrimePoint]
  densityUpper := 131_876_926_635 / 1_000_000_000_000
  density_le := anchoredProfile18_density

def anchoredPrimeProfile30 : AnchoredPrimeSieveProfile where
  primes := anchoredProfile30Primes
  nodup := by decide
  allPrime := by
    intro p hp
    simp only [anchoredProfile30Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile18.allPrime p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl | rfl <;> norm_num
  allLeAnchor := by
    intro p hp
    simp only [anchoredProfile30Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile18.allLeAnchor p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl | rfl <;>
        norm_num [anchoredPrimePoint]
  densityUpper := 115_679_866_584 / 1_000_000_000_000
  density_le := anchoredProfile30_density

def anchoredPrimeProfile47 : AnchoredPrimeSieveProfile where
  primes := anchoredProfile47Primes
  nodup := by decide
  allPrime := by
    intro p hp
    simp only [anchoredProfile47Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile30.allPrime p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl <;> norm_num
  allLeAnchor := by
    intro p hp
    simp only [anchoredProfile47Primes, List.mem_append] at hp
    rcases hp with hp | hp
    · exact anchoredPrimeProfile30.allLeAnchor p hp
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl | rfl |
        rfl | rfl | rfl | rfl | rfl <;>
        norm_num [anchoredPrimePoint]
  densityUpper := 105_272_571_449 / 1_000_000_000_000
  density_le := anchoredProfile47_density

theorem anchoredPrimeProfile16_termCount :
    anchoredPrimeProfile16.termCount = 14_893 := by
  norm_num [AnchoredPrimeSieveProfile.termCount,
    degreeSixSieveTermCount, anchoredPrimeProfile16,
    anchoredProfile16Primes, Finset.sum_range_succ, Nat.choose]

theorem anchoredPrimeProfile18_termCount :
    anchoredPrimeProfile18.termCount = 31_180 := by
  norm_num [AnchoredPrimeSieveProfile.termCount,
    degreeSixSieveTermCount, anchoredPrimeProfile18,
    anchoredProfile18Primes, anchoredProfile16Primes,
    Finset.sum_range_succ, Nat.choose]

theorem anchoredPrimeProfile30_termCount :
    anchoredPrimeProfile30.termCount = 768_212 := by
  norm_num [AnchoredPrimeSieveProfile.termCount,
    degreeSixSieveTermCount, anchoredPrimeProfile30,
    anchoredProfile30Primes, anchoredProfile18Primes,
    anchoredProfile16Primes, Finset.sum_range_succ, Nat.choose]

theorem anchoredPrimeProfile47_termCount :
    anchoredPrimeProfile47.termCount = 12_467_221 := by
  norm_num [AnchoredPrimeSieveProfile.termCount,
    degreeSixSieveTermCount, anchoredPrimeProfile47,
    anchoredProfile47Primes, anchoredProfile30Primes,
    anchoredProfile18Primes, anchoredProfile16Primes,
    Finset.sum_range_succ, Nat.choose]

#print axioms primeCounting_cast_le_anchoredProfile
#print axioms anchoredProfile16_density
#print axioms anchoredProfile18_density
#print axioms anchoredProfile30_density
#print axioms anchoredProfile47_density

end Erdos848
