import Erdos848.HallPartition
import Erdos848.TailHallSieveBridge
import Erdos848.TailCRTCounting
import Erdos848.TailFiveMillionFiniteDensity

namespace Erdos848

/-!
## Periodic finite-threshold bridge on the two base progressions

This file turns the uniform `495 / 1764` finite-density theorem into a bound
for the literal threshold subset of `hallBasePart`.  The only producer data
left in `FiveMillionBasePeriodicThresholdCertificate` are the two pointwise
CRT classifications; all residue cardinalities, progression endpoints and
prefix excesses are proved here.
-/

def fiveMillionPeriodicTriple (x : ℕ) : FiveMillionPeriodicResidue :=
  (⟨x % 4, Nat.mod_lt x (by norm_num)⟩,
    (⟨x % 9, Nat.mod_lt x (by norm_num)⟩,
      ⟨x % 49, Nat.mod_lt x (by norm_num)⟩))

lemma fiveMillionPeriodicTriple_injective_in_period
    {x y : ℕ} (hx : x < 1764) (hy : y < 1764)
    (hxy : fiveMillionPeriodicTriple x = fiveMillionPeriodicTriple y) :
    x = y := by
  simp only [fiveMillionPeriodicTriple, Prod.mk.injEq, Fin.mk.injEq] at hxy
  rcases hxy with ⟨h4, h9, h49⟩
  omega

lemma fiveMillionPeriodicTriple_mod_period (x : ℕ) :
    fiveMillionPeriodicTriple (x % 1764) = fiveMillionPeriodicTriple x := by
  simp only [fiveMillionPeriodicTriple, Prod.mk.injEq, Fin.mk.injEq]
  omega

def fiveMillionPeriodicNatResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) : Finset ℕ :=
  (Finset.range 1764).filter fun residue =>
    fiveMillionPeriodicTriple residue ∈
      fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
        modFortyNineRoot

lemma fiveMillionPeriodicNatResidues_subset_range
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    fiveMillionPeriodicNatResidues fullModFour modNineEvent
      modFortyNineRoot ⊆ Finset.range 1764 :=
  Finset.filter_subset _ _

/-- The natural residue representatives inherit the abstract density bound
without trusting a generated enumeration of the 1764 residues. -/
theorem fiveMillionPeriodicNatResidues_card_le_495
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    (fiveMillionPeriodicNatResidues fullModFour modNineEvent
      modFortyNineRoot).card ≤ 495 := by
  let residues := fiveMillionPeriodicNatResidues fullModFour modNineEvent
    modFortyNineRoot
  let triples := fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
    modFortyNineRoot
  have hmap : Set.MapsTo fiveMillionPeriodicTriple
      (residues : Set ℕ) triples := by
    intro x hx
    exact (Finset.mem_filter.mp hx).2
  have hinj : Set.InjOn fiveMillionPeriodicTriple (residues : Set ℕ) := by
    intro x hx y hy hxy
    exact fiveMillionPeriodicTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hx).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hy).1) hxy
  have hcard : residues.card ≤ triples.card :=
    Finset.card_le_card_of_injOn fiveMillionPeriodicTriple hmap hinj
  have htriples : triples.card =
      fiveMillionPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot := by
    simpa [triples] using fiveMillionPeriodicFiniteResidues_card
      fullModFour modNineEvent modFortyNineRoot
  rw [htriples] at hcard
  exact hcard.trans (fiveMillionPeriodicFiniteCount_le_495
    fullModFour modNineEvent modFortyNineRoot)

/-- A periodic set with at most 495 selected residues has the exact density
and worst-prefix bound used by the controlling row. -/
theorem periodicResidueSet_count_le_495
    (residues : Finset ℕ) (length : ℕ)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 495) :
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : ℚ) ≤
      (55 / 196 : ℚ) * length + 69795 / 196 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card ≤ 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) ≤
        495 * (1764 - 495) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    nlinarith
  have hmainMono : residues.card * length ≤ 495 * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card ≤
        495 * length + 495 * (1764 - 495) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  norm_num at hscaled'
  have hscaledQ :
      (1764 : ℚ) * (((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card : ℚ) ≤
        495 * (length : ℚ) + 495 * 1269 := by
    exact_mod_cast hscaled'
  norm_num at hscaledQ ⊢
  linarith

/-- Inject one literal mod-25 progression into its quotient progression and
apply the exact 1764-period prefix bound. -/
theorem baseProgressionSubset_card_le_periodic
    {N : ℕ} {S residues : Finset ℕ} {baseResidue : ℕ}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 495) :
    (S.card : ℚ) ≤
      (55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) + 69795 / 196 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun x : ℕ => x / 25) (S : Set ℕ) target := by
    intro x hx
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue x hx⟩
    change x / 25 < N / 25 + 1
    have hxN := (Finset.mem_Icc.mp (hSBounds x hx)).2
    have hdiv : x / 25 ≤ N / 25 := Nat.div_le_div_right hxN
    omega
  have hinj : Set.InjOn (fun x : ℕ => x / 25) (S : Set ℕ) := by
    intro x hx y hy hquot
    have hxmod := hSMod x hx
    have hymod := hSMod y hy
    change x / 25 = y / 25 at hquot
    calc
      x = x % 25 + 25 * (x / 25) := (Nat.mod_add_div x 25).symm
      _ = y % 25 + 25 * (y / 25) := by rw [hxmod, hymod, hquot]
      _ = y := Nat.mod_add_div y 25
  have hSCard : S.card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun x : ℕ => x / 25) hmap hinj
  have htarget := periodicResidueSet_count_le_495
    residues (N / 25 + 1) hresidues hcard
  have hSCardQ : (S.card : ℚ) ≤ (target.card : ℚ) := by
    exact_mod_cast hSCard
  have hdiv : ((N / 25 : ℕ) : ℚ) ≤ (N : ℚ) / 25 := Nat.cast_div_le
  calc
    (S.card : ℚ) ≤ (target.card : ℚ) := hSCardQ
    _ ≤ (55 / 196 : ℚ) * (N / 25 + 1 : ℕ) + 69795 / 196 := by
      simpa [target] using htarget
    _ ≤ (55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) + 69795 / 196 := by
      push_cast
      gcongr

/-- Pointwise CRT data for the two base progressions.  This is deliberately
the remaining semantic obligation: a producer must classify each *actual*
threshold point, not merely supply the final density constant. -/
noncomputable def fiveMillionFiniteEventCount
    (pivots : Finset ℕ) (point : ℕ) : ℕ := by
  classical
  exact (pivots.filter fun pivot =>
    finiteSquarePrimeEvent 7 pivot point).card

structure FiveMillionBasePeriodicThresholdCertificate
    (N : ℕ) (B pivots : Finset ℕ) : Type where
  sevenFullModFour : FiveMillionModFour
  sevenModNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm
  sevenModFortyNineRoot :
    FiveMillionFiniteForm → FiveMillionModFortyNine
  eighteenFullModFour : FiveMillionModFour
  eighteenModNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm
  eighteenModFortyNineRoot :
    FiveMillionFiniteForm → FiveMillionModFortyNine
  sevenClassifies : ∀ point,
    point ∈ hallBasePart N B → point ∈ OriginalA7 N →
    3 ≤ fiveMillionFiniteEventCount pivots point →
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionPeriodicFiniteResidues sevenFullModFour
        sevenModNineEvent sevenModFortyNineRoot
  eighteenClassifies : ∀ point,
    point ∈ hallBasePart N B → point ∈ OriginalA18 N →
    3 ≤ fiveMillionFiniteEventCount pivots point →
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionPeriodicFiniteResidues eighteenFullModFour
        eighteenModNineEvent eighteenModFortyNineRoot

/-- Complete finite-payment theorem for the controlling periodic row.  Once
the two pointwise classifications are supplied, no numerical or endpoint
premise remains. -/
theorem fiveMillionBasePeriodicThreshold_ratio_le_at_lower
    {lower N : ℕ} {B pivots : Finset ℕ}
    (hLowerPositive : 0 < lower)
    (hLower : lower ≤ N)
    (certificate : FiveMillionBasePeriodicThresholdCertificate N B pivots) :
    ((((hallBasePart N B).filter fun point =>
        3 ≤ fiveMillionFiniteEventCount pivots point).card : ℚ) / N) ≤
      2 * (55 / 196 : ℚ) / 25 +
        2 * ((55 / 196 : ℚ) + 69795 / 196) / lower := by
  let threshold := (hallBasePart N B).filter fun point =>
    3 ≤ fiveMillionFiniteEventCount pivots point
  let seven := threshold ∩ OriginalA7 N
  let eighteen := threshold ∩ OriginalA18 N
  let sevenResidues := fiveMillionPeriodicNatResidues
    certificate.sevenFullModFour certificate.sevenModNineEvent
      certificate.sevenModFortyNineRoot
  let eighteenResidues := fiveMillionPeriodicNatResidues
    certificate.eighteenFullModFour certificate.eighteenModNineEvent
      certificate.eighteenModFortyNineRoot
  have hthresholdSubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_inter.mp
      (Finset.mem_filter.mp hpoint).1).2
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : threshold.card ≤ seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenBound : (seven.card : ℚ) ≤
      (55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) + 69795 / 196 := by
    apply baseProgressionSubset_card_le_periodic
      (residues := sevenResidues) (baseResidue := 7)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
      rw [fiveMillionPeriodicTriple_mod_period]
      exact certificate.sevenClassifies point
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_inter.mp hpoint).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact fiveMillionPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionPeriodicNatResidues_card_le_495 _ _ _
  have heightteenBound : (eighteen.card : ℚ) ≤
      (55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) + 69795 / 196 := by
    apply baseProgressionSubset_card_le_periodic
      (residues := eighteenResidues) (baseResidue := 18)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
      rw [fiveMillionPeriodicTriple_mod_period]
      exact certificate.eighteenClassifies point
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_inter.mp hpoint).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact fiveMillionPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionPeriodicNatResidues_card_le_495 _ _ _
  have hthresholdQ : (threshold.card : ℚ) ≤
      (seven.card : ℚ) + (eighteen.card : ℚ) := by
    exact_mod_cast hthresholdCard
  have hcount : (threshold.card : ℚ) ≤
      2 * ((55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) + 69795 / 196) := by
    linarith
  have hNPositiveNat : 0 < N := by omega
  have hNPositive : (0 : ℚ) < N := by exact_mod_cast hNPositiveNat
  have hLowerQ : (lower : ℚ) ≤ N := by exact_mod_cast hLower
  have hLowerPositiveQ : (0 : ℚ) < lower := by
    exact_mod_cast hLowerPositive
  have hprefixNonnegative :
      (0 : ℚ) ≤ 2 * ((55 / 196 : ℚ) + 69795 / 196) := by norm_num
  have hprefixDiv :
      2 * ((55 / 196 : ℚ) + 69795 / 196) / N ≤
        2 * ((55 / 196 : ℚ) + 69795 / 196) / lower := by
    exact div_le_div_of_nonneg_left hprefixNonnegative
      hLowerPositiveQ hLowerQ
  change (threshold.card : ℚ) / N ≤ _
  calc
    (threshold.card : ℚ) / N ≤
        (2 * ((55 / 196 : ℚ) * ((N : ℚ) / 25 + 1) +
          69795 / 196)) / N :=
      div_le_div_of_nonneg_right (by simpa using hcount) hNPositive.le
    _ = 2 * (55 / 196 : ℚ) / 25 +
        2 * ((55 / 196 : ℚ) + 69795 / 196) / N := by
      field_simp
      ring
    _ ≤ 2 * (55 / 196 : ℚ) / 25 +
        2 * ((55 / 196 : ℚ) + 69795 / 196) / lower := by
      exact add_le_add le_rfl hprefixDiv

theorem fiveMillionBasePeriodicThreshold_ratio_le
    {N : ℕ} {B pivots : Finset ℕ}
    (hLower : 5_000_000 ≤ N)
    (certificate : FiveMillionBasePeriodicThresholdCertificate N B pivots) :
    ((((hallBasePart N B).filter fun point =>
        3 ≤ fiveMillionFiniteEventCount pivots point).card : ℚ) / N) ≤
      2 * (55 / 196 : ℚ) / 25 +
        2 * ((55 / 196 : ℚ) + 69795 / 196) / 5_000_000 :=
  fiveMillionBasePeriodicThreshold_ratio_le_at_lower
    (by norm_num) hLower certificate

#print axioms fiveMillionBasePeriodicThreshold_ratio_le_at_lower
#print axioms fiveMillionBasePeriodicThreshold_ratio_le

end Erdos848
