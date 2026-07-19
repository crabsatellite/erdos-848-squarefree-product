import Erdos848.TailFiveMillionPeriodicBridge

namespace Erdos848

/-!
# Generic exact prefix bound for the 1764-period finite sieve

The earlier bridge specialized the argument to 495 residues.  The two-odd
rows need the same theorem with smaller literal residue counts.  This module
only generalizes that arithmetic; it introduces no new sieve assumption.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem periodicResidueSet_count_le_bound
    (residues : Finset Nat) (length bound : Nat)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= bound)
    (hbound : bound <= 882) :
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : Rat) <=
      (bound : Rat) / 1764 * length +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card <= 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) <=
        bound * (1764 - bound) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    have hboundPeriod : bound <= 1764 := hbound.trans (by norm_num)
    have hboundSub : 1764 - bound + bound = 1764 :=
      Nat.sub_add_cancel hboundPeriod
    have hsum : residues.card + bound <= 1764 := by omega
    nlinarith
  have hmainMono :
      residues.card * length <= bound * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card <=
        bound * length + bound * (1764 - bound) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun x =>
          x % 1764 ∈ residues).card : Rat) <=
        (bound : Rat) * length +
          (bound : Rat) * ((1764 - bound : Nat) : Rat) := by
    exact_mod_cast hscaled'
  calc
    (((Finset.range length).filter fun x =>
        x % 1764 ∈ residues).card : Rat) =
        (1764 : Rat) *
            (((Finset.range length).filter fun x =>
              x % 1764 ∈ residues).card : Rat) / 1764 := by ring
    _ <= ((bound : Rat) * length +
          (bound : Rat) * ((1764 - bound : Nat) : Rat)) / 1764 := by
      exact div_le_div_of_nonneg_right hscaledQ (by norm_num)
    _ = (bound : Rat) / 1764 * length +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by ring

theorem baseProgressionSubset_card_le_periodicBound
    {N : Nat} {S residues : Finset Nat} {baseResidue bound : Nat}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card <= bound)
    (hbound : bound <= 882) :
    (S.card : Rat) <=
      (bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun x : Nat => x / 25) (S : Set Nat) target := by
    intro x hx
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue x hx⟩
    have hxN := (Finset.mem_Icc.mp (hSBounds x hx)).2
    have hdiv : x / 25 <= N / 25 := Nat.div_le_div_right hxN
    exact Nat.lt_succ_of_le hdiv
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
  have htarget := periodicResidueSet_count_le_bound
    residues (N / 25 + 1) bound hresidues hcard hbound
  have hSCardQ : (S.card : Rat) <= (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : ((N / 25 : Nat) : Rat) <= (N : Rat) / 25 :=
    Nat.cast_div_le
  calc
    (S.card : Rat) <= (target.card : Rat) := hSCardQ
    _ <= (bound : Rat) / 1764 * (N / 25 + 1 : Nat) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
      simpa [target] using htarget
    _ <= (bound : Rat) / 1764 * ((N : Rat) / 25 + 1) +
        (bound : Rat) * ((1764 - bound : Nat) : Rat) / 1764 := by
      push_cast
      gcongr

#print axioms periodicResidueSet_count_le_bound
#print axioms baseProgressionSubset_card_le_periodicBound

end Erdos848
