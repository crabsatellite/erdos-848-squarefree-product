import Erdos848.TailFiveMillionOneCellFiniteDensity

namespace Erdos848

/-!
# Cardinality-parametric periodic bridge

This is the common endpoint argument for the four one-cell rows.  A producer
supplies the two literal residue sets and pointwise CRT classifications.  The
kernel derives the exact density and worst-prefix term from their cardinality.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem periodicResidueSet_count_le_cap
    (cap : Nat) (residues : Finset Nat) (length : Nat)
    (hcap : cap ≤ 882)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ cap) :
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : Rat) ≤
      (cap : Rat) / 1764 * length +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card ≤ 1764 := by
    simpa using Finset.card_le_card hresidues
  have hresidueHalf : residues.card ≤ 882 := hcard.trans hcap
  have hprefixMono :
      residues.card * (1764 - residues.card) ≤
        cap * (1764 - cap) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    have hcapPeriod : cap ≤ 1764 := hcap.trans (by norm_num)
    have hcapSub : 1764 - cap + cap = 1764 := Nat.sub_add_cancel hcapPeriod
    nlinarith
  have hmainMono : residues.card * length ≤ cap * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card ≤
        cap * length + cap * (1764 - cap) :=
    hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card : Rat) ≤
        (cap : Rat) * length + ((cap * (1764 - cap) : Nat) : Rat) := by
    exact_mod_cast hscaled'
  linarith

theorem baseProgressionSubset_card_le_periodic_cap
    {N cap : Nat} {S residues : Finset Nat} {baseResidue : Nat}
    (hcap : cap ≤ 882)
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ cap) :
    (S.card : Rat) ≤
      (cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun x : Nat => x / 25) (S : Set Nat) target := by
    intro x hx
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue x hx⟩
    change x / 25 < N / 25 + 1
    have hxN := (Finset.mem_Icc.mp (hSBounds x hx)).2
    have hdiv : x / 25 ≤ N / 25 := Nat.div_le_div_right hxN
    omega
  have hinj : Set.InjOn (fun x : Nat => x / 25) (S : Set Nat) := by
    intro x hx y hy hquot
    have hxmod := hSMod x hx
    have hymod := hSMod y hy
    change x / 25 = y / 25 at hquot
    calc
      x = x % 25 + 25 * (x / 25) := (Nat.mod_add_div x 25).symm
      _ = y % 25 + 25 * (y / 25) := by rw [hxmod, hymod, hquot]
      _ = y := Nat.mod_add_div y 25
  have hSCard : S.card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun x : Nat => x / 25) hmap hinj
  have htarget := periodicResidueSet_count_le_cap
    cap residues (N / 25 + 1) hcap hresidues hcard
  have hSCardQ : (S.card : Rat) ≤ (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : ((N / 25 : Nat) : Rat) ≤ (N : Rat) / 25 := Nat.cast_div_le
  calc
    (S.card : Rat) ≤ (target.card : Rat) := hSCardQ
    _ ≤ (cap : Rat) / 1764 * (((N / 25 : Nat) : Rat) + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
      simpa [target] using htarget
    _ ≤ (cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
      gcongr

structure FiveMillionCardPeriodicThresholdCertificate
    (N : Nat) (B pivots : Finset Nat) (threshold cap : Nat) : Type where
  capAtMostHalf : cap ≤ 882
  sevenResidues : Finset Nat
  sevenResiduesSubset : sevenResidues ⊆ Finset.range 1764
  sevenResiduesCard : sevenResidues.card ≤ cap
  eighteenResidues : Finset Nat
  eighteenResiduesSubset : eighteenResidues ⊆ Finset.range 1764
  eighteenResiduesCard : eighteenResidues.card ≤ cap
  sevenClassifies : ∀ point,
    point ∈ hallBasePart N B → point ∈ OriginalA7 N →
    threshold ≤ fiveMillionFiniteEventCount pivots point →
    (point / 25) % 1764 ∈ sevenResidues
  eighteenClassifies : ∀ point,
    point ∈ hallBasePart N B → point ∈ OriginalA18 N →
    threshold ≤ fiveMillionFiniteEventCount pivots point →
    (point / 25) % 1764 ∈ eighteenResidues

theorem fiveMillionCardPeriodicThreshold_ratio_le
    {N threshold cap : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (certificate : FiveMillionCardPeriodicThresholdCertificate
      N B pivots threshold cap) :
    ((((hallBasePart N B).filter fun point =>
        threshold ≤ fiveMillionFiniteEventCount pivots point).card : Rat) / N) ≤
      2 * ((cap : Rat) / 1764) / 25 +
        2 * ((cap : Rat) / 1764 +
          ((cap * (1764 - cap) : Nat) : Rat) / 1764) / 5_000_000 := by
  let thresholdSet := (hallBasePart N B).filter fun point =>
    threshold ≤ fiveMillionFiniteEventCount pivots point
  let seven := thresholdSet ∩ OriginalA7 N
  let eighteen := thresholdSet ∩ OriginalA18 N
  have hthresholdSubset : thresholdSet ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_inter.mp (Finset.mem_filter.mp hpoint).1).2
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : thresholdSet.card ≤ seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenBound : (seven.card : Rat) ≤
      (cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
    apply baseProgressionSubset_card_le_periodic_cap
      certificate.capAtMostHalf
      (residues := certificate.sevenResidues) (baseResidue := 7)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      exact certificate.sevenClassifies point
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_inter.mp hpoint).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact certificate.sevenResiduesSubset
    · exact certificate.sevenResiduesCard
  have heightteenBound : (eighteen.card : Rat) ≤
      (cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764 := by
    apply baseProgressionSubset_card_le_periodic_cap
      certificate.capAtMostHalf
      (residues := certificate.eighteenResidues) (baseResidue := 18)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      exact certificate.eighteenClassifies point
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_inter.mp hpoint).2
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).2
    · exact certificate.eighteenResiduesSubset
    · exact certificate.eighteenResiduesCard
  have hthresholdQ : (thresholdSet.card : Rat) ≤
      (seven.card : Rat) + (eighteen.card : Rat) := by
    exact_mod_cast hthresholdCard
  have hcount : (thresholdSet.card : Rat) ≤
      2 * ((cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764) := by
    linarith
  have hNPositiveNat : 0 < N := by omega
  have hNPositive : (0 : Rat) < N := by exact_mod_cast hNPositiveNat
  have hLowerQ : (5_000_000 : Rat) ≤ N := by exact_mod_cast hLower
  have hprefixNonnegative :
      (0 : Rat) ≤ 2 * ((cap : Rat) / 1764 +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764) := by positivity
  have hprefixDiv :
      2 * ((cap : Rat) / 1764 +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764) / N ≤
      2 * ((cap : Rat) / 1764 +
        ((cap * (1764 - cap) : Nat) : Rat) / 1764) / 5_000_000 :=
    div_le_div_of_nonneg_left hprefixNonnegative (by norm_num) hLowerQ
  change (thresholdSet.card : Rat) / N ≤ _
  calc
    (thresholdSet.card : Rat) / N ≤
        (2 * ((cap : Rat) / 1764 * ((N : Rat) / 25 + 1) +
          ((cap * (1764 - cap) : Nat) : Rat) / 1764)) / N :=
      div_le_div_of_nonneg_right hcount hNPositive.le
    _ = 2 * ((cap : Rat) / 1764) / 25 +
        2 * ((cap : Rat) / 1764 +
          ((cap * (1764 - cap) : Nat) : Rat) / 1764) / N := by
      field_simp
      ring
    _ ≤ 2 * ((cap : Rat) / 1764) / 25 +
        2 * ((cap : Rat) / 1764 +
          ((cap * (1764 - cap) : Nat) : Rat) / 1764) / 5_000_000 :=
      add_le_add le_rfl hprefixDiv

#print axioms periodicResidueSet_count_le_cap
#print axioms fiveMillionCardPeriodicThreshold_ratio_le

end Erdos848
