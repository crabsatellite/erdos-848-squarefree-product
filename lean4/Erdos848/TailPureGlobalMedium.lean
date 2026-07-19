import Erdos848.TailPrimeTerminalSieve
import Erdos848.TailPureFiveMillionMedium

namespace Erdos848

/-!
# Uniform medium-prime payment from the five-million cut

For every `N ≥ 5,000,000` the medium window is the dynamic interval
`47 < p ≤ N / 26`.  The reciprocal-square contribution is bounded by the
fixed tail certificate, while `TailPrimeTerminalSieve` pays the terminal
class uniformly.  No interval of values of `N` is enumerated.
-/

set_option maxRecDepth 100000

def pureGlobalMediumPrimes (N : ℕ) : Finset ℕ :=
  tailIntermediatePrimes 47 (N / 26)

noncomputable def pureGlobalMediumBadPoints
    (N : ℕ) (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  points.filter fun point =>
    ∃ p ∈ pureGlobalMediumPrimes N,
      p ^ 2 ∣ pivot * point + 1

def pureGlobalMediumEnvelope : ℚ :=
  3_887 / (25 * 1_000_000) + 59 / 10_000

lemma pureGlobalMediumPrime_data
    {N p : ℕ} (hp : p ∈ pureGlobalMediumPrimes N) :
    Nat.Prime p ∧ 47 < p ∧ p ≤ N / 26 :=
  mem_tailIntermediatePrimes.mp (by
    simpa only [pureGlobalMediumPrimes] using hp)

lemma pureGlobalMediumPrime_ne_five
    {N p : ℕ} (hp : p ∈ pureGlobalMediumPrimes N) : p ≠ 5 := by
  have hpLarge := (pureGlobalMediumPrime_data hp).2.1
  omega

theorem pureGlobalMediumPrimes_reciprocal_sum_le (N : ℕ) :
    (∑ p ∈ pureGlobalMediumPrimes N, reciprocalSquareQ p) ≤
      (3_887 : ℚ) / 1_000_000 := by
  simpa only [primeSquareTail47Envelope] using
    (finitePrimeSquareTail47_lt (pureGlobalMediumPrimes N)
      (fun _ hp => (pureGlobalMediumPrime_data hp).1)
      (fun _ hp => (pureGlobalMediumPrime_data hp).2.1)).le

theorem pureGlobalMediumPrimes_card_div_le
    {N : ℕ} (hN : 5_000_000 ≤ N) :
    ((pureGlobalMediumPrimes N).card : ℚ) / N ≤ 59 / 10_000 := by
  have hsubset : pureGlobalMediumPrimes N ⊆ Nat.primesLE (N / 26) := by
    intro p hp
    have hdata := pureGlobalMediumPrime_data hp
    exact Nat.mem_primesLE.mpr ⟨hdata.2.2, hdata.1⟩
  have hcardNat :
      (pureGlobalMediumPrimes N).card ≤ Nat.primeCounting (N / 26) := by
    calc
      (pureGlobalMediumPrimes N).card ≤ (Nat.primesLE (N / 26)).card :=
        Finset.card_le_card hsubset
      _ = Nat.primeCounting (N / 26) :=
        Nat.primesLE_card_eq_primeCounting (N / 26)
  have hNpos : (0 : ℚ) < N := by positivity
  have hcardQ : ((pureGlobalMediumPrimes N).card : ℚ) ≤
      Nat.primeCounting (N / 26) := by exact_mod_cast hcardNat
  exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans
    (primeTerminal_div_le hN)

theorem pureGlobalBaseResidueMediumUnion_ratio_le
    {N pivot residue : ℕ} (hN : 5_000_000 ≤ N) :
    ((baseResiduePrimeSquareUnion N pivot residue
      (pureGlobalMediumPrimes N)).card : ℚ) / N ≤
        pureGlobalMediumEnvelope := by
  have hNpos : 0 < N := by omega
  have hraw := baseResiduePrimeSquareUnion_ratio_le
    (N := N) (pivot := pivot) (residue := residue) hNpos
    (pureGlobalMediumPrimes N)
    (fun _ hp => (pureGlobalMediumPrime_data hp).1)
    (fun _ hp => pureGlobalMediumPrime_ne_five hp)
  have hrecip := pureGlobalMediumPrimes_reciprocal_sum_le N
  have hterminal := pureGlobalMediumPrimes_card_div_le hN
  unfold pureGlobalMediumEnvelope
  nlinarith

/-- Literal medium-prime payment for any subset of one sharp base
progression, uniformly for all `N ≥ 5,000,000`. -/
theorem pureGlobalMediumBadPoints_card_div_le_envelope
    (N : ℕ) (points : Finset ℕ) (pivot residue : ℕ)
    (hN : 5_000_000 ≤ N)
    (hBase : points ⊆ baseResidueClass N residue) :
    ((pureGlobalMediumBadPoints N points pivot).card : ℚ) / N ≤
      pureGlobalMediumEnvelope := by
  classical
  have hsubset :
      pureGlobalMediumBadPoints N points pivot ⊆
        baseResiduePrimeSquareUnion N pivot residue
          (pureGlobalMediumPrimes N) := by
    intro point hpoint
    rw [pureGlobalMediumBadPoints] at hpoint
    have hparts := Finset.mem_filter.mp hpoint
    obtain ⟨p, hp, hpdiv⟩ := hparts.2
    apply Finset.mem_biUnion.mpr
    exact ⟨p, hp, Finset.mem_filter.mpr ⟨hBase hparts.1, hpdiv⟩⟩
  have hNpos : (0 : ℚ) < N := by positivity
  have hcardQ :
      ((pureGlobalMediumBadPoints N points pivot).card : ℚ) ≤
        ((baseResiduePrimeSquareUnion N pivot residue
          (pureGlobalMediumPrimes N)).card : ℚ) := by
    exact_mod_cast Finset.card_le_card hsubset
  exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans
    (pureGlobalBaseResidueMediumUnion_ratio_le hN)

#print axioms pureGlobalMediumPrimes_card_div_le
#print axioms pureGlobalBaseResidueMediumUnion_ratio_le
#print axioms pureGlobalMediumBadPoints_card_div_le_envelope

end Erdos848
