import Erdos848.TailFiveMillionOneCellPeriodicProducer

namespace Erdos848

/-!
# Turning a literal one-cell selection into the periodic pattern

The selected pivots precede the optional mod-49 fibre charge.  This is
important in the one-active-cell failure branch: the pivots remain literal
Hall-residual points while the later charge is used only to restrict the
diagonal residual.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionSelectedModFortyNineFibre
    (selected : Finset Nat) (residue : FiveMillionModFortyNine) : Finset Nat :=
  selected.filter fun x => x % 49 = residue.val

noncomputable def fiveMillionOneCellPivotPatternOfSelected
    {N n threshold extra : Nat} {B charged selected : Finset Nat}
    (parity : Bool) (cell : Fin 9)
    (hcard : selected.card = n)
    (hselected : selected ⊆ fiveMillionStructuredResidual N B charged)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcell : ∀ x ∈ selected, oddModNineResidue x = cell)
    (hn : 0 < n) (hthreshold : 0 < threshold)
    (hthresholdCard : threshold ≤ n)
    (hraw :
      ((Finset.univ.filter fun residue : FiveMillionModFortyNine =>
        threshold ≤
          (fiveMillionSelectedModFortyNineFibre selected residue).card).card ≤
        extra))
    (hextra : extra ≤ 49)
    (hcap : 441 + 3 * (49 + 8 * extra) ≤ 882) :
    { pattern : FiveMillionOneCellPivotPattern N B n threshold extra //
      ∀ i, pattern.pivot i ∈ fiveMillionStructuredResidual N B charged } := by
  classical
  let selectedEquiv : Fin n ≃ selected :=
    (selected.equivFinOfCardEq hcard).symm
  let pivot : Fin n → Nat := fun i => (selectedEquiv i).1
  have hpivotMem : ∀ i, pivot i ∈ selected := fun i =>
    (selectedEquiv i).2
  have hpivotStructured : ∀ i,
      pivot i ∈ fiveMillionStructuredResidual N B charged := fun i =>
    hselected (hpivotMem i)
  have hpivotInjective : Function.Injective pivot := by
    intro i j hij
    apply selectedEquiv.injective
    exact Subtype.ext hij
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  let modNineClass : FiveMillionModNine := cell
  have hfibreCard : ∀ residue : FiveMillionModFortyNine,
      ((Finset.univ : Finset (Fin n)).filter fun i =>
        oneCellPivotModFortyNine pivot i = residue).card =
      (fiveMillionSelectedModFortyNineFibre selected residue).card := by
    intro residue
    apply Finset.card_bij (fun i _hi => pivot i)
    · intro i hi
      apply Finset.mem_filter.mpr
      refine ⟨hpivotMem i, ?_⟩
      have hresidue := congrArg Fin.val (Finset.mem_filter.mp hi).2
      simpa [fiveMillionSelectedModFortyNineFibre,
        oneCellPivotModFortyNine] using hresidue
    · intro i _hi j _hj hij
      exact hpivotInjective hij
    · intro x hx
      have hxSelected := (Finset.mem_filter.mp hx).1
      let xSubtype : selected := ⟨x, hxSelected⟩
      let i : Fin n := selectedEquiv.symm xSubtype
      have hiValue : pivot i = x := by
        exact congrArg Subtype.val (selectedEquiv.apply_symm_apply xSubtype)
      refine ⟨i, ?_, hiValue⟩
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ i, ?_⟩
      apply Fin.ext
      have hxResidue := (Finset.mem_filter.mp hx).2
      simp [oneCellPivotModFortyNine, hiValue, hxResidue]
  refine ⟨
    { nPositive := hn
      thresholdPositive := hthreshold
      thresholdCard := hthresholdCard
      pivot := pivot
      pivotInjective := hpivotInjective
      pivotResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      modNineClass := modNineClass
      commonModNine := ?_
      rawThresholdRoots := ?_
      extraAtMostFortyNine := hextra
      periodCapAtMostHalf := hcap }, ?_⟩
  · intro i
    exact (Finset.mem_sdiff.mp (hpivotStructured i)).1
  · intro i
    apply (ZMod.natCast_eq_natCast_iff'
      (pivot i) modFourClass.val 4).2
    have hpivotMod := hclass (pivot i) (hpivotStructured i)
    cases parity <;> simp_all [modFourClass]
  · intro i
    apply (ZMod.natCast_eq_natCast_iff'
      (pivot i) modNineClass.val 9).2
    have hpivotCell := congrArg Fin.val (hcell (pivot i) (hpivotMem i))
    simpa [oddModNineResidue, modNineClass,
      Nat.mod_eq_of_lt cell.isLt] using hpivotCell
  · simpa only [hfibreCard] using hraw
  · exact hpivotStructured

#print axioms fiveMillionOneCellPivotPatternOfSelected

end Erdos848
