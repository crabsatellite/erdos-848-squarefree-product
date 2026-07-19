import Erdos848.TailPureGlobalHigh
import Erdos848.TailPureGlobalMedium
import Erdos848.TailPureGlobalSmall

namespace Erdos848

/-!
# Uniform pure opposite-parity degree certificate

The three prime ranges are now uniform for every `N ≥ 5,000,000`:
small primes are fixed through `47`, medium primes end at `N / 26`, and the
global transformed-root argument pays all larger primes.  This module joins
those literal bad-point sets and constructs the actual dense matching.
-/

set_option maxRecDepth 1000000

noncomputable def pureGlobalBadPoints
    (N : ℕ) (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  (pureFiveMillionSmallBadPoints points pivot ∪
    pureGlobalMediumBadPoints N points pivot) ∪
      pureGlobalHighBadPoints N points pivot

def pureGlobalBadEnvelope : ℚ :=
  pureGlobalSmallEnvelope + pureGlobalMediumEnvelope +
    pureFiveMillionRootEnvelope / 5_000_000

theorem pureGlobalBadEnvelope_le_strictHalfTarget :
    pureGlobalBadEnvelope ≤ 1 / 100 - 1 / 5_000_000 := by
  unfold pureGlobalBadEnvelope pureGlobalSmallEnvelope
  unfold pureGlobalMediumEnvelope pureFiveMillionSmallBadUpper
  rw [pureSmallPrimes47_length, pureFiveMillionSmallDensity_exact]
  norm_num [pureFiveMillionRootEnvelope]

private lemma pureGlobal_prime_mem_small
    {p : ℕ} (hp : Nat.Prime p) (hpTwo : p ≠ 2) (hpFive : p ≠ 5)
    (hpUpper : p ≤ 47) :
    p ∈ pureFiveMillionSmallPrimeFinset := by
  have hpPositive := hp.pos
  interval_cases p <;>
    norm_num at hp <;>
    simp_all [pureFiveMillionSmallPrimeFinset, pureSmallPrimes47]

private lemma pureGlobal_nonSquarefree_mem_bad
    {N : ℕ} {points : Finset ℕ} {pivot point : ℕ}
    (hpoint : point ∈ points)
    (hTwo : ¬ 2 ∣ pivot * point + 1)
    (hFive : ¬ 5 ∣ pivot * point + 1)
    (hnot : ¬ Squarefree (pivot * point + 1)) :
    point ∈ pureGlobalBadPoints N points pivot := by
  classical
  rw [Nat.squarefree_iff_prime_squarefree] at hnot
  push Not at hnot
  obtain ⟨p, hpPrime, hpSquare⟩ := hnot
  have hpDiv : p ^ 2 ∣ pivot * point + 1 := by
    simpa [pow_two] using hpSquare
  have hpTwo : p ≠ 2 := by
    intro hp
    subst p
    exact hTwo (dvd_trans (by norm_num : 2 ∣ 4) hpDiv)
  have hpFive : p ≠ 5 := by
    intro hp
    subst p
    exact hFive (dvd_trans (by norm_num : 5 ∣ 25) hpDiv)
  by_cases hpSmall : p ≤ 47
  · apply Finset.mem_union.mpr
    apply Or.inl
    apply Finset.mem_union.mpr
    apply Or.inl
    exact Finset.mem_filter.mpr
      ⟨hpoint, p, pureGlobal_prime_mem_small hpPrime hpTwo hpFive hpSmall,
        hpDiv⟩
  · by_cases hpMedium : p ≤ N / 26
    · apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inr
      rw [pureGlobalMediumBadPoints]
      exact Finset.mem_filter.mpr
        ⟨hpoint, p, mem_tailIntermediatePrimes.mpr
          ⟨hpPrime, by omega, hpMedium⟩, hpDiv⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      rw [pureGlobalHighBadPoints_def]
      exact Finset.mem_filter.mpr
        ⟨hpoint, p, hpPrime, by omega, hpDiv⟩

private lemma pureGlobal_edge_not_two_five
    {N : ℕ} (parity : Bool)
    (pivot : ↥(pureA18ParityBlock N parity))
    (point : ↥(pureA7OppositeParityBlock N parity)) :
    ¬ 2 ∣ pivot.1 * point.1 + 1 ∧
      ¬ 5 ∣ pivot.1 * point.1 + 1 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpointParts := Finset.mem_filter.mp point.2
  have hmodTwo : (pivot.1 * point.1 + 1) % 2 = 1 := by
    cases parity with
    | false =>
        have hpivot : pivot.1 % 2 = 0 := by simpa using hpivotParts.2
        have hpoint : point.1 % 2 = 1 := by simpa using hpointParts.2
        norm_num [Nat.mul_mod, Nat.add_mod, hpivot, hpoint]
    | true =>
        have hpivot : pivot.1 % 2 = 1 := by simpa using hpivotParts.2
        have hpoint : point.1 % 2 = 0 := by simpa using hpointParts.2
        norm_num [Nat.mul_mod, Nat.add_mod, hpivot, hpoint]
  have hpivotMod50 := pureA18ParityBlock_residue N parity pivot.2
  have hpointMod50 := pureA7OppositeParityBlock_residue N parity point.2
  have hpivotModFive : pivot.1 % 5 = 3 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hpointModFive : point.1 % 5 = 2 := by
    have hmod := hpointMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hmodFive : (pivot.1 * point.1 + 1) % 5 = 2 := by
    norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive, hpointModFive]
  constructor
  · intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    omega
  · intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    omega

private theorem pureGlobalA7Small_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool) (pivot : ℕ) :
    ((pureFiveMillionSmallBadPoints
      (pureA7OppositeParityBlock N parity) pivot).card : ℚ) / N ≤
        pureGlobalSmallEnvelope := by
  apply pureGlobalSmallBadPoints_card_div_le_envelope N _ pivot
    (if parity then 32 else 7) hN
  · intro point hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    simpa using (show point < N + 1 by omega)
  · intro point hpoint
    exact pureA7OppositeParityBlock_residue N parity hpoint

private theorem pureGlobalA18Small_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool) (pivot : ℕ) :
    ((pureFiveMillionSmallBadPoints
      (pureA18ParityBlock N parity) pivot).card : ℚ) / N ≤
        pureGlobalSmallEnvelope := by
  apply pureGlobalSmallBadPoints_card_div_le_envelope N _ pivot
    (if parity then 43 else 18) hN
  · intro point hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    simpa using (show point < N + 1 by omega)
  · intro point hpoint
    exact pureA18ParityBlock_residue N parity hpoint

private theorem pureGlobalA7Medium_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool) (pivot : ℕ) :
    ((pureGlobalMediumBadPoints N
      (pureA7OppositeParityBlock N parity) pivot).card : ℚ) / N ≤
        pureGlobalMediumEnvelope := by
  apply pureGlobalMediumBadPoints_card_div_le_envelope N _ pivot 7 hN
  intro point hpoint
  have hbase := pureA7OppositeParityBlock_subset N parity hpoint
  simpa [baseResidueClass, OriginalA7] using hbase

private theorem pureGlobalA18Medium_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool) (pivot : ℕ) :
    ((pureGlobalMediumBadPoints N
      (pureA18ParityBlock N parity) pivot).card : ℚ) / N ≤
        pureGlobalMediumEnvelope := by
  apply pureGlobalMediumBadPoints_card_div_le_envelope N _ pivot 18 hN
  intro point hpoint
  have hbase := pureA18ParityBlock_subset N parity hpoint
  simpa [baseResidueClass, OriginalA18] using hbase

private theorem pureGlobalA7High_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool)
    (pivot : ↥(pureA18ParityBlock N parity)) :
    ((pureGlobalHighBadPoints N
      (pureA7OppositeParityBlock N parity) pivot.1).card : ℚ) / N ≤
        pureFiveMillionRootEnvelope / 5_000_000 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpivotBounds := Finset.mem_Icc.mp
    (Finset.mem_filter.mp hpivotParts.1).1
  let residue : ℕ := if parity then 32 else 7
  have hpivotMod50 := pureA18ParityBlock_residue N parity pivot.2
  have hpivotModFive : pivot.1 % 5 = 3 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hconstantOdd : Odd (pivot.1 * residue + 1) := by
    dsimp [residue]
    cases parity with
    | false =>
        have hpivotModTwo : pivot.1 % 2 = 0 := by
          simpa using hpivotParts.2
        have hpivotEven : Even pivot.1 := by
          rw [even_iff_two_dvd]
          exact Nat.dvd_of_mod_eq_zero hpivotModTwo
        exact (hpivotEven.mul_right 7).add_one
    | true =>
        exact (show Even 32 by norm_num).mul_left pivot.1 |>.add_one
  have hconstantFive : ¬ 5 ∣ pivot.1 * residue + 1 := by
    intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    dsimp [residue] at hzero
    cases parity <;>
      norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive] at hzero
  exact pureGlobalHighBadPoints_card_div_le_envelope N _ pivot.1 residue hN
    hpivotBounds.1 hpivotBounds.2
    (by
      intro point hpoint
      exact (Finset.mem_Icc.mp
        (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1).2)
    (by
      intro point hpoint
      have hmod := pureA7OppositeParityBlock_residue N parity hpoint
      cases parity <;> simpa [residue, Nat.ModEq] using hmod)
    (by cases parity <;> norm_num [residue])
    hconstantOdd hconstantFive

private theorem pureGlobalA18High_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool)
    (pivot : ↥(pureA7OppositeParityBlock N parity)) :
    ((pureGlobalHighBadPoints N
      (pureA18ParityBlock N parity) pivot.1).card : ℚ) / N ≤
        pureFiveMillionRootEnvelope / 5_000_000 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpivotBounds := Finset.mem_Icc.mp
    (Finset.mem_filter.mp hpivotParts.1).1
  let residue : ℕ := if parity then 43 else 18
  have hpivotMod50 := pureA7OppositeParityBlock_residue N parity pivot.2
  have hpivotModFive : pivot.1 % 5 = 2 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hconstantOdd : Odd (pivot.1 * residue + 1) := by
    dsimp [residue]
    cases parity with
    | false => exact (show Even 18 by norm_num).mul_left pivot.1 |>.add_one
    | true =>
        have hpivotModTwo : pivot.1 % 2 = 0 := by simpa using hpivotParts.2
        have hpivotEven : Even pivot.1 := by
          rw [even_iff_two_dvd]
          exact Nat.dvd_of_mod_eq_zero hpivotModTwo
        exact (hpivotEven.mul_right 43).add_one
  have hconstantFive : ¬ 5 ∣ pivot.1 * residue + 1 := by
    intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    dsimp [residue] at hzero
    cases parity <;>
      norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive] at hzero
  exact pureGlobalHighBadPoints_card_div_le_envelope N _ pivot.1 residue hN
    hpivotBounds.1 hpivotBounds.2
    (by
      intro point hpoint
      exact (Finset.mem_Icc.mp
        (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1).2)
    (by
      intro point hpoint
      have hmod := pureA18ParityBlock_residue N parity hpoint
      cases parity <;> simpa [residue, Nat.ModEq] using hmod)
    (by cases parity <;> norm_num [residue])
    hconstantOdd hconstantFive

private theorem pureGlobalBadPoints_ratio_le_of_components
    {N : ℕ} (hN : 5_000_000 ≤ N) (points : Finset ℕ) (pivot : ℕ)
    (hsmall : ((pureFiveMillionSmallBadPoints points pivot).card : ℚ) / N ≤
      pureGlobalSmallEnvelope)
    (hmedium : ((pureGlobalMediumBadPoints N points pivot).card : ℚ) / N ≤
      pureGlobalMediumEnvelope)
    (hhigh : ((pureGlobalHighBadPoints N points pivot).card : ℚ) / N ≤
      pureFiveMillionRootEnvelope / 5_000_000) :
    ((pureGlobalBadPoints N points pivot).card : ℚ) / N ≤
      pureGlobalBadEnvelope := by
  have hcardNat :
      (pureGlobalBadPoints N points pivot).card ≤
        (pureFiveMillionSmallBadPoints points pivot).card +
          (pureGlobalMediumBadPoints N points pivot).card +
            (pureGlobalHighBadPoints N points pivot).card := by
    unfold pureGlobalBadPoints
    calc
      ((pureFiveMillionSmallBadPoints points pivot ∪
        pureGlobalMediumBadPoints N points pivot) ∪
          pureGlobalHighBadPoints N points pivot).card ≤
          (pureFiveMillionSmallBadPoints points pivot ∪
            pureGlobalMediumBadPoints N points pivot).card +
              (pureGlobalHighBadPoints N points pivot).card :=
        Finset.card_union_le _ _
      _ ≤ _ := Nat.add_le_add_right
        (Finset.card_union_le _ _) _
  have hNpos : (0 : ℚ) < N := by positivity
  have hcardQ :
      ((pureGlobalBadPoints N points pivot).card : ℚ) / N ≤
        ((pureFiveMillionSmallBadPoints points pivot).card : ℚ) / N +
          ((pureGlobalMediumBadPoints N points pivot).card : ℚ) / N +
            ((pureGlobalHighBadPoints N points pivot).card : ℚ) / N := by
    have hcast :
        ((pureGlobalBadPoints N points pivot).card : ℚ) ≤
          (pureFiveMillionSmallBadPoints points pivot).card +
            (pureGlobalMediumBadPoints N points pivot).card +
              (pureGlobalHighBadPoints N points pivot).card := by
      exact_mod_cast hcardNat
    calc
      ((pureGlobalBadPoints N points pivot).card : ℚ) / N ≤
          (((pureFiveMillionSmallBadPoints points pivot).card : ℚ) +
            (pureGlobalMediumBadPoints N points pivot).card +
              (pureGlobalHighBadPoints N points pivot).card) / N :=
        div_le_div_of_nonneg_right hcast hNpos.le
      _ = _ := by ring
  unfold pureGlobalBadEnvelope
  linarith

private theorem pureGlobal_badSubtype_card_le_cover
    {N : ℕ} {points : Finset ℕ} (pivot : ℕ)
    (hcover : ∀ point ∈ points,
      ¬ Squarefree (pivot * point + 1) →
        point ∈ pureGlobalBadPoints N points pivot) :
    (Finset.univ.filter fun point : ↥points =>
      ¬ Squarefree (pivot * point.1 + 1)).card ≤
        (pureGlobalBadPoints N points pivot).card := by
  classical
  let bad := Finset.univ.filter fun point : ↥points =>
    ¬ Squarefree (pivot * point.1 + 1)
  have himage : bad.image Subtype.val ⊆ pureGlobalBadPoints N points pivot := by
    intro point hpoint
    obtain ⟨typedPoint, htypedPoint, rfl⟩ := Finset.mem_image.mp hpoint
    have hparts := Finset.mem_filter.mp htypedPoint
    exact hcover typedPoint.1 typedPoint.2 hparts.2
  have hcardImage : (bad.image Subtype.val).card = bad.card :=
    Finset.card_image_of_injective bad Subtype.val_injective
  change bad.card ≤ _
  rw [← hcardImage]
  exact Finset.card_le_card himage

private theorem pureGlobalA7_bad_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool)
    (pivot : ↥(pureA18ParityBlock N parity)) :
    ((Finset.univ.filter fun point : ↥(pureA7OppositeParityBlock N parity) =>
      ¬ Squarefree (pivot.1 * point.1 + 1)).card : ℚ) / N ≤
        pureGlobalBadEnvelope := by
  let points := pureA7OppositeParityBlock N parity
  have hbadNat :
      (Finset.univ.filter fun point : ↥points =>
        ¬ Squarefree (pivot.1 * point.1 + 1)).card ≤
          (pureGlobalBadPoints N points pivot.1).card := by
    apply pureGlobal_badSubtype_card_le_cover pivot.1
    intro point hpoint hnot
    have hnotTwoFive := pureGlobal_edge_not_two_five parity pivot ⟨point, hpoint⟩
    exact pureGlobal_nonSquarefree_mem_bad hpoint
      hnotTwoFive.1 hnotTwoFive.2 hnot
  have hcover := pureGlobalBadPoints_ratio_le_of_components hN points pivot.1
    (pureGlobalA7Small_ratio_le hN parity pivot.1)
    (pureGlobalA7Medium_ratio_le hN parity pivot.1)
    (pureGlobalA7High_ratio_le hN parity pivot)
  have hNpos : (0 : ℚ) < N := by positivity
  have hbadQ :
      ((Finset.univ.filter fun point : ↥points =>
        ¬ Squarefree (pivot.1 * point.1 + 1)).card : ℚ) / N ≤
          ((pureGlobalBadPoints N points pivot.1).card : ℚ) / N := by
    apply div_le_div_of_nonneg_right _ hNpos.le
    exact_mod_cast hbadNat
  exact hbadQ.trans hcover

private theorem pureGlobalA18_bad_ratio_le
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool)
    (pivot : ↥(pureA7OppositeParityBlock N parity)) :
    ((Finset.univ.filter fun point : ↥(pureA18ParityBlock N parity) =>
      ¬ Squarefree (point.1 * pivot.1 + 1)).card : ℚ) / N ≤
        pureGlobalBadEnvelope := by
  let points := pureA18ParityBlock N parity
  have hbadNat :
      (Finset.univ.filter fun point : ↥points =>
        ¬ Squarefree (point.1 * pivot.1 + 1)).card ≤
          (pureGlobalBadPoints N points pivot.1).card := by
    have hraw :
        (Finset.univ.filter fun point : ↥points =>
          ¬ Squarefree (pivot.1 * point.1 + 1)).card ≤
            (pureGlobalBadPoints N points pivot.1).card := by
      apply pureGlobal_badSubtype_card_le_cover pivot.1
      intro point hpoint hnot
      have hnotTwoFive := pureGlobal_edge_not_two_five parity ⟨point, hpoint⟩ pivot
      exact pureGlobal_nonSquarefree_mem_bad hpoint
        (by simpa [mul_comm] using hnotTwoFive.1)
        (by simpa [mul_comm] using hnotTwoFive.2) hnot
    simpa only [mul_comm] using hraw
  have hcover := pureGlobalBadPoints_ratio_le_of_components hN points pivot.1
    (pureGlobalA18Small_ratio_le hN parity pivot.1)
    (pureGlobalA18Medium_ratio_le hN parity pivot.1)
    (pureGlobalA18High_ratio_le hN parity pivot)
  have hNpos : (0 : ℚ) < N := by positivity
  have hbadQ :
      ((Finset.univ.filter fun point : ↥points =>
        ¬ Squarefree (point.1 * pivot.1 + 1)).card : ℚ) / N ≤
          ((pureGlobalBadPoints N points pivot.1).card : ℚ) / N := by
    apply div_le_div_of_nonneg_right _ hNpos.le
    exact_mod_cast hbadNat
  exact hbadQ.trans hcover

private theorem pureGlobalA7Block_eq_residueClass
    (N : ℕ) (parity : Bool) :
    pureA7OppositeParityBlock N parity =
      (Finset.range (N + 1)).filter fun point =>
        point ≡ (if parity then 32 else 7) [MOD 50] := by
  ext point
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · intro hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    exact ⟨by omega, pureA7OppositeParityBlock_residue N parity hpoint⟩
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

private theorem pureGlobalA18Block_eq_residueClass
    (N : ℕ) (parity : Bool) :
    pureA18ParityBlock N parity =
      (Finset.range (N + 1)).filter fun point =>
        point ≡ (if parity then 43 else 18) [MOD 50] := by
  ext point
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · intro hpoint
    have hbounds := Finset.mem_Icc.mp
      (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1
    exact ⟨by omega, pureA18ParityBlock_residue N parity hpoint⟩
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

private theorem pureGlobalA7Block_card_lower (N : ℕ) (parity : Bool) :
    N / 50 ≤ (pureA7OppositeParityBlock N parity).card := by
  rw [pureGlobalA7Block_eq_residueClass]
  rw [card_filter_modEq_exact (N + 1) 50
    (if parity then 32 else 7) (by norm_num)]
  omega

private theorem pureGlobalA18Block_card_lower (N : ℕ) (parity : Bool) :
    N / 50 ≤ (pureA18ParityBlock N parity).card := by
  rw [pureGlobalA18Block_eq_residueClass]
  rw [card_filter_modEq_exact (N + 1) 50
    (if parity then 43 else 18) (by norm_num)]
  omega

private theorem bad_card_lt_block_half
    {N bad block : ℕ} (hN : 5_000_000 ≤ N)
    (hbad : (bad : ℚ) / N ≤ pureGlobalBadEnvelope)
    (hblock : N / 50 ≤ block) :
    bad < block / 2 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : ℚ) < N := by exact_mod_cast hNposNat
  have hInv : (1 : ℚ) / N ≤ 1 / 5_000_000 := by
    have hNQ : (5_000_000 : ℚ) ≤ N := by exact_mod_cast hN
    exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hNQ
  have htarget := pureGlobalBadEnvelope_le_strictHalfTarget
  have hratio : (bad : ℚ) / N ≤ 1 / 100 - 1 / N := by
    linarith
  have hscaled : (100 * (bad + 1) : ℕ) ≤ N := by
    have hscaledQ : (100 : ℚ) * ((bad : ℚ) + 1) ≤ N := by
      have hmul := mul_le_mul_of_nonneg_right hratio hNpos.le
      field_simp [ne_of_gt hNpos] at hmul
      linarith
    exact_mod_cast hscaledQ
  have hbadDiv : bad + 1 ≤ N / 100 := by
    apply (Nat.le_div_iff_mul_le (by norm_num : 0 < 100)).2
    simpa [mul_comm] using hscaled
  have hhalf : N / 100 ≤ block / 2 := by
    have h := Nat.div_le_div_right (c := 2) hblock
    simpa [Nat.div_div_eq_div_mul] using h
  omega

theorem pureGlobalParityDegreeCertificate
    {N : ℕ} (hN : 5_000_000 ≤ N) (parity : Bool) :
    PureOppositeParityDegreeCertificate N parity where
  left := by
    intro pivot
    have hbadRatio := pureGlobalA7_bad_ratio_le hN parity pivot
    have hbad := bad_card_lt_block_half hN hbadRatio
      (pureGlobalA7Block_card_lower N parity)
    have hpartition := Finset.card_filter_add_card_filter_not
      (s := (Finset.univ :
        Finset ↥(pureA7OppositeParityBlock N parity)))
      (p := fun point => Squarefree (pivot.1 * point.1 + 1))
    have hunivCard :
        (Finset.univ : Finset ↥(pureA7OppositeParityBlock N parity)).card =
          (pureA7OppositeParityBlock N parity).card := by
      simp
    rw [hunivCard] at hpartition
    have hgood :
        (pureA7OppositeParityBlock N parity).card / 2 <
          (Finset.univ.filter fun point :
            ↥(pureA7OppositeParityBlock N parity) =>
              Squarefree (pivot.1 * point.1 + 1)).card := by
      simpa using (show
        (Finset.univ : Finset ↥(pureA7OppositeParityBlock N parity)).card / 2 <
          (Finset.univ.filter fun point :
            ↥(pureA7OppositeParityBlock N parity) =>
              Squarefree (pivot.1 * point.1 + 1)).card by omega)
    simpa [pureOppositeSquarefreeEdge] using hgood
  right := by
    intro pivot
    have hbadRatio := pureGlobalA18_bad_ratio_le hN parity pivot
    have hbad := bad_card_lt_block_half hN hbadRatio
      (pureGlobalA18Block_card_lower N parity)
    have hpartition := Finset.card_filter_add_card_filter_not
      (s := (Finset.univ :
        Finset ↥(pureA18ParityBlock N parity)))
      (p := fun point => Squarefree (point.1 * pivot.1 + 1))
    have hunivCard :
        (Finset.univ : Finset ↥(pureA18ParityBlock N parity)).card =
          (pureA18ParityBlock N parity).card := by
      simp
    rw [hunivCard] at hpartition
    have hgood :
        (pureA18ParityBlock N parity).card / 2 <
          (Finset.univ.filter fun point :
            ↥(pureA18ParityBlock N parity) =>
              Squarefree (point.1 * pivot.1 + 1)).card := by
      simpa using (show
        (Finset.univ : Finset ↥(pureA18ParityBlock N parity)).card / 2 <
          (Finset.univ.filter fun point :
            ↥(pureA18ParityBlock N parity) =>
              Squarefree (point.1 * pivot.1 + 1)).card by omega)
    simpa [pureOppositeSquarefreeEdge] using hgood

/-- The pure opposite-base matching is now unconditional for the complete
tail `N ≥ 5,000,000`. -/
theorem pureGlobalOppositeBaseMatching
    {N : ℕ} (hN : 5_000_000 ≤ N) :
    PureOppositeBaseMatching N :=
  pureOppositeBaseMatching_of_degree
    (pureGlobalParityDegreeCertificate hN false)
    (pureGlobalParityDegreeCertificate hN true)

#print axioms pureGlobalBadEnvelope_le_strictHalfTarget
#print axioms pureGlobalParityDegreeCertificate
#print axioms pureGlobalOppositeBaseMatching

end Erdos848
