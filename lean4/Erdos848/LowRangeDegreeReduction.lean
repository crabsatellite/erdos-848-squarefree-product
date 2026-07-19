import Erdos848.LowRangeCombinatorics
import Erdos848.Asymptotic

namespace Erdos848

set_option maxHeartbeats 400000

/-!
Kernel reduction of the one-pivot degree bounds used in both low ranges.

The sixty odd primes below `300` (with `5` omitted) are discharged here by
uniform CRT bounds.  The count is performed directly on `Icc 1 N`; a
pairwise-congruence injection removes the former one-point loss for each base
class and each prime.  The Hall terminal slack is then returned to the proof
interface: all primes at least `301` are merged into one deliberately loose
cardinality bound per low range.
-/

def lowPrimeBadNeighbours (N t p : ℕ) : Finset ℕ :=
  (lowBaseSet N).filter fun a => p ^ 2 ∣ a * t + 1

def lowPrimeBadMod4Neighbours (N t r p : ℕ) : Finset ℕ :=
  (lowPrimeBadNeighbours N t p).filter fun a => a % 4 = r

def lowPrimeBlockBadNeighbours (block : Finset ℕ) (N t : ℕ) : Finset ℕ :=
  block.biUnion fun p => lowPrimeBadNeighbours N t p

def lowPrimeBlockBadMod4Neighbours
    (block : Finset ℕ) (N t r : ℕ) : Finset ℕ :=
  block.biUnion fun p => lowPrimeBadMod4Neighbours N t r p

def lowSmallPrimeBadNeighbours (N t : ℕ) : Finset ℕ :=
  (((((lowPrimeBlockBadNeighbours lowPrimeBlock0 N t ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock1 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock2 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock3 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock4 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock5 N t)

def lowSmallPrimeBadMod4Neighbours (N t r : ℕ) : Finset ℕ :=
  (((((lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock2 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock3 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock4 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock5 N t r)

/-- A length-`N` interval contains at most `ceil (N / m)` members of any
pairwise-congruent finite set.  This avoids the one-point endpoint loss from
embedding `Icc 1 N` into `range (N + 1)`. -/
lemma card_le_ceilDiv_of_pairwise_modEq
    (S : Finset ℕ) (N m : ℕ) (hm : 0 < m)
    (hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N)
    (hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD m]) :
    S.card ≤ N ⌈/⌉ m := by
  let block : ℕ → ℕ := fun a => (a - 1) / m
  have hblock : ∀ a ∈ S, block a < N ⌈/⌉ m := by
    intro a ha
    have haIcc := Finset.mem_Icc.mp (hbounds a ha)
    have haLt : a - 1 < N := by omega
    have hNle : N ≤ m * (N ⌈/⌉ m) :=
      (ceilDiv_le_iff_le_mul hm).mp le_rfl
    have haMul : a - 1 < m * (N ⌈/⌉ m) := lt_of_lt_of_le haLt hNle
    exact (Nat.div_lt_iff_lt_mul hm).mpr
      (by simpa [block, Nat.mul_comm] using haMul)
  have hinj : Set.InjOn block S := by
    intro a ha b hb hab
    have haIcc := Finset.mem_Icc.mp (hbounds a ha)
    have hbIcc := Finset.mem_Icc.mp (hbounds b hb)
    have habMod : a - 1 ≡ b - 1 [MOD m] := by
      apply Nat.ModEq.add_right_cancel' 1
      simpa [Nat.sub_add_cancel haIcc.1, Nat.sub_add_cancel hbIcc.1] using
        hmod a ha b hb
    have hrema : (a - 1) % m = (b - 1) % m := habMod
    dsimp [block] at hab
    have hsub : a - 1 = b - 1 := by
      calc
        a - 1 = m * ((a - 1) / m) + (a - 1) % m :=
          (Nat.div_add_mod (a - 1) m).symm
        _ = m * ((b - 1) / m) + (b - 1) % m := by rw [hab, hrema]
        _ = b - 1 := Nat.div_add_mod (b - 1) m
    omega
  calc
    S.card = (S.image block).card := (Finset.card_image_iff.mpr hinj).symm
    _ ≤ (Finset.range (N ⌈/⌉ m)).card := by
      apply Finset.card_le_card
      intro q hq
      simp only [Finset.mem_image] at hq
      rcases hq with ⟨a, ha, rfl⟩
      exact Finset.mem_range.mpr (hblock a ha)
    _ = N ⌈/⌉ m := Finset.card_range _

private lemma originalA7_prime_bad_card_le
    (N t p : ℕ) (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    ((OriginalA7 N).filter fun a => p ^ 2 ∣ a * t + 1).card ≤
      N ⌈/⌉ (25 * p * p) := by
  let S := (OriginalA7 N).filter fun a => p ^ 2 ∣ a * t + 1
  have hcop : Nat.Coprime 25 (p ^ 2) :=
    coprime_25_pow_two_of_prime_ne5 p hp hp5
  have hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N := by
    intro a ha
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1
  have hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD 25 * p ^ 2] := by
    intro a ha b hb
    have ha' := Finset.mem_filter.mp ha
    have hb' := Finset.mem_filter.mp hb
    have haA := Finset.mem_filter.mp ha'.1
    have hbA := Finset.mem_filter.mp hb'.1
    have ht : ¬ p ∣ t := by
      intro hpt
      have hpProd : p ∣ a * t := dvd_mul_of_dvd_right hpt a
      have hpSq : p ∣ p ^ 2 := dvd_pow_self p (by omega)
      have hpSum : p ∣ a * t + 1 := hpSq.trans ha'.2
      exact hp.not_dvd_one ((Nat.dvd_add_right hpProd).mp hpSum)
    have haZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := a) hp ht).mp
        (by simpa [Nat.mul_comm] using ha'.2)
    have hbZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := b) hp ht).mp
        (by simpa [Nat.mul_comm] using hb'.2)
    have hpMod : a ≡ b [MOD p ^ 2] :=
      (ZMod.natCast_eq_natCast_iff a b (p ^ 2)).mp (haZ.trans hbZ.symm)
    have h25Mod : a ≡ b [MOD 25] := by
      change a % 25 = b % 25
      rw [haA.2, hbA.2]
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcop).mp ⟨h25Mod, hpMod⟩
  simpa [S, pow_two, Nat.mul_assoc] using
    card_le_ceilDiv_of_pairwise_modEq S N (25 * p ^ 2)
      (by have hpPos := hp.pos; positivity) hbounds hmod

private lemma originalA18_prime_bad_card_le
    (N t p : ℕ) (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    ((OriginalA18 N).filter fun a => p ^ 2 ∣ a * t + 1).card ≤
      N ⌈/⌉ (25 * p * p) := by
  let S := (OriginalA18 N).filter fun a => p ^ 2 ∣ a * t + 1
  have hcop : Nat.Coprime 25 (p ^ 2) :=
    coprime_25_pow_two_of_prime_ne5 p hp hp5
  have hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N := by
    intro a ha
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1
  have hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD 25 * p ^ 2] := by
    intro a ha b hb
    have ha' := Finset.mem_filter.mp ha
    have hb' := Finset.mem_filter.mp hb
    have haA := Finset.mem_filter.mp ha'.1
    have hbA := Finset.mem_filter.mp hb'.1
    have ht : ¬ p ∣ t := by
      intro hpt
      have hpProd : p ∣ a * t := dvd_mul_of_dvd_right hpt a
      have hpSq : p ∣ p ^ 2 := dvd_pow_self p (by omega)
      have hpSum : p ∣ a * t + 1 := hpSq.trans ha'.2
      exact hp.not_dvd_one ((Nat.dvd_add_right hpProd).mp hpSum)
    have haZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := a) hp ht).mp
        (by simpa [Nat.mul_comm] using ha'.2)
    have hbZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := b) hp ht).mp
        (by simpa [Nat.mul_comm] using hb'.2)
    have hpMod : a ≡ b [MOD p ^ 2] :=
      (ZMod.natCast_eq_natCast_iff a b (p ^ 2)).mp (haZ.trans hbZ.symm)
    have h25Mod : a ≡ b [MOD 25] := by
      change a % 25 = b % 25
      rw [haA.2, hbA.2]
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcop).mp ⟨h25Mod, hpMod⟩
  simpa [S, pow_two, Nat.mul_assoc] using
    card_le_ceilDiv_of_pairwise_modEq S N (25 * p ^ 2)
      (by have hpPos := hp.pos; positivity) hbounds hmod

theorem lowPrimeBadNeighbours_card_le
    (N t p : ℕ) (hp : Nat.Prime p) (hp5 : p ≠ 5) :
    (lowPrimeBadNeighbours N t p).card ≤
      2 * (N ⌈/⌉ (25 * p * p)) := by
  have h7 := originalA7_prime_bad_card_le N t p hp hp5
  have h18 := originalA18_prime_bad_card_le N t p hp hp5
  rw [lowPrimeBadNeighbours, lowBaseSet, Finset.filter_union]
  exact (Finset.card_union_le _ _).trans (by omega)

private lemma originalA7_prime_bad_mod4_card_le
    (N t r p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5) :
    (((OriginalA7 N).filter fun a => p ^ 2 ∣ a * t + 1).filter
        fun a => a % 4 = r).card ≤
      N ⌈/⌉ (100 * p * p) := by
  let S := (((OriginalA7 N).filter fun a => p ^ 2 ∣ a * t + 1).filter
    fun a => a % 4 = r)
  have hcop25_4 : Nat.Coprime 25 4 := by decide
  have hcop : Nat.Coprime 100 (p ^ 2) :=
    coprime_100_pow_two_of_prime_ne2_ne5 p hp hp2 hp5
  have hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N := by
    intro a ha
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1).1
  have hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD 100 * p ^ 2] := by
    intro a ha b hb
    have ha4 := Finset.mem_filter.mp ha
    have hb4 := Finset.mem_filter.mp hb
    have ha' := Finset.mem_filter.mp ha4.1
    have hb' := Finset.mem_filter.mp hb4.1
    have haA := Finset.mem_filter.mp ha'.1
    have hbA := Finset.mem_filter.mp hb'.1
    have ht : ¬ p ∣ t := by
      intro hpt
      have hpProd : p ∣ a * t := dvd_mul_of_dvd_right hpt a
      have hpSq : p ∣ p ^ 2 := dvd_pow_self p (by omega)
      have hpSum : p ∣ a * t + 1 := hpSq.trans ha'.2
      exact hp.not_dvd_one ((Nat.dvd_add_right hpProd).mp hpSum)
    have haZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := a) hp ht).mp
        (by simpa [Nat.mul_comm] using ha'.2)
    have hbZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := b) hp ht).mp
        (by simpa [Nat.mul_comm] using hb'.2)
    have hpMod : a ≡ b [MOD p ^ 2] :=
      (ZMod.natCast_eq_natCast_iff a b (p ^ 2)).mp (haZ.trans hbZ.symm)
    have h25Mod : a ≡ b [MOD 25] := by
      change a % 25 = b % 25
      rw [haA.2, hbA.2]
    have h4Mod : a ≡ b [MOD 4] := by
      change a % 4 = b % 4
      rw [ha4.2, hb4.2]
    have h100Mod : a ≡ b [MOD 100] := by
      simpa using
        (Nat.modEq_and_modEq_iff_modEq_mul hcop25_4).mp ⟨h25Mod, h4Mod⟩
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcop).mp ⟨h100Mod, hpMod⟩
  simpa [S, pow_two, Nat.mul_assoc] using
    card_le_ceilDiv_of_pairwise_modEq S N (100 * p ^ 2)
      (by have hpPos := hp.pos; positivity) hbounds hmod

private lemma originalA18_prime_bad_mod4_card_le
    (N t r p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5) :
    (((OriginalA18 N).filter fun a => p ^ 2 ∣ a * t + 1).filter
        fun a => a % 4 = r).card ≤
      N ⌈/⌉ (100 * p * p) := by
  let S := (((OriginalA18 N).filter fun a => p ^ 2 ∣ a * t + 1).filter
    fun a => a % 4 = r)
  have hcop25_4 : Nat.Coprime 25 4 := by decide
  have hcop : Nat.Coprime 100 (p ^ 2) :=
    coprime_100_pow_two_of_prime_ne2_ne5 p hp hp2 hp5
  have hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N := by
    intro a ha
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1).1
  have hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD 100 * p ^ 2] := by
    intro a ha b hb
    have ha4 := Finset.mem_filter.mp ha
    have hb4 := Finset.mem_filter.mp hb
    have ha' := Finset.mem_filter.mp ha4.1
    have hb' := Finset.mem_filter.mp hb4.1
    have haA := Finset.mem_filter.mp ha'.1
    have hbA := Finset.mem_filter.mp hb'.1
    have ht : ¬ p ∣ t := by
      intro hpt
      have hpProd : p ∣ a * t := dvd_mul_of_dvd_right hpt a
      have hpSq : p ∣ p ^ 2 := dvd_pow_self p (by omega)
      have hpSum : p ∣ a * t + 1 := hpSq.trans ha'.2
      exact hp.not_dvd_one ((Nat.dvd_add_right hpProd).mp hpSum)
    have haZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := a) hp ht).mp
        (by simpa [Nat.mul_comm] using ha'.2)
    have hbZ :=
      (dvd_pow_two_mul_add_one_iff_zmod_eq_neg_inv
        (p := p) (a := t) (b := b) hp ht).mp
        (by simpa [Nat.mul_comm] using hb'.2)
    have hpMod : a ≡ b [MOD p ^ 2] :=
      (ZMod.natCast_eq_natCast_iff a b (p ^ 2)).mp (haZ.trans hbZ.symm)
    have h25Mod : a ≡ b [MOD 25] := by
      change a % 25 = b % 25
      rw [haA.2, hbA.2]
    have h4Mod : a ≡ b [MOD 4] := by
      change a % 4 = b % 4
      rw [ha4.2, hb4.2]
    have h100Mod : a ≡ b [MOD 100] := by
      simpa using
        (Nat.modEq_and_modEq_iff_modEq_mul hcop25_4).mp ⟨h25Mod, h4Mod⟩
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcop).mp ⟨h100Mod, hpMod⟩
  simpa [S, pow_two, Nat.mul_assoc] using
    card_le_ceilDiv_of_pairwise_modEq S N (100 * p ^ 2)
      (by have hpPos := hp.pos; positivity) hbounds hmod

theorem lowPrimeBadMod4Neighbours_card_le
    (N t r p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5) :
    (lowPrimeBadMod4Neighbours N t r p).card ≤
      2 * (N ⌈/⌉ (100 * p * p)) := by
  have h7 := originalA7_prime_bad_mod4_card_le N t r p hp hp2 hp5
  have h18 := originalA18_prime_bad_mod4_card_le N t r p hp hp2 hp5
  simp only [lowPrimeBadMod4Neighbours, lowPrimeBadNeighbours, lowBaseSet,
    Finset.filter_union]
  exact (Finset.card_union_le _ _).trans (by omega)

private lemma lowPrimeBlock0_good {p : ℕ} (hp : p ∈ lowPrimeBlock0) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock0] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private lemma lowPrimeBlock1_good {p : ℕ} (hp : p ∈ lowPrimeBlock1) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock1] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private lemma lowPrimeBlock2_good {p : ℕ} (hp : p ∈ lowPrimeBlock2) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock2] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private lemma lowPrimeBlock3_good {p : ℕ} (hp : p ∈ lowPrimeBlock3) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock3] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private lemma lowPrimeBlock4_good {p : ℕ} (hp : p ∈ lowPrimeBlock4) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock4] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private lemma lowPrimeBlock5_good {p : ℕ} (hp : p ∈ lowPrimeBlock5) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [lowPrimeBlock5] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    norm_num

private theorem lowPrimeBlockBadNeighbours_card_le
    (block : Finset ℕ) (N t : ℕ)
    (hprime : ∀ p ∈ block, Nat.Prime p)
    (hne5 : ∀ p ∈ block, p ≠ 5) :
    (lowPrimeBlockBadNeighbours block N t).card ≤ evenAPBlock block N := by
  calc
    _ ≤ ∑ p ∈ block, (lowPrimeBadNeighbours N t p).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ block, 2 * (N ⌈/⌉ (25 * p * p)) := by
      exact Finset.sum_le_sum fun p hp =>
        lowPrimeBadNeighbours_card_le N t p (hprime p hp) (hne5 p hp)
    _ = evenAPBlock block N := by simp [evenAPBlock]

private theorem lowPrimeBlockBadMod4Neighbours_card_le
    (block : Finset ℕ) (N t r : ℕ)
    (hprime : ∀ p ∈ block, Nat.Prime p)
    (hne2 : ∀ p ∈ block, p ≠ 2)
    (hne5 : ∀ p ∈ block, p ≠ 5) :
    (lowPrimeBlockBadMod4Neighbours block N t r).card ≤ oddAPBlock block N := by
  calc
    _ ≤ ∑ p ∈ block, (lowPrimeBadMod4Neighbours N t r p).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ block, 2 * (N ⌈/⌉ (100 * p * p)) := by
      exact Finset.sum_le_sum fun p hp =>
        lowPrimeBadMod4Neighbours_card_le N t r p
          (hprime p hp) (hne2 p hp) (hne5 p hp)
    _ = oddAPBlock block N := by simp [oddAPBlock]

theorem lowSmallPrimeBadNeighbours_card_le (N t : ℕ) :
    (lowSmallPrimeBadNeighbours N t).card ≤ lowEvenAPCeiling N := by
  have h0 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock0 N t
    (fun p hp => (lowPrimeBlock0_good hp).1)
    (fun p hp => (lowPrimeBlock0_good hp).2.2)
  have h1 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock1 N t
    (fun p hp => (lowPrimeBlock1_good hp).1)
    (fun p hp => (lowPrimeBlock1_good hp).2.2)
  have h2 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock2 N t
    (fun p hp => (lowPrimeBlock2_good hp).1)
    (fun p hp => (lowPrimeBlock2_good hp).2.2)
  have h3 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock3 N t
    (fun p hp => (lowPrimeBlock3_good hp).1)
    (fun p hp => (lowPrimeBlock3_good hp).2.2)
  have h4 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock4 N t
    (fun p hp => (lowPrimeBlock4_good hp).1)
    (fun p hp => (lowPrimeBlock4_good hp).2.2)
  have h5 := lowPrimeBlockBadNeighbours_card_le lowPrimeBlock5 N t
    (fun p hp => (lowPrimeBlock5_good hp).1)
    (fun p hp => (lowPrimeBlock5_good hp).2.2)
  have h01 := Finset.card_union_le
    (lowPrimeBlockBadNeighbours lowPrimeBlock0 N t)
    (lowPrimeBlockBadNeighbours lowPrimeBlock1 N t)
  have h012 := Finset.card_union_le
    (lowPrimeBlockBadNeighbours lowPrimeBlock0 N t ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock1 N t)
    (lowPrimeBlockBadNeighbours lowPrimeBlock2 N t)
  have h0123 := Finset.card_union_le
    ((lowPrimeBlockBadNeighbours lowPrimeBlock0 N t ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock1 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock2 N t)
    (lowPrimeBlockBadNeighbours lowPrimeBlock3 N t)
  have h01234 := Finset.card_union_le
    (((lowPrimeBlockBadNeighbours lowPrimeBlock0 N t ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock1 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock2 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock3 N t)
    (lowPrimeBlockBadNeighbours lowPrimeBlock4 N t)
  have h012345 := Finset.card_union_le
    ((((lowPrimeBlockBadNeighbours lowPrimeBlock0 N t ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock1 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock2 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock3 N t) ∪
      lowPrimeBlockBadNeighbours lowPrimeBlock4 N t)
    (lowPrimeBlockBadNeighbours lowPrimeBlock5 N t)
  have hc0 : lowPrimeBlock0.card = 10 := by norm_num [lowPrimeBlock0]
  have hc1 : lowPrimeBlock1.card = 10 := by norm_num [lowPrimeBlock1]
  have hc2 : lowPrimeBlock2.card = 10 := by norm_num [lowPrimeBlock2]
  have hc3 : lowPrimeBlock3.card = 10 := by norm_num [lowPrimeBlock3]
  have hc4 : lowPrimeBlock4.card = 10 := by norm_num [lowPrimeBlock4]
  have hc5 : lowPrimeBlock5.card = 10 := by norm_num [lowPrimeBlock5]
  simp only [lowSmallPrimeBadNeighbours, lowEvenAPCeiling]
  norm_num [hc0, hc1, hc2, hc3, hc4, hc5] at h0 h1 h2 h3 h4 h5
  omega

theorem lowSmallPrimeBadMod4Neighbours_card_le (N t r : ℕ) :
    (lowSmallPrimeBadMod4Neighbours N t r).card ≤ lowOddAPCeiling N := by
  have h0 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock0 N t r
    (fun p hp => (lowPrimeBlock0_good hp).1)
    (fun p hp => (lowPrimeBlock0_good hp).2.1)
    (fun p hp => (lowPrimeBlock0_good hp).2.2)
  have h1 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock1 N t r
    (fun p hp => (lowPrimeBlock1_good hp).1)
    (fun p hp => (lowPrimeBlock1_good hp).2.1)
    (fun p hp => (lowPrimeBlock1_good hp).2.2)
  have h2 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock2 N t r
    (fun p hp => (lowPrimeBlock2_good hp).1)
    (fun p hp => (lowPrimeBlock2_good hp).2.1)
    (fun p hp => (lowPrimeBlock2_good hp).2.2)
  have h3 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock3 N t r
    (fun p hp => (lowPrimeBlock3_good hp).1)
    (fun p hp => (lowPrimeBlock3_good hp).2.1)
    (fun p hp => (lowPrimeBlock3_good hp).2.2)
  have h4 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock4 N t r
    (fun p hp => (lowPrimeBlock4_good hp).1)
    (fun p hp => (lowPrimeBlock4_good hp).2.1)
    (fun p hp => (lowPrimeBlock4_good hp).2.2)
  have h5 := lowPrimeBlockBadMod4Neighbours_card_le lowPrimeBlock5 N t r
    (fun p hp => (lowPrimeBlock5_good hp).1)
    (fun p hp => (lowPrimeBlock5_good hp).2.1)
    (fun p hp => (lowPrimeBlock5_good hp).2.2)
  have h01 := Finset.card_union_le
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r)
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r)
  have h012 := Finset.card_union_le
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r)
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock2 N t r)
  have h0123 := Finset.card_union_le
    ((lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock2 N t r)
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock3 N t r)
  have h01234 := Finset.card_union_le
    (((lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock2 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock3 N t r)
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock4 N t r)
  have h012345 := Finset.card_union_le
    ((((lowPrimeBlockBadMod4Neighbours lowPrimeBlock0 N t r ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock1 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock2 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock3 N t r) ∪
      lowPrimeBlockBadMod4Neighbours lowPrimeBlock4 N t r)
    (lowPrimeBlockBadMod4Neighbours lowPrimeBlock5 N t r)
  have hc0 : lowPrimeBlock0.card = 10 := by norm_num [lowPrimeBlock0]
  have hc1 : lowPrimeBlock1.card = 10 := by norm_num [lowPrimeBlock1]
  have hc2 : lowPrimeBlock2.card = 10 := by norm_num [lowPrimeBlock2]
  have hc3 : lowPrimeBlock3.card = 10 := by norm_num [lowPrimeBlock3]
  have hc4 : lowPrimeBlock4.card = 10 := by norm_num [lowPrimeBlock4]
  have hc5 : lowPrimeBlock5.card = 10 := by norm_num [lowPrimeBlock5]
  simp only [lowSmallPrimeBadMod4Neighbours, lowOddAPCeiling]
  norm_num [hc0, hc1, hc2, hc3, hc4, hc5] at h0 h1 h2 h3 h4 h5
  omega

/-! ## Exact small/high-prime decomposition -/

def lowHighPrimeBadNeighbours (N t : ℕ) : Finset ℕ :=
  (lowBaseSet N).filter fun a =>
    ∃ p ∈ Finset.Icc 301 (N * N + 1),
      Nat.Prime p ∧ p ^ 2 ∣ a * t + 1

private lemma prime_le_300_mem_low_block {p : ℕ}
    (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5) (hle : p ≤ 300) :
    p ∈ lowPrimeBlock0 ∨ p ∈ lowPrimeBlock1 ∨
    p ∈ lowPrimeBlock2 ∨ p ∈ lowPrimeBlock3 ∨
    p ∈ lowPrimeBlock4 ∨ p ∈ lowPrimeBlock5 := by
  have hge : 2 ≤ p := hp.two_le
  by_cases h0 : p ≤ 37
  · left
    interval_cases p <;> norm_num [lowPrimeBlock0] at *
  by_cases h1 : p ≤ 79
  · right; left
    interval_cases p <;> norm_num [lowPrimeBlock1] at *
  by_cases h2 : p ≤ 131
  · right; right; left
    interval_cases p <;> norm_num [lowPrimeBlock2] at *
  by_cases h3 : p ≤ 181
  · right; right; right; left
    interval_cases p <;> norm_num [lowPrimeBlock3] at *
  by_cases h4 : p ≤ 239
  · right; right; right; right; left
    interval_cases p <;> norm_num [lowPrimeBlock4] at *
  · right; right; right; right; right
    interval_cases p <;> norm_num [lowPrimeBlock5] at *

private lemma mem_lowSmallPrimeBadNeighbours
    {N t a p : ℕ} (haBase : a ∈ lowBaseSet N)
    (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5)
    (hle : p ≤ 300) (hdiv : p ^ 2 ∣ a * t + 1) :
    a ∈ lowSmallPrimeBadNeighbours N t := by
  rcases prime_le_300_mem_low_block hp hp2 hp5 hle with
    hp0 | hp1 | hp2' | hp3 | hp4 | hp5'
  all_goals
    simp only [lowSmallPrimeBadNeighbours, Finset.mem_union,
      lowPrimeBlockBadNeighbours, Finset.mem_biUnion,
      lowPrimeBadNeighbours, Finset.mem_filter]
  · exact Or.inl (Or.inl (Or.inl (Or.inl (Or.inl ⟨p, hp0, haBase, hdiv⟩))))
  · exact Or.inl (Or.inl (Or.inl (Or.inl (Or.inr ⟨p, hp1, haBase, hdiv⟩))))
  · exact Or.inl (Or.inl (Or.inl (Or.inr ⟨p, hp2', haBase, hdiv⟩)))
  · exact Or.inl (Or.inl (Or.inr ⟨p, hp3, haBase, hdiv⟩))
  · exact Or.inl (Or.inr ⟨p, hp4, haBase, hdiv⟩)
  · exact Or.inr ⟨p, hp5', haBase, hdiv⟩

private lemma mem_lowSmallPrimeBadMod4Neighbours
    {N t r a p : ℕ} (haBase : a ∈ lowBaseSet N) (ha4 : a % 4 = r)
    (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5)
    (hle : p ≤ 300) (hdiv : p ^ 2 ∣ a * t + 1) :
    a ∈ lowSmallPrimeBadMod4Neighbours N t r := by
  rcases prime_le_300_mem_low_block hp hp2 hp5 hle with
    hp0 | hp1 | hp2' | hp3 | hp4 | hp5'
  all_goals
    simp only [lowSmallPrimeBadMod4Neighbours, Finset.mem_union,
      lowPrimeBlockBadMod4Neighbours, Finset.mem_biUnion,
      lowPrimeBadMod4Neighbours, Finset.mem_filter,
      lowPrimeBadNeighbours]
  · exact Or.inl (Or.inl (Or.inl (Or.inl
      (Or.inl ⟨p, hp0, ⟨haBase, hdiv⟩, ha4⟩))))
  · exact Or.inl (Or.inl (Or.inl (Or.inl
      (Or.inr ⟨p, hp1, ⟨haBase, hdiv⟩, ha4⟩))))
  · exact Or.inl (Or.inl (Or.inl
      (Or.inr ⟨p, hp2', ⟨haBase, hdiv⟩, ha4⟩)))
  · exact Or.inl (Or.inl
      (Or.inr ⟨p, hp3, ⟨haBase, hdiv⟩, ha4⟩))
  · exact Or.inl (Or.inr ⟨p, hp4, ⟨haBase, hdiv⟩, ha4⟩)
  · exact Or.inr ⟨p, hp5', ⟨haBase, hdiv⟩, ha4⟩

private lemma outside_residues_ne
    {N t : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N) :
    t % 25 ≠ 7 ∧ t % 25 ≠ 18 := by
  have htData := Finset.mem_sdiff.mp ht
  constructor
  · intro ht7
    apply htData.2
    exact Finset.mem_union_left _
      (Finset.mem_filter.mpr ⟨htData.1, ht7⟩)
  · intro ht18
    apply htData.2
    exact Finset.mem_union_right _
      (Finset.mem_filter.mpr ⟨htData.1, ht18⟩)

private lemma lowBad_prime_witness
    {N t a : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (ha : a ∈ lowBaseBadNeighbours N t) :
    ∃ p : ℕ, Nat.Prime p ∧ p ≠ 5 ∧ p ^ 2 ∣ a * t + 1 := by
  have htResidues := outside_residues_ne ht
  have haData := Finset.mem_filter.mp ha
  rcases Finset.mem_union.mp haData.1 with ha7 | ha18
  · have ha7Data := Finset.mem_filter.mp ha7
    exact must_have_other_prime_square a t ha7Data.2 htResidues haData.2
  · have ha18Data := Finset.mem_filter.mp ha18
    exact must_have_other_prime_square_18 a t ha18Data.2 htResidues haData.2

private lemma prime_ne_two_of_even_pivot
    {a t p : ℕ} (hp : Nat.Prime p) (htEven : t % 4 = 0 ∨ t % 4 = 2)
    (hdiv : p ^ 2 ∣ a * t + 1) : p ≠ 2 := by
  intro hp2
  subst p
  have ht2 : 2 ∣ t := by
    rw [Nat.dvd_iff_mod_eq_zero]
    rcases htEven with ht0 | ht2 <;> omega
  have hdiv2 : 2 ∣ a * t + 1 :=
    Nat.dvd_of_pow_dvd (by decide : 1 ≤ 2) (by simpa using hdiv)
  have hprod : 2 ∣ a * t := dvd_mul_of_dvd_right ht2 a
  have hone : 2 ∣ 1 := (Nat.dvd_add_right hprod).mp hdiv2
  norm_num at hone

private lemma prime_ne_two_of_inactive_mod4
    {a t r p : ℕ} (ha4 : a % 4 = r)
    (hinactive : twoSquareInactive r (t % 4))
    (hdiv : p ^ 2 ∣ a * t + 1) : p ≠ 2 := by
  intro hp2
  subst p
  have hfour : 4 ∣ a * t + 1 := by simpa using hdiv
  have hz : (a * t + 1) % 4 = 0 := Nat.dvd_iff_mod_eq_zero.mp hfour
  apply hinactive
  simpa [twoSquareInactive, Nat.add_mod, Nat.mul_mod, ha4] using hz

private lemma prime_upper_tail
    {N t a p : ℕ} (ht : t ∈ Finset.Icc 1 N)
    (ha : a ∈ lowBaseSet N) (hp : Nat.Prime p)
    (hdiv : p ^ 2 ∣ a * t + 1) : p ≤ N * N + 1 := by
  have haIcc : a ∈ Finset.Icc 1 N := by
    rcases Finset.mem_union.mp ha with ha7 | ha18
    · exact (Finset.mem_filter.mp ha7).1
    · exact (Finset.mem_filter.mp ha18).1
  have haBounds := Finset.mem_Icc.mp haIcc
  have htBounds := Finset.mem_Icc.mp ht
  have hmul : a * t ≤ N * N := Nat.mul_le_mul haBounds.2 htBounds.2
  have hsq : p ^ 2 ≤ a * t + 1 := Nat.le_of_dvd (by positivity) hdiv
  have hpSq : p ≤ p ^ 2 := by nlinarith [hp.two_le]
  omega

theorem lowBaseBadNeighbours_subset_small_high
    {N t : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htEven : t % 4 = 0 ∨ t % 4 = 2) :
    lowBaseBadNeighbours N t ⊆
      lowSmallPrimeBadNeighbours N t ∪ lowHighPrimeBadNeighbours N t := by
  intro a ha
  have haBase := (Finset.mem_filter.mp ha).1
  obtain ⟨p, hp, hp5, hdiv⟩ := lowBad_prime_witness ht ha
  by_cases hp300 : p ≤ 300
  · exact Finset.mem_union_left _
      (mem_lowSmallPrimeBadNeighbours haBase hp
        (prime_ne_two_of_even_pivot hp htEven hdiv) hp5 hp300 hdiv)
  · have hpUpper := prime_upper_tail (Finset.mem_sdiff.mp ht).1 haBase hp hdiv
    exact Finset.mem_union_right _
      (Finset.mem_filter.mpr ⟨haBase,
        ⟨p, Finset.mem_Icc.mpr ⟨by omega, hpUpper⟩, hp, hdiv⟩⟩)

theorem lowBaseBadMod4Neighbours_subset_small_high
    {N t r : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (hinactive : twoSquareInactive r (t % 4)) :
    lowBaseBadMod4Neighbours N t r ⊆
      lowSmallPrimeBadMod4Neighbours N t r ∪ lowHighPrimeBadNeighbours N t := by
  intro a ha
  have haPart := Finset.mem_filter.mp ha
  have haBad := haPart.1
  have haBase := (Finset.mem_filter.mp haBad).1
  obtain ⟨p, hp, hp5, hdiv⟩ := lowBad_prime_witness ht haBad
  by_cases hp300 : p ≤ 300
  · exact Finset.mem_union_left _
      (mem_lowSmallPrimeBadMod4Neighbours haBase haPart.2 hp
        (prime_ne_two_of_inactive_mod4 haPart.2 hinactive hdiv)
        hp5 hp300 hdiv)
  · have hpUpper := prime_upper_tail (Finset.mem_sdiff.mp ht).1 haBase hp hdiv
    exact Finset.mem_union_right _
      (Finset.mem_filter.mpr ⟨haBase,
        ⟨p, Finset.mem_Icc.mpr ⟨by omega, hpUpper⟩, hp, hdiv⟩⟩)

lemma lowBaseBadNeighbours_card_le_small_high
    {N t : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htEven : t % 4 = 0 ∨ t % 4 = 2) :
    (lowBaseBadNeighbours N t).card ≤
      (lowSmallPrimeBadNeighbours N t).card +
      (lowHighPrimeBadNeighbours N t).card := by
  have hsub := Finset.card_le_card
    (lowBaseBadNeighbours_subset_small_high ht htEven)
  have houter := Finset.card_union_le
    (lowSmallPrimeBadNeighbours N t) (lowHighPrimeBadNeighbours N t)
  omega

lemma lowBaseBadMod4Neighbours_card_le_small_high
    {N t r : ℕ} (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (hinactive : twoSquareInactive r (t % 4)) :
    (lowBaseBadMod4Neighbours N t r).card ≤
      (lowSmallPrimeBadMod4Neighbours N t r).card +
      (lowHighPrimeBadNeighbours N t).card := by
  have hsub := Finset.card_le_card
    (lowBaseBadMod4Neighbours_subset_small_high ht hinactive)
  have houter := Finset.card_union_le
    (lowSmallPrimeBadMod4Neighbours N t r) (lowHighPrimeBadNeighbours N t)
  omega

/-! ## Minimal finite certificate contract -/

structure FirstLowDegreeCertificate (N : ℕ) : Prop where
  high : ∀ t : ℕ, t ∈ Finset.Icc 1 N \ lowBaseSet N →
    t ∈ lowDiagonalBad N →
    (lowHighPrimeBadNeighbours N t).card ≤ 342

structure SecondLowDegreeCertificate (N : ℕ) : Prop where
  high : ∀ t : ℕ, t ∈ Finset.Icc 1 N \ lowBaseSet N →
    t ∈ lowDiagonalBad N →
    (lowHighPrimeBadNeighbours N t).card ≤ 447

theorem firstLow_evenDegree_of_certificate
    {N t : ℕ} (certificate : FirstLowDegreeCertificate N)
    (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htDiagonal : t ∈ lowDiagonalBad N)
    (htEven : t % 4 = 0 ∨ t % 4 = 2) :
    ((lowBaseBadNeighbours N t).card : ℚ) ≤ (N : ℚ) / 75 + 462 := by
  have hsmall := lowSmallPrimeBadNeighbours_card_le N t
  have hhigh := certificate.high t ht htDiagonal
  have hsplit := lowBaseBadNeighbours_card_le_small_high ht htEven
  have hnat : (lowBaseBadNeighbours N t).card ≤
      lowEvenAPCeiling N + 342 := by omega
  have hcast : ((lowBaseBadNeighbours N t).card : ℚ) ≤
      ((lowEvenAPCeiling N + 342 : ℕ) : ℚ) := by
    exact_mod_cast hnat
  have hceil := lowEvenAPCeiling_cast_le N
  norm_num at hcast hceil ⊢
  linarith

theorem firstLow_oddDegree_of_certificate
    {N t r : ℕ} (certificate : FirstLowDegreeCertificate N)
    (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htDiagonal : t ∈ lowDiagonalBad N)
    (hinactive : twoSquareInactive r (t % 4)) :
    ((lowBaseBadMod4Neighbours N t r).card : ℚ) ≤
      (N : ℚ) / 300 + 548 := by
  have hsmall := lowSmallPrimeBadMod4Neighbours_card_le N t r
  have hhigh := certificate.high t ht htDiagonal
  have hsplit := lowBaseBadMod4Neighbours_card_le_small_high ht hinactive
  have hnat : (lowBaseBadMod4Neighbours N t r).card ≤
      lowOddAPCeiling N + 342 := by omega
  have hcast : ((lowBaseBadMod4Neighbours N t r).card : ℚ) ≤
      ((lowOddAPCeiling N + 342 : ℕ) : ℚ) := by
    exact_mod_cast hnat
  have hceil := lowOddAPCeiling_cast_le N
  norm_num at hcast hceil ⊢
  linarith

theorem secondLow_evenDegree_of_certificate
    {N t : ℕ} (certificate : SecondLowDegreeCertificate N)
    (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htDiagonal : t ∈ lowDiagonalBad N)
    (htEven : t % 4 = 0 ∨ t % 4 = 2) :
    ((lowBaseBadNeighbours N t).card : ℚ) ≤ (N : ℚ) / 75 + 567 := by
  have hsmall := lowSmallPrimeBadNeighbours_card_le N t
  have hhigh := certificate.high t ht htDiagonal
  have hsplit := lowBaseBadNeighbours_card_le_small_high ht htEven
  have hnat : (lowBaseBadNeighbours N t).card ≤
      lowEvenAPCeiling N + 447 := by omega
  have hcast : ((lowBaseBadNeighbours N t).card : ℚ) ≤
      ((lowEvenAPCeiling N + 447 : ℕ) : ℚ) := by
    exact_mod_cast hnat
  have hceil := lowEvenAPCeiling_cast_le N
  norm_num at hcast hceil ⊢
  linarith

theorem secondLow_oddDegree_of_certificate
    {N t r : ℕ} (certificate : SecondLowDegreeCertificate N)
    (ht : t ∈ Finset.Icc 1 N \ lowBaseSet N)
    (htDiagonal : t ∈ lowDiagonalBad N)
    (hinactive : twoSquareInactive r (t % 4)) :
    ((lowBaseBadMod4Neighbours N t r).card : ℚ) ≤
      (N : ℚ) / 300 + 672 := by
  have hsmall := lowSmallPrimeBadMod4Neighbours_card_le N t r
  have hhigh := certificate.high t ht htDiagonal
  have hsplit := lowBaseBadMod4Neighbours_card_le_small_high ht hinactive
  have hnat : (lowBaseBadMod4Neighbours N t r).card ≤
      lowOddAPCeiling N + 447 := by omega
  have hcast : ((lowBaseBadMod4Neighbours N t r).card : ℚ) ≤
      ((lowOddAPCeiling N + 447 : ℕ) : ℚ) := by
    exact_mod_cast hnat
  have hceil := lowOddAPCeiling_cast_le N
  norm_num at hcast hceil ⊢
  linarith

structure FirstLowReducedKernelEvidence (N : ℕ) : Prop where
  pure : ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card
  diagonalAll : ((lowDiagonalBad N).card : ℚ) ≤
    (25_297 / 1_000_000 : ℚ) * N
  diagonalOdd : ((lowDiagonalOdd N).card : ℚ) ≤
    (12_657 / 1_000_000 : ℚ) * N
  diagonalOne : ∀ r : ℕ, (r = 1 ∨ r = 3) →
    ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_337 / 1_000_000 : ℚ) * N
  degree : FirstLowDegreeCertificate N

structure SecondLowReducedKernelEvidence (N : ℕ) : Prop where
  pure : ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card
  diagonalAll : ((lowDiagonalBad N).card : ℚ) ≤
    (25_295 / 1_000_000 : ℚ) * N
  diagonalOdd : ((lowDiagonalOdd N).card : ℚ) ≤
    (12_655 / 1_000_000 : ℚ) * N
  diagonalOne : ∀ r : ℕ, (r = 1 ∨ r = 3) →
    ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_333 / 1_000_000 : ℚ) * N
  degree : SecondLowDegreeCertificate N

theorem firstLowKernelBounds_of_reducedEvidence
    {N : ℕ} (evidence : FirstLowReducedKernelEvidence N) :
    FirstLowKernelBounds N where
  pure := evidence.pure
  diagonalAll := evidence.diagonalAll
  diagonalOdd := evidence.diagonalOdd
  diagonalOne := evidence.diagonalOne
  evenDegree := fun _ ht htDiagonal htEven =>
    firstLow_evenDegree_of_certificate evidence.degree ht htDiagonal htEven
  oddDegree := fun _ _ ht htDiagonal hinactive =>
    firstLow_oddDegree_of_certificate evidence.degree ht htDiagonal hinactive

theorem secondLowKernelBounds_of_reducedEvidence
    {N : ℕ} (evidence : SecondLowReducedKernelEvidence N) :
    SecondLowKernelBounds N where
  pure := evidence.pure
  diagonalAll := evidence.diagonalAll
  diagonalOdd := evidence.diagonalOdd
  diagonalOne := evidence.diagonalOne
  evenDegree := fun _ ht htDiagonal htEven =>
    secondLow_evenDegree_of_certificate evidence.degree ht htDiagonal htEven
  oddDegree := fun _ _ ht htDiagonal hinactive =>
    secondLow_oddDegree_of_certificate evidence.degree ht htDiagonal hinactive

end Erdos848
