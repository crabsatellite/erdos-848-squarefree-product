import Erdos848.TailCRTCounting
import Erdos848.TailPureFiveMillionBudget

namespace Erdos848

/-!
# Small-square union bound in the five-million parity blocks

Only the thirteen odd primes other than five through `47` occur here.  Every
prime contributes one CRT class in a fixed residue modulo `50`; the complete
union costs at most `15846` points.
-/

private lemma pure_coprime_50_pow_two
    (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) (hp5 : p ≠ 5) :
    Nat.Coprime 50 (p ^ 2) := by
  have hnot : ¬ p ∣ 50 := by
    intro h
    have hcases : p ∣ 2 ∨ p ∣ 5 := by
      have hfactor : 50 = 2 * 5 ^ 2 := by norm_num
      rw [hfactor] at h
      rcases hp.dvd_mul.mp h with h2 | h25
      · exact Or.inl h2
      · exact Or.inr (hp.dvd_of_dvd_pow h25)
    rcases hcases with h2 | h5
    · rcases (Nat.dvd_prime (by norm_num : Nat.Prime 2)).mp h2 with hp1 | hp2eq
      · exact hp.ne_one hp1
      · exact hp2 hp2eq
    · rcases (Nat.dvd_prime (by norm_num : Nat.Prime 5)).mp h5 with hp1 | hp5eq
      · exact hp.ne_one hp1
      · exact hp5 hp5eq
  simpa [Nat.coprime_comm] using
    hp.coprime_pow_of_not_dvd (a := 50) (m := 2) hnot

private lemma pure_not_sq_dvd_of_prime_dvd_pivot
    {p pivot point : ℕ} (hp : Nat.Prime p) (hpivot : p ∣ pivot) :
    ¬ p ^ 2 ∣ pivot * point + 1 := by
  intro hsquare
  have hpSum : p ∣ pivot * point + 1 :=
    Nat.dvd_of_pow_dvd (by norm_num : 1 ≤ 2) hsquare
  have hpProduct : p ∣ pivot * point := dvd_mul_of_dvd_left hpivot point
  have hpOne : p ∣ 1 := (Nat.dvd_add_right hpProduct).mp hpSum
  exact hp.not_dvd_one hpOne

private lemma pure_dvd_pow_two_mul_add_one_iff
    {p pivot point : ℕ} (hp : Nat.Prime p) (hpivot : ¬ p ∣ pivot) :
    p ^ 2 ∣ pivot * point + 1 ↔
      (point : ZMod (p ^ 2)) = -((pivot : ZMod (p ^ 2))⁻¹) := by
  let modulus := p ^ 2
  have hcop : Nat.Coprime pivot modulus := by
    simpa [modulus] using hp.coprime_pow_of_not_dvd (m := 2) hpivot
  have hpivotUnit : IsUnit (pivot : ZMod modulus) :=
    (ZMod.isUnit_iff_coprime pivot modulus).mpr hcop
  constructor
  · intro hdiv
    have hzero : ((pivot * point + 1 : ℕ) : ZMod modulus) = 0 :=
      (ZMod.natCast_eq_zero_iff (pivot * point + 1) modulus).mpr hdiv
    have hsum :
        (pivot : ZMod modulus) * (point : ZMod modulus) + 1 = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_one] using hzero
    have hproduct :
        (pivot : ZMod modulus) * (point : ZMod modulus) = -1 := by
      simpa using (eq_neg_of_add_eq_zero_left hsum)
    have hpoint :
        (point : ZMod modulus) =
          (pivot : ZMod modulus)⁻¹ * (-1 : ZMod modulus) := by
      calc
        (point : ZMod modulus) = 1 * point := by simp
        _ = ((pivot : ZMod modulus)⁻¹ * pivot) * point := by
          rw [ZMod.inv_mul_of_unit (pivot : ZMod modulus) hpivotUnit]
        _ = (pivot : ZMod modulus)⁻¹ * (pivot * point) := by ring
        _ = (pivot : ZMod modulus)⁻¹ * (-1) := by rw [hproduct]
    simpa [modulus, mul_comm, mul_left_comm, mul_assoc] using hpoint
  · intro hpoint
    have hsum :
        (pivot : ZMod modulus) * (point : ZMod modulus) + 1 = 0 := by
      simp [hpoint, ZMod.mul_inv_of_unit (pivot : ZMod modulus) hpivotUnit]
    have hzero : ((pivot * point + 1 : ℕ) : ZMod modulus) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_one] using hsum
    exact (ZMod.natCast_eq_zero_iff (pivot * point + 1) modulus).mp hzero

/-- One square witness occupies at most one CRT class modulo `50 p²`. -/
theorem pure_off_count_modEq50_le
    (N p pivot residue : ℕ) (hp : Nat.Prime p)
    (hp2 : p ≠ 2) (hp5 : p ≠ 5) :
    ((Finset.range N).filter fun point =>
        point ≡ residue [MOD 50] ∧ p ^ 2 ∣ pivot * point + 1).card ≤
      N / (50 * p ^ 2) + 1 := by
  classical
  by_cases hpivot : p ∣ pivot
  · have hempty :
        (Finset.range N).filter (fun point =>
          point ≡ residue [MOD 50] ∧ p ^ 2 ∣ pivot * point + 1) = ∅ := by
      ext point
      simp [pure_not_sq_dvd_of_prime_dvd_pivot hp hpivot]
    simp [hempty]
  · have hp0 : (p ^ 2 : ℕ) ≠ 0 := pow_ne_zero 2 hp.ne_zero
    let rootZ : ZMod (p ^ 2) := -((pivot : ZMod (p ^ 2))⁻¹)
    let root : ℕ := rootZ.val
    have hrootZ : (root : ZMod (p ^ 2)) = rootZ := by
      haveI : NeZero (p ^ 2) := ⟨hp0⟩
      simp [root, rootZ]
    have hsubset :
        (Finset.range N).filter (fun point =>
          point ≡ residue [MOD 50] ∧ p ^ 2 ∣ pivot * point + 1) ⊆
        (Finset.range N).filter (fun point =>
          point ≡ residue [MOD 50] ∧ point ≡ root [MOD p ^ 2]) := by
      intro point hpoint
      simp only [Finset.mem_filter, Finset.mem_range] at hpoint ⊢
      refine ⟨hpoint.1, hpoint.2.1, ?_⟩
      have heq :
          (point : ZMod (p ^ 2)) = -((pivot : ZMod (p ^ 2))⁻¹) := by
        exact (pure_dvd_pow_two_mul_add_one_iff hp hpivot).mp hpoint.2.2
      apply (ZMod.natCast_eq_natCast_iff point root (p ^ 2)).mp
      simpa [rootZ, hrootZ] using heq
    have hcard := Finset.card_le_card hsubset
    have hcop := pure_coprime_50_pow_two p hp hp2 hp5
    have hcount := card_filter_two_modEq_exact
      N 50 (p ^ 2) residue root hcop (by norm_num) (pow_pos hp.pos 2)
    rw [hcount] at hcard
    split at hcard <;> omega

def pureFiveMillionSmallPrimeFinset : Finset ℕ :=
  pureSmallPrimes47.toFinset

lemma pureFiveMillionSmallPrime_data
    {p : ℕ} (hp : p ∈ pureFiveMillionSmallPrimeFinset) :
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 := by
  simp [pureFiveMillionSmallPrimeFinset, pureSmallPrimes47] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl <;> norm_num

def pureFiveMillionSmallBadPoints
    (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  points.filter fun point =>
    ∃ p ∈ pureFiveMillionSmallPrimeFinset,
      p ^ 2 ∣ pivot * point + 1

/-- Uniform union bound for any five-million point set contained in one
residue class modulo `50`. -/
theorem pureFiveMillionSmallBadPoints_card_le
    (points : Finset ℕ) (pivot residue : ℕ)
    (hRange : points ⊆ Finset.range 5_000_001)
    (hResidue : ∀ point ∈ points, point ≡ residue [MOD 50]) :
    (pureFiveMillionSmallBadPoints points pivot).card ≤ 15_846 := by
  classical
  let event : ℕ → Finset ℕ := fun p =>
    (Finset.range 5_000_001).filter fun point =>
      point ≡ residue [MOD 50] ∧ p ^ 2 ∣ pivot * point + 1
  have hsubset :
      pureFiveMillionSmallBadPoints points pivot ⊆
        pureFiveMillionSmallPrimeFinset.biUnion event := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    obtain ⟨p, hp, hpdiv⟩ := hparts.2
    apply Finset.mem_biUnion.mpr
    refine ⟨p, hp, ?_⟩
    exact Finset.mem_filter.mpr
      ⟨hRange hparts.1, hResidue point hparts.1, hpdiv⟩
  calc
    (pureFiveMillionSmallBadPoints points pivot).card ≤
        (pureFiveMillionSmallPrimeFinset.biUnion event).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ p ∈ pureFiveMillionSmallPrimeFinset, (event p).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ pureFiveMillionSmallPrimeFinset,
        (5_000_001 / (50 * p ^ 2) + 1) := by
      apply Finset.sum_le_sum
      intro p hp
      have hdata := pureFiveMillionSmallPrime_data hp
      exact pure_off_count_modEq50_le
        5_000_001 p pivot residue hdata.1 hdata.2.1 hdata.2.2
    _ = 15_846 := by
      norm_num [pureFiveMillionSmallPrimeFinset, pureSmallPrimes47]

theorem pureA7OppositeParityBlock_residue
    (N : ℕ) (parity : Bool) {point : ℕ}
    (hpoint : point ∈ pureA7OppositeParityBlock N parity) :
    point ≡ (if parity then 32 else 7) [MOD 50] := by
  have hparts := Finset.mem_filter.mp hpoint
  have hmod25 := (Finset.mem_filter.mp hparts.1).2
  have hmod2 := hparts.2
  have hcop : Nat.Coprime 25 2 := by decide
  cases parity with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte] at hmod2 ⊢
      have h25 : point ≡ 7 [MOD 25] := by simpa [Nat.ModEq] using hmod25
      have h2 : point ≡ 1 [MOD 2] := by simpa [Nat.ModEq] using hmod2
      have hcrt := Nat.chineseRemainder_modEq_unique hcop h25 h2
      have hres := Nat.chineseRemainder_modEq_unique hcop
        (show 7 ≡ 7 [MOD 25] by decide)
        (show 7 ≡ 1 [MOD 2] by decide)
      exact hcrt.trans hres.symm
  | true =>
      simp only [↓reduceIte] at hmod2 ⊢
      have h25 : point ≡ 7 [MOD 25] := by simpa [Nat.ModEq] using hmod25
      have h2 : point ≡ 0 [MOD 2] := by simpa [Nat.ModEq] using hmod2
      have hcrt := Nat.chineseRemainder_modEq_unique hcop h25 h2
      have hres := Nat.chineseRemainder_modEq_unique hcop
        (show 32 ≡ 7 [MOD 25] by decide)
        (show 32 ≡ 0 [MOD 2] by decide)
      exact hcrt.trans hres.symm

theorem pureA18ParityBlock_residue
    (N : ℕ) (parity : Bool) {point : ℕ}
    (hpoint : point ∈ pureA18ParityBlock N parity) :
    point ≡ (if parity then 43 else 18) [MOD 50] := by
  have hparts := Finset.mem_filter.mp hpoint
  have hmod25 := (Finset.mem_filter.mp hparts.1).2
  have hmod2 := hparts.2
  have hcop : Nat.Coprime 25 2 := by decide
  cases parity with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte] at hmod2 ⊢
      have h25 : point ≡ 18 [MOD 25] := by simpa [Nat.ModEq] using hmod25
      have h2 : point ≡ 0 [MOD 2] := by simpa [Nat.ModEq] using hmod2
      have hcrt := Nat.chineseRemainder_modEq_unique hcop h25 h2
      have hres := Nat.chineseRemainder_modEq_unique hcop
        (show 18 ≡ 18 [MOD 25] by decide)
        (show 18 ≡ 0 [MOD 2] by decide)
      exact hcrt.trans hres.symm
  | true =>
      simp only [↓reduceIte] at hmod2 ⊢
      have h25 : point ≡ 18 [MOD 25] := by simpa [Nat.ModEq] using hmod25
      have h2 : point ≡ 1 [MOD 2] := by simpa [Nat.ModEq] using hmod2
      have hcrt := Nat.chineseRemainder_modEq_unique hcop h25 h2
      have hres := Nat.chineseRemainder_modEq_unique hcop
        (show 43 ≡ 18 [MOD 25] by decide)
        (show 43 ≡ 1 [MOD 2] by decide)
      exact hcrt.trans hres.symm

theorem pureFiveMillionA7SmallBad_card_le
    (pivot : ℕ) (parity : Bool) :
    (pureFiveMillionSmallBadPoints
      (pureA7OppositeParityBlock 5_000_000 parity) pivot).card ≤ 15_846 := by
  apply pureFiveMillionSmallBadPoints_card_le _ pivot
    (if parity then 32 else 7)
  · intro point hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    simpa using (show point < 5_000_001 by omega)
  · intro point hpoint
    exact pureA7OppositeParityBlock_residue 5_000_000 parity hpoint

theorem pureFiveMillionA18SmallBad_card_le
    (pivot : ℕ) (parity : Bool) :
    (pureFiveMillionSmallBadPoints
      (pureA18ParityBlock 5_000_000 parity) pivot).card ≤ 15_846 := by
  apply pureFiveMillionSmallBadPoints_card_le _ pivot
    (if parity then 43 else 18)
  · intro point hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    simpa using (show point < 5_000_001 by omega)
  · intro point hpoint
    exact pureA18ParityBlock_residue 5_000_000 parity hpoint

theorem pureFiveMillionA7Block_eq_residueClass (parity : Bool) :
    pureA7OppositeParityBlock 5_000_000 parity =
      (Finset.range 5_000_001).filter fun point =>
        point ≡ (if parity then 32 else 7) [MOD 50] := by
  ext point
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · intro hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    exact ⟨by omega, pureA7OppositeParityBlock_residue
      5_000_000 parity hpoint⟩
  · rintro ⟨hpointUpper, hmod50⟩
    have hpointPositive : 0 < point := by
      by_contra hzero
      have hpointZero : point = 0 := Nat.eq_zero_of_not_pos hzero
      subst point
      cases parity <;> norm_num [Nat.ModEq] at hmod50
    apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_filter.mpr
      constructor
      · exact Finset.mem_Icc.mpr ⟨hpointPositive, by omega⟩
      · have hmod25 := hmod50.of_dvd (by norm_num : 25 ∣ 50)
        cases parity <;> simpa [Nat.ModEq] using hmod25
    · have hmod2 := hmod50.of_dvd (by norm_num : 2 ∣ 50)
      cases parity <;> simpa [Nat.ModEq] using hmod2

theorem pureFiveMillionA18Block_eq_residueClass (parity : Bool) :
    pureA18ParityBlock 5_000_000 parity =
      (Finset.range 5_000_001).filter fun point =>
        point ≡ (if parity then 43 else 18) [MOD 50] := by
  ext point
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · intro hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    exact ⟨by omega, pureA18ParityBlock_residue
      5_000_000 parity hpoint⟩
  · rintro ⟨hpointUpper, hmod50⟩
    have hpointPositive : 0 < point := by
      by_contra hzero
      have hpointZero : point = 0 := Nat.eq_zero_of_not_pos hzero
      subst point
      cases parity <;> norm_num [Nat.ModEq] at hmod50
    apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_filter.mpr
      constructor
      · exact Finset.mem_Icc.mpr ⟨hpointPositive, by omega⟩
      · have hmod25 := hmod50.of_dvd (by norm_num : 25 ∣ 50)
        cases parity <;> simpa [Nat.ModEq] using hmod25
    · have hmod2 := hmod50.of_dvd (by norm_num : 2 ∣ 50)
      cases parity <;> simpa [Nat.ModEq] using hmod2

theorem pureFiveMillionA7Block_card (parity : Bool) :
    (pureA7OppositeParityBlock 5_000_000 parity).card = 100_000 := by
  rw [pureFiveMillionA7Block_eq_residueClass]
  rw [card_filter_modEq_exact 5_000_001 50
    (if parity then 32 else 7) (by norm_num)]
  cases parity <;> norm_num

theorem pureFiveMillionA18Block_card (parity : Bool) :
    (pureA18ParityBlock 5_000_000 parity).card = 100_000 := by
  rw [pureFiveMillionA18Block_eq_residueClass]
  rw [card_filter_modEq_exact 5_000_001 50
    (if parity then 43 else 18) (by norm_num)]
  cases parity <;> norm_num

#print axioms pure_off_count_modEq50_le
#print axioms pureFiveMillionSmallBadPoints_card_le
#print axioms pureFiveMillionA7SmallBad_card_le
#print axioms pureFiveMillionA18SmallBad_card_le
#print axioms pureFiveMillionA7Block_card
#print axioms pureFiveMillionA18Block_card

end Erdos848
