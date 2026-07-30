import Erdos848.TailCRTCounting
import Erdos848.TailHybridSmallPrimeDiagonal

namespace Erdos848

/-!
# Amortized endpoint counting outside the two base progressions

For a step coprime to `25`, an affine progression permutes the residue
classes modulo `25`.  Consequently exactly `23` of every `25` consecutive
indices lie outside the two excluded classes `7` and `18`.  This is the
kernel theorem needed to pay one endpoint discrepancy per selected
progression, instead of one `+1` for each of its `23` admissible CRT
subclasses.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private def rangeFilterEquiv
    (period : Nat) (predicate : Nat → Prop) [DecidablePred predicate] :
    {x // x ∈ (Finset.range period).filter predicate} ≃
      {x : Fin period // predicate x.val} where
  toFun x :=
    ⟨⟨x.val, Finset.mem_range.mp (Finset.mem_filter.mp x.property).1⟩,
      (Finset.mem_filter.mp x.property).2⟩
  invFun x :=
    ⟨x.val, Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr x.val.isLt, x.property⟩⟩
  left_inv x := by
    apply Subtype.ext
    rfl
  right_inv x := by
    apply Subtype.ext
    apply Fin.ext
    rfl

private theorem card_range_filter_eq_fintype_card
    (period : Nat) (predicate : Nat → Prop) [DecidablePred predicate] :
    ((Finset.range period).filter predicate).card =
      Fintype.card {x : Fin period // predicate x.val} := by
  calc
    ((Finset.range period).filter predicate).card =
        Fintype.card
          {x // x ∈ (Finset.range period).filter predicate} :=
      (Fintype.card_coe _).symm
    _ = Fintype.card {x : Fin period // predicate x.val} :=
      Fintype.card_congr (rangeFilterEquiv period predicate)

private def finAffineMap
    (anchor step : Nat) (index : Fin 25) : Fin 25 :=
  ⟨(anchor + step * index.val) % 25,
    Nat.mod_lt _ (by norm_num)⟩

private theorem finAffineMap_injective
    (anchor step : Nat) (hstep : Nat.Coprime step 25) :
    Function.Injective (finAffineMap anchor step) := by
  intro left right heq
  have hmod :
      anchor + step * left.val ≡
        anchor + step * right.val [MOD 25] := by
    exact congr_arg Fin.val heq
  have hmul :
      step * left.val ≡ step * right.val [MOD 25] :=
    Nat.ModEq.add_left_cancel' anchor hmod
  have hindex :
      left.val ≡ right.val [MOD 25] :=
    hmul.cancel_left_of_coprime hstep.symm.gcd_eq_one
  apply Fin.ext
  exact hindex.eq_of_lt_of_lt left.isLt right.isLt

private noncomputable def finAffineEquiv
    (anchor step : Nat) (hstep : Nat.Coprime step 25) :
    Fin 25 ≃ Fin 25 :=
  Equiv.ofBijective (finAffineMap anchor step)
    ⟨finAffineMap_injective anchor step hstep,
      Finite.surjective_of_injective
        (finAffineMap_injective anchor step hstep)⟩

private theorem finAffineEquiv_val
    (anchor step : Nat) (hstep : Nat.Coprime step 25)
    (index : Fin 25) :
    (finAffineEquiv anchor step hstep index).val =
      (anchor + step * index.val) % 25 := by
  rfl

def outsideProgressionResidues
    (anchor step : Nat) : Finset Nat :=
  (Finset.range 25).filter fun index =>
    OutsideLowBase (anchor + step * index)

theorem outsideProgressionResidues_card
    (anchor step : Nat) (hstep : Nat.Coprime step 25) :
    (outsideProgressionResidues anchor step).card = 23 := by
  let target : Fin 25 → Prop := fun residue =>
    residue.val ≠ 7 ∧ residue.val ≠ 18
  have htarget :
      Fintype.card {residue : Fin 25 // target residue} = 23 := by
    decide
  rw [outsideProgressionResidues,
    card_range_filter_eq_fintype_card]
  calc
    Fintype.card
        {index : Fin 25 //
          OutsideLowBase (anchor + step * index.val)} =
      Fintype.card {residue : Fin 25 // target residue} := by
        apply Fintype.card_congr
        exact (finAffineEquiv anchor step hstep).subtypeEquiv
          (fun index => by
            dsimp only [target]
            unfold OutsideLowBase
            rw [show
              (finAffineEquiv anchor step hstep index).val =
                (anchor + step * index.val) % 25 by
                  exact finAffineEquiv_val anchor step hstep index]
            )
    _ = 23 := htarget

theorem outsideProgression_index_mod_mem
    {anchor step index : Nat}
    (houtside : OutsideLowBase (anchor + step * index)) :
    index % 25 ∈ outsideProgressionResidues anchor step := by
  rw [outsideProgressionResidues, Finset.mem_filter]
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
  unfold OutsideLowBase at houtside ⊢
  simpa [Nat.add_mod, Nat.mul_mod] using houtside

theorem outsideProgression_count_scaled_le
    (anchor step length : Nat)
    (hstep : Nat.Coprime step 25) :
    25 * ((Finset.range length).filter fun index =>
        OutsideLowBase (anchor + step * index)).card ≤
      23 * length + 46 := by
  let residues := outsideProgressionResidues anchor step
  have hresidues : residues ⊆ Finset.range 25 := by
    intro residue hresidue
    exact (Finset.mem_filter.mp hresidue).1
  have hperiodic :
      ((Finset.range length).filter fun index =>
          OutsideLowBase (anchor + step * index)) =
        (Finset.range length).filter fun index =>
          index % 25 ∈ residues := by
    ext index
    simp only [Finset.mem_filter, Finset.mem_range, and_congr_right_iff]
    intro _hindex
    constructor
    · exact outsideProgression_index_mod_mem
    · intro hmem
      have hparts := Finset.mem_filter.mp hmem
      unfold OutsideLowBase at hparts ⊢
      simpa [Nat.add_mod, Nat.mul_mod] using hparts.2
  rw [hperiodic]
  have hbound :=
    finiteResidueCount_scaled_le residues 25 length
      (by norm_num) hresidues
  rw [outsideProgressionResidues_card anchor step hstep] at hbound
  norm_num at hbound ⊢
  exact hbound

#print axioms outsideProgressionResidues_card
#print axioms outsideProgression_count_scaled_le

end Erdos848
