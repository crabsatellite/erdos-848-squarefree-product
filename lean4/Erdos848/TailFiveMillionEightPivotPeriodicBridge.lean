import Erdos848.TailFiveMillionPeriodicBridge
import Erdos848.TailFiveMillionEightPivotFiniteDensity

namespace Erdos848

/-!
# Literal periodic bridge for the eight-pivot matching rows

This is the threshold-four analogue of `TailFiveMillionPeriodicBridge`.
The only semantic inputs are the two pointwise CRT classifiers and the
capacity-two bounds on their mod-49 root fibres.
-/

def fiveMillionEightPeriodicNatResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm) : Finset Nat :=
  (Finset.range 1764).filter fun residue =>
    fiveMillionPeriodicTriple residue ∈
      fiveMillionEightPeriodicFiniteResidues fullModFour modNineEvent
        modFortyNineEvent

lemma fiveMillionEightPeriodicNatResidues_subset_range
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm) :
    fiveMillionEightPeriodicNatResidues fullModFour modNineEvent
      modFortyNineEvent ⊆ Finset.range 1764 :=
  Finset.filter_subset _ _

theorem fiveMillionEightPeriodicNatResidues_card_le_441
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm)
    (hcapacity : ∀ r,
      (modFortyNineEvent r).card <= 2) :
    (fiveMillionEightPeriodicNatResidues fullModFour modNineEvent
      modFortyNineEvent).card <= 441 := by
  let residues := fiveMillionEightPeriodicNatResidues fullModFour
    modNineEvent modFortyNineEvent
  let triples := fiveMillionEightPeriodicFiniteResidues fullModFour
    modNineEvent modFortyNineEvent
  have hmap : Set.MapsTo fiveMillionPeriodicTriple
      (residues : Set Nat) triples := by
    intro x hx
    exact (Finset.mem_filter.mp hx).2
  have hinj : Set.InjOn fiveMillionPeriodicTriple (residues : Set Nat) := by
    intro x hx y hy hxy
    exact fiveMillionPeriodicTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hx).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hy).1) hxy
  have hcard : residues.card <= triples.card :=
    Finset.card_le_card_of_injOn fiveMillionPeriodicTriple hmap hinj
  have htriples : triples.card =
      fiveMillionEightPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineEvent := by
    simpa [triples] using fiveMillionEightPeriodicFiniteResidues_card
      fullModFour modNineEvent modFortyNineEvent
  rw [htriples] at hcard
  exact hcard.trans (fiveMillionEightPeriodicFiniteCount_le_441
    fullModFour modNineEvent modFortyNineEvent hcapacity)

theorem periodicResidueSet_count_le_441
    (residues : Finset Nat) (length : Nat)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= 441) :
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : Rat) <=
      (1 / 4 : Rat) * length + 1323 / 4 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card <= 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) <=
        441 * (1764 - 441) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    nlinarith
  have hmainMono : residues.card * length <= 441 * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card <=
        441 * length + 441 * (1764 - 441) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card : Rat) <=
        441 * (length : Rat) + 441 * 1323 := by
    exact_mod_cast hscaled'
  norm_num at hscaledQ ⊢
  linarith

theorem baseProgressionSubset_card_le_periodic441
    {N : Nat} {S residues : Finset Nat} {baseResidue : Nat}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= 441) :
    (S.card : Rat) <=
      (1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun x : Nat => x / 25) (S : Set Nat) target := by
    intro x hx
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue x hx⟩
    change x / 25 < N / 25 + 1
    have hxN := (Finset.mem_Icc.mp (hSBounds x hx)).2
    have hdiv : x / 25 <= N / 25 := Nat.div_le_div_right hxN
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
  have hSCard : S.card <= target.card :=
    Finset.card_le_card_of_injOn (fun x : Nat => x / 25) hmap hinj
  have htarget := periodicResidueSet_count_le_441
    residues (N / 25 + 1) hresidues hcard
  have hSCardQ : (S.card : Rat) <= (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : ((N / 25 : Nat) : Rat) <= (N : Rat) / 25 := Nat.cast_div_le
  calc
    (S.card : Rat) <= (target.card : Rat) := hSCardQ
    _ <= (1 / 4 : Rat) * (N / 25 + 1 : Nat) + 1323 / 4 := by
      simpa [target] using htarget
    _ <= (1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4 := by
      push_cast
      gcongr

noncomputable def fiveMillionEightFiniteEventCount
    (pivots : Finset Nat) (point : Nat) : Nat := by
  classical
  exact (pivots.filter fun pivot =>
    finiteSquarePrimeEvent 7 pivot point).card

structure FiveMillionEightBasePeriodicThresholdCertificate
    (N : Nat) (B pivots : Finset Nat) : Type where
  sevenFullModFour : FiveMillionModFour
  sevenModNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm
  sevenModFortyNineEvent :
    FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm
  sevenRootCapacity : ∀ r,
    (sevenModFortyNineEvent r).card <= 2
  eighteenFullModFour : FiveMillionModFour
  eighteenModNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm
  eighteenModFortyNineEvent :
    FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm
  eighteenRootCapacity : ∀ r,
    (eighteenModFortyNineEvent r).card <= 2
  sevenClassifies : ∀ point,
    point ∈ hallBasePart N B -> point ∈ OriginalA7 N ->
    4 <= fiveMillionEightFiniteEventCount pivots point ->
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionEightPeriodicFiniteResidues sevenFullModFour
        sevenModNineEvent sevenModFortyNineEvent
  eighteenClassifies : ∀ point,
    point ∈ hallBasePart N B -> point ∈ OriginalA18 N ->
    4 <= fiveMillionEightFiniteEventCount pivots point ->
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionEightPeriodicFiniteResidues eighteenFullModFour
        eighteenModNineEvent eighteenModFortyNineEvent

theorem fiveMillionEightBasePeriodicThreshold_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (certificate :
      FiveMillionEightBasePeriodicThresholdCertificate N B pivots) :
    ((((hallBasePart N B).filter fun point =>
        4 <= fiveMillionEightFiniteEventCount pivots point).card : Rat) / N) <=
      2 * (1 / 4 : Rat) / 25 +
        2 * ((1 / 4 : Rat) + 1323 / 4) / 5_000_000 := by
  let threshold := (hallBasePart N B).filter fun point =>
    4 <= fiveMillionEightFiniteEventCount pivots point
  let seven := threshold ∩ OriginalA7 N
  let eighteen := threshold ∩ OriginalA18 N
  let sevenResidues := fiveMillionEightPeriodicNatResidues
    certificate.sevenFullModFour certificate.sevenModNineEvent
      certificate.sevenModFortyNineEvent
  let eighteenResidues := fiveMillionEightPeriodicNatResidues
    certificate.eighteenFullModFour certificate.eighteenModNineEvent
      certificate.eighteenModFortyNineEvent
  have hthresholdSubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_inter.mp
      (Finset.mem_filter.mp hpoint).1).2
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : threshold.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenBound : (seven.card : Rat) <=
      (1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4 := by
    apply baseProgressionSubset_card_le_periodic441
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
    · exact fiveMillionEightPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionEightPeriodicNatResidues_card_le_441 _ _ _
        certificate.sevenRootCapacity
  have heightteenBound : (eighteen.card : Rat) <=
      (1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4 := by
    apply baseProgressionSubset_card_le_periodic441
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
    · exact fiveMillionEightPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionEightPeriodicNatResidues_card_le_441 _ _ _
        certificate.eighteenRootCapacity
  have hthresholdQ : (threshold.card : Rat) <=
      (seven.card : Rat) + (eighteen.card : Rat) := by
    exact_mod_cast hthresholdCard
  have hcount : (threshold.card : Rat) <=
      2 * ((1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4) := by
    linarith
  have hNPositiveNat : 0 < N := by omega
  have hNPositive : (0 : Rat) < N := by exact_mod_cast hNPositiveNat
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hprefixNonnegative :
      (0 : Rat) <= 2 * ((1 / 4 : Rat) + 1323 / 4) := by norm_num
  have hprefixDiv :
      2 * ((1 / 4 : Rat) + 1323 / 4) / N <=
        2 * ((1 / 4 : Rat) + 1323 / 4) / 5_000_000 := by
    exact div_le_div_of_nonneg_left hprefixNonnegative (by norm_num) hLowerQ
  change (threshold.card : Rat) / N <= _
  calc
    (threshold.card : Rat) / N <=
        (2 * ((1 / 4 : Rat) * ((N : Rat) / 25 + 1) + 1323 / 4)) / N :=
      div_le_div_of_nonneg_right hcount hNPositive.le
    _ = 2 * (1 / 4 : Rat) / 25 +
        2 * ((1 / 4 : Rat) + 1323 / 4) / N := by
      field_simp
      ring
    _ <= 2 * (1 / 4 : Rat) / 25 +
        2 * ((1 / 4 : Rat) + 1323 / 4) / 5_000_000 := by
      exact add_le_add le_rfl hprefixDiv

#print axioms periodicResidueSet_count_le_441
#print axioms fiveMillionEightBasePeriodicThreshold_ratio_le

end Erdos848
