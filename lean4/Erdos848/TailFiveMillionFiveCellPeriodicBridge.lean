import Erdos848.TailFiveMillionPeriodicBridge
import Erdos848.TailFiveMillionFiveCellFiniteDensity

namespace Erdos848

/-!
# Periodic bridge for the five-active-cell row

This turns the uniform `501 / 1764` theorem into a bound for the literal
threshold subset of the two base progressions.  The only semantic inputs left
are pointwise CRT classification and the two mod-nine capacity facts.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionFiveCellPeriodicFiniteResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.1 = fullModFour ∨
      residue.2.2 ∈ successfulModFortyNineRootsForSet modFortyNineRoot
        (modNineEvent residue.2.1)

theorem fiveMillionFiveCellPeriodicFiniteResidues_card
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) :
    (fiveMillionFiveCellPeriodicFiniteResidues fullModFour modNineEvent
      modFortyNineRoot).card =
      fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot := by
  classical
  unfold fiveMillionFiveCellPeriodicFiniteResidues
    fiveMillionFiveCellPeriodicFiniteCount
  rw [Finset.card_eq_sum_ones]
  simp only [Finset.sum_filter, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r4 _hr4
  by_cases h4 : r4 = fullModFour
  · simp [h4]
  · simp only [h4, false_or, if_false]
    apply Finset.sum_congr rfl
    intro r9 _hr9
    rw [Finset.sum_boole]
    simp

def fiveMillionFiveCellPeriodicNatResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) : Finset Nat :=
  (Finset.range 1764).filter fun residue =>
    fiveMillionPeriodicTriple residue ∈
      fiveMillionFiveCellPeriodicFiniteResidues fullModFour modNineEvent
        modFortyNineRoot

lemma fiveMillionFiveCellPeriodicNatResidues_subset_range
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) :
    fiveMillionFiveCellPeriodicNatResidues fullModFour modNineEvent
      modFortyNineRoot ⊆ Finset.range 1764 :=
  Finset.filter_subset _ _

theorem fiveMillionFiveCellPeriodicNatResidues_card_le_501
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card <= 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 <= (modNineEvent r9).card)).card <= 1) :
    (fiveMillionFiveCellPeriodicNatResidues fullModFour modNineEvent
      modFortyNineRoot).card <= 501 := by
  let residues := fiveMillionFiveCellPeriodicNatResidues fullModFour
    modNineEvent modFortyNineRoot
  let triples := fiveMillionFiveCellPeriodicFiniteResidues fullModFour
    modNineEvent modFortyNineRoot
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
      fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot := by
    simpa [triples] using fiveMillionFiveCellPeriodicFiniteResidues_card
      fullModFour modNineEvent modFortyNineRoot
  rw [htriples] at hcard
  exact hcard.trans (fiveMillionFiveCellPeriodicFiniteCount_le_501
    fullModFour modNineEvent modFortyNineRoot hcapacity hdouble)

theorem periodicResidueSet_count_le_501
    (residues : Finset Nat) (length : Nat)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= 501) :
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : Rat) <=
      (167 / 588 : Rat) * length + 70307 / 196 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card <= 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) <=
        501 * (1764 - 501) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    nlinarith
  have hmainMono : residues.card * length <= 501 * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card <=
        501 * length + 501 * (1764 - 501) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  norm_num at hscaled'
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card : Rat) <=
        501 * (length : Rat) + 501 * 1263 := by
    exact_mod_cast hscaled'
  norm_num at hscaledQ ⊢
  linarith

theorem baseProgressionSubset_card_le_periodic501
    {N : Nat} {S residues : Finset Nat} {baseResidue : Nat}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= 501) :
    (S.card : Rat) <=
      (167 / 588 : Rat) * ((N : Rat) / 25 + 1) + 70307 / 196 := by
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
  have htarget := periodicResidueSet_count_le_501
    residues (N / 25 + 1) hresidues hcard
  have hSCardQ : (S.card : Rat) <= (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : ((N / 25 : Nat) : Rat) <= (N : Rat) / 25 := Nat.cast_div_le
  calc
    (S.card : Rat) <= (target.card : Rat) := hSCardQ
    _ <= (167 / 588 : Rat) * (((N / 25 : Nat) : Rat) + 1) +
        70307 / 196 := by
      simpa [target] using htarget
    _ <= (167 / 588 : Rat) * ((N : Rat) / 25 + 1) + 70307 / 196 := by
      push_cast
      gcongr

structure FiveMillionFiveCellBasePeriodicThresholdCertificate
    (N : Nat) (B pivots : Finset Nat) : Type where
  sevenFullModFour : FiveMillionModFour
  sevenModNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm
  sevenModFortyNineRoot :
    FiveMillionFiniteForm -> FiveMillionModFortyNine
  sevenCapacity : ∀ r9, (sevenModNineEvent r9).card <= 2
  sevenDouble :
    ((Finset.univ.filter fun r9 : FiveMillionModNine =>
      2 <= (sevenModNineEvent r9).card)).card <= 1
  eighteenFullModFour : FiveMillionModFour
  eighteenModNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm
  eighteenModFortyNineRoot :
    FiveMillionFiniteForm -> FiveMillionModFortyNine
  eighteenCapacity : ∀ r9, (eighteenModNineEvent r9).card <= 2
  eighteenDouble :
    ((Finset.univ.filter fun r9 : FiveMillionModNine =>
      2 <= (eighteenModNineEvent r9).card)).card <= 1
  sevenClassifies : ∀ point,
    point ∈ hallBasePart N B -> point ∈ OriginalA7 N ->
    3 <= fiveMillionFiniteEventCount pivots point ->
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionFiveCellPeriodicFiniteResidues sevenFullModFour
        sevenModNineEvent sevenModFortyNineRoot
  eighteenClassifies : ∀ point,
    point ∈ hallBasePart N B -> point ∈ OriginalA18 N ->
    3 <= fiveMillionFiniteEventCount pivots point ->
    fiveMillionPeriodicTriple (point / 25) ∈
      fiveMillionFiveCellPeriodicFiniteResidues eighteenFullModFour
        eighteenModNineEvent eighteenModFortyNineRoot

theorem fiveMillionFiveCellBasePeriodicThreshold_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (certificate :
      FiveMillionFiveCellBasePeriodicThresholdCertificate N B pivots) :
    ((((hallBasePart N B).filter fun point =>
        3 <= fiveMillionFiniteEventCount pivots point).card : Rat) / N) <=
      2 * (167 / 588 : Rat) / 25 +
        2 * ((167 / 588 : Rat) + 70307 / 196) / 5_000_000 := by
  let threshold := (hallBasePart N B).filter fun point =>
    3 <= fiveMillionFiniteEventCount pivots point
  let seven := threshold ∩ OriginalA7 N
  let eighteen := threshold ∩ OriginalA18 N
  let sevenResidues := fiveMillionFiveCellPeriodicNatResidues
    certificate.sevenFullModFour certificate.sevenModNineEvent
      certificate.sevenModFortyNineRoot
  let eighteenResidues := fiveMillionFiveCellPeriodicNatResidues
    certificate.eighteenFullModFour certificate.eighteenModNineEvent
      certificate.eighteenModFortyNineRoot
  have hthresholdSubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_inter.mp
      (Finset.mem_filter.mp hpoint).1).2
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : threshold.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenBound : (seven.card : Rat) <=
      (167 / 588 : Rat) * ((N : Rat) / 25 + 1) + 70307 / 196 := by
    apply baseProgressionSubset_card_le_periodic501
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
    · exact fiveMillionFiveCellPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionFiveCellPeriodicNatResidues_card_le_501 _ _ _
        certificate.sevenCapacity certificate.sevenDouble
  have heightteenBound : (eighteen.card : Rat) <=
      (167 / 588 : Rat) * ((N : Rat) / 25 + 1) + 70307 / 196 := by
    apply baseProgressionSubset_card_le_periodic501
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
    · exact fiveMillionFiveCellPeriodicNatResidues_subset_range _ _ _
    · exact fiveMillionFiveCellPeriodicNatResidues_card_le_501 _ _ _
        certificate.eighteenCapacity certificate.eighteenDouble
  have hthresholdQ : (threshold.card : Rat) <=
      (seven.card : Rat) + (eighteen.card : Rat) := by
    exact_mod_cast hthresholdCard
  have hcount : (threshold.card : Rat) <=
      2 * ((167 / 588 : Rat) * ((N : Rat) / 25 + 1) +
        70307 / 196) := by
    linarith
  have hNPositiveNat : 0 < N := by omega
  have hNPositive : (0 : Rat) < N := by exact_mod_cast hNPositiveNat
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hprefixNonnegative :
      (0 : Rat) <= 2 * ((167 / 588 : Rat) + 70307 / 196) := by
    norm_num
  have hprefixDiv :
      2 * ((167 / 588 : Rat) + 70307 / 196) / N <=
        2 * ((167 / 588 : Rat) + 70307 / 196) / 5_000_000 := by
    exact div_le_div_of_nonneg_left hprefixNonnegative (by norm_num) hLowerQ
  change (threshold.card : Rat) / N <= _
  calc
    (threshold.card : Rat) / N <=
        (2 * ((167 / 588 : Rat) * ((N : Rat) / 25 + 1) +
          70307 / 196)) / N :=
      div_le_div_of_nonneg_right (by simpa using hcount) hNPositive.le
    _ = 2 * (167 / 588 : Rat) / 25 +
        2 * ((167 / 588 : Rat) + 70307 / 196) / N := by
      field_simp
      ring
    _ <= 2 * (167 / 588 : Rat) / 25 +
        2 * ((167 / 588 : Rat) + 70307 / 196) / 5_000_000 := by
      exact add_le_add le_rfl hprefixDiv

#print axioms fiveMillionFiveCellPeriodicFiniteResidues_card
#print axioms fiveMillionFiveCellPeriodicNatResidues_card_le_501
#print axioms periodicResidueSet_count_le_501
#print axioms baseProgressionSubset_card_le_periodic501
#print axioms fiveMillionFiveCellBasePeriodicThreshold_ratio_le

end Erdos848
