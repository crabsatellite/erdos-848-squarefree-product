import Erdos848.TailPureFiveMillionFinite

namespace Erdos848

/-!
# Uniform small-prime payment from the five-million cut

The prime set is fixed: the thirteen odd primes other than five through 47.
Only the terminal residue-class error depends on `N`, and after division by
`N` it is maximal at `N = 5,000,000`.
-/

def pureGlobalSmallEnvelope : ℚ :=
  pureFiveMillionSmallBadUpper / 5_000_000

theorem pureGlobalSmallBadPoints_card_le_sum
    (N : ℕ) (points : Finset ℕ) (pivot residue : ℕ)
    (hRange : points ⊆ Finset.range (N + 1))
    (hResidue : ∀ point ∈ points, point ≡ residue [MOD 50]) :
    (pureFiveMillionSmallBadPoints points pivot).card ≤
      ∑ p ∈ pureFiveMillionSmallPrimeFinset,
        ((N + 1) / (50 * p ^ 2) + 1) := by
  classical
  let event : ℕ → Finset ℕ := fun p =>
    (Finset.range (N + 1)).filter fun point =>
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
        ((N + 1) / (50 * p ^ 2) + 1) := by
      apply Finset.sum_le_sum
      intro p hp
      have hdata := pureFiveMillionSmallPrime_data hp
      exact pure_off_count_modEq50_le
        (N + 1) p pivot residue hdata.1 hdata.2.1 hdata.2.2

private theorem pureGlobalSmall_sum_cast_le
    (N : ℕ) :
    ((∑ p ∈ pureFiveMillionSmallPrimeFinset,
        ((N + 1) / (50 * p ^ 2) + 1) : ℕ) : ℚ) ≤
      ((N : ℚ) / 50 + 1) * pureFiveMillionSmallDensity + 13 := by
  have hterm : ∀ p ∈ pureFiveMillionSmallPrimeFinset,
      ((((N + 1) / (50 * p ^ 2) + 1 : ℕ) : ℚ)) ≤
        ((N : ℚ) / 50 + 1) * (1 / (p : ℚ) ^ 2) + 1 := by
    intro p hp
    have hpPrime := (pureFiveMillionSmallPrime_data hp).1
    have hcast := Nat.cast_div_le (α := ℚ)
      (m := N + 1) (n := 50 * p ^ 2)
    push_cast at hcast
    have hcast' :
        (((N + 1) / (50 * p ^ 2) : ℕ) : ℚ) ≤
          ((N + 1 : ℕ) : ℚ) / (50 * (p : ℚ) ^ 2) := by
      convert hcast using 1 <;> push_cast <;> ring
    calc
      ((((N + 1) / (50 * p ^ 2) + 1 : ℕ) : ℚ)) =
          (((N + 1) / (50 * p ^ 2) : ℕ) : ℚ) + 1 := by
            push_cast
            rfl
      _ ≤ ((N + 1 : ℕ) : ℚ) / (50 * (p : ℚ) ^ 2) + 1 := by
            simpa [add_comm] using add_le_add_right hcast' 1
      _ ≤ ((N : ℚ) / 50 + 1) * (1 / (p : ℚ) ^ 2) + 1 := by
            rw [div_eq_mul_inv, div_eq_mul_inv]
            have hN : (((N + 1 : ℕ) : ℚ) / 50) ≤ (N : ℚ) / 50 + 1 := by
              push_cast
              linarith
            calc
              ((N + 1 : ℕ) : ℚ) * (50 * (p : ℚ) ^ 2)⁻¹ + 1 =
                  (((N + 1 : ℕ) : ℚ) / 50) * ((p : ℚ) ^ 2)⁻¹ + 1 := by
                    field_simp
              _ ≤ ((N : ℚ) / 50 + 1) * ((p : ℚ) ^ 2)⁻¹ + 1 := by
                    gcongr
              _ = ((N : ℚ) / 50 + 1) * (1 * ((p : ℚ) ^ 2)⁻¹) + 1 := by
                    ring
  have hsum := Finset.sum_le_sum fun p hp => hterm p hp
  calc
    ((∑ p ∈ pureFiveMillionSmallPrimeFinset,
        ((N + 1) / (50 * p ^ 2) + 1) : ℕ) : ℚ) =
        ∑ p ∈ pureFiveMillionSmallPrimeFinset,
          ((((N + 1) / (50 * p ^ 2) + 1 : ℕ) : ℚ)) := by
            push_cast
            rfl
    _ ≤ ∑ p ∈ pureFiveMillionSmallPrimeFinset,
        (((N : ℚ) / 50 + 1) * (1 / (p : ℚ) ^ 2) + 1) := hsum
    _ = ((N : ℚ) / 50 + 1) * pureFiveMillionSmallDensity + 13 := by
      simp [pureFiveMillionSmallPrimeFinset, pureSmallPrimes47,
        pureFiveMillionSmallDensity, purePrimeSquareReciprocals47]
      ring

theorem pureGlobalSmallBadPoints_card_div_le_envelope
    (N : ℕ) (points : Finset ℕ) (pivot residue : ℕ)
    (hN : 5_000_000 ≤ N)
    (hRange : points ⊆ Finset.range (N + 1))
    (hResidue : ∀ point ∈ points, point ≡ residue [MOD 50]) :
    ((pureFiveMillionSmallBadPoints points pivot).card : ℚ) / N ≤
      pureGlobalSmallEnvelope := by
  have hNpos : (0 : ℚ) < N := by positivity
  have hcardNat := pureGlobalSmallBadPoints_card_le_sum
    N points pivot residue hRange hResidue
  have hcardQ :
      ((pureFiveMillionSmallBadPoints points pivot).card : ℚ) ≤
        ((N : ℚ) / 50 + 1) * pureFiveMillionSmallDensity + 13 := by
    have hcardCast :
        ((pureFiveMillionSmallBadPoints points pivot).card : ℚ) ≤
          ((∑ p ∈ pureFiveMillionSmallPrimeFinset,
            ((N + 1) / (50 * p ^ 2) + 1) : ℕ) : ℚ) := by
      exact_mod_cast hcardNat
    exact hcardCast.trans (pureGlobalSmall_sum_cast_le N)
  have hendpoint :
      (((N : ℚ) / 50 + 1) * pureFiveMillionSmallDensity + 13) / N ≤
        pureFiveMillionSmallBadUpper / 5_000_000 := by
    have hNQ : (5_000_000 : ℚ) ≤ N := by exact_mod_cast hN
    have hdensityNonneg : (0 : ℚ) ≤ pureFiveMillionSmallDensity := by
      norm_num [pureFiveMillionSmallDensity, purePrimeSquareReciprocals47,
        pureSmallPrimes47]
    have hnumerator :
        (0 : ℚ) ≤ pureFiveMillionSmallDensity + 13 := by linarith
    have hdecr :
        (pureFiveMillionSmallDensity + 13) / (N : ℚ) ≤
          (pureFiveMillionSmallDensity + 13) / 5_000_000 := by
      exact div_le_div_of_nonneg_left hnumerator (by norm_num) hNQ
    calc
      (((N : ℚ) / 50 + 1) * pureFiveMillionSmallDensity + 13) / N =
          pureFiveMillionSmallDensity / 50 +
            (pureFiveMillionSmallDensity + 13) / N := by
        field_simp [ne_of_gt hNpos]
        ring
      _ ≤ pureFiveMillionSmallDensity / 50 +
          (pureFiveMillionSmallDensity + 13) / 5_000_000 := by
        gcongr
      _ = pureFiveMillionSmallBadUpper / 5_000_000 := by
        unfold pureFiveMillionSmallBadUpper
        rw [pureSmallPrimes47_length]
        ring
  exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hendpoint

#print axioms pureGlobalSmallBadPoints_card_div_le_envelope

end Erdos848
