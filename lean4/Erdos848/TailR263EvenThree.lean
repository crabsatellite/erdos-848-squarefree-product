import Erdos848.ScratchE3ActualPayment
import Erdos848.TailR263EvenThreeTail19

namespace Erdos848

/-!
# Direct `E3` terminal at the unchanged R263 cut

After the preceding rows charge at most ten `E1` and ten `E2` points, nineteen
`E3` points force three into one of the nine mod-nine cells.  The cutoff-19
finite payment, the square tail, the residual, and the final Hall arithmetic
are all discharged in the kernel.  No final Hall inequality is accepted as a
premise.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263EvenThreeCell
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Finset Nat :=
  (fiveMillionValuationPart N B .evenThree).filter fun x =>
    oddModNineResidue x = cell

lemma fiveMillionR263EvenThreeCell_subset_part
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    fiveMillionR263EvenThreeCell N B cell ⊆
      fiveMillionValuationPart N B .evenThree :=
  Finset.filter_subset _ _

def fiveMillionR263EvenThreeCharge (N : Nat) (B : Finset Nat) : Finset Nat :=
  fiveMillionValuationPart N B .evenOne ∪
    fiveMillionValuationPart N B .evenTwo

lemma fiveMillionR263EvenThreeCharge_subset_residual
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263EvenThreeCharge N B ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hx | hx
  · exact fiveMillionValuationPart_subset_residual N B .evenOne hx
  · exact fiveMillionValuationPart_subset_residual N B .evenTwo hx

lemma fiveMillionR263EvenThreeCharge_card_le_twenty
    {N : Nat} {B : Finset Nat}
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10) :
    (fiveMillionR263EvenThreeCharge N B).card <= 20 := by
  exact (Finset.card_union_le _ _).trans (by omega)

theorem fiveMillionR263EvenThree_exists_dense_cell
    {N : Nat} {B : Finset Nat}
    (hThree : 19 <= (fiveMillionValuationPart N B .evenThree).card) :
    exists cell : Fin 9,
      3 <= (fiveMillionR263EvenThreeCell N B cell).card := by
  classical
  by_contra hnone
  have hsparse : forall cell : Fin 9,
      (cellFibre (fiveMillionValuationPart N B .evenThree)
        oddModNineResidue cell).card <= 2 := by
    intro cell
    have hnot : Not (3 <=
        (fiveMillionR263EvenThreeCell N B cell).card) := by
      intro hcell
      exact hnone ⟨cell, hcell⟩
    change (fiveMillionR263EvenThreeCell N B cell).card <= 2
    omega
  have hcard := card_le_cellCount_mul_of_fibres_le
    (fiveMillionValuationPart N B .evenThree) oddModNineResidue 2 hsparse
  norm_num [Fintype.card_fin] at hcard
  omega

lemma fiveMillionStructuredResidual_subset_r263EvenThreeLowTwo
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263EvenThreeCharge N B) ⊆
      tailR263LowTwoDiagonal N := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  have hxResidual : x ∈ hallResidual N B := hxParts.1
  have hxNotCharge := hxParts.2
  have hxDiagonal : x ∈ tailDiagonalBad N := by
    have hglobal := hallResidual_subset_globalMixedTailDiagonalBad
      hBout hBprop hxResidual
    have hparts := Finset.mem_filter.mp hglobal
    exact Finset.mem_filter.mpr
      ⟨hparts.1, ⟨⟨hparts.2.1, hparts.2.2.1⟩, hparts.2.2.2⟩⟩
  have hOne : fiveMillionValuationClassOf x ≠ .evenOne := by
    intro hclass
    apply hxNotCharge
    apply Finset.mem_union_left
    exact mem_fiveMillionValuationPart.mpr ⟨hxResidual, hclass⟩
  have hTwo : fiveMillionValuationClassOf x ≠ .evenTwo := by
    intro hclass
    apply hxNotCharge
    apply Finset.mem_union_right
    exact mem_fiveMillionValuationPart.mpr ⟨hxResidual, hclass⟩
  exact Finset.mem_filter.mpr
    ⟨hxDiagonal, tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

theorem fiveMillionR263EvenThree_residual_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10) :
    ((hallResidual N B).card : Rat) / N <=
      tailR263LowTwoDiagonalEnvelope + 20 / 5_000_000 := by
  let charged := fiveMillionR263EvenThreeCharge N B
  have hchargedSubset : charged ⊆ hallResidual N B :=
    fiveMillionR263EvenThreeCharge_subset_residual N B
  have hchargedCard : charged.card <= 20 :=
    fiveMillionR263EvenThreeCharge_card_le_twenty hOne hTwo
  have hstructuredSubset :
      fiveMillionStructuredResidual N B charged ⊆
        tailR263LowTwoDiagonal N := by
    simpa [charged] using
      (fiveMillionStructuredResidual_subset_r263EvenThreeLowTwo hBout hBprop)
  have hdiagonal :=
    (GeneratedTailR263Diagonal.fiveMillionR263Diagonal_kernel_close
      N hLower hUpper).lowTwo
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredCard :
      (fiveMillionStructuredResidual N B charged).card <=
        (tailR263LowTwoDiagonal N).card :=
    Finset.card_le_card hstructuredSubset
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        tailR263LowTwoDiagonalEnvelope := by
    have hcardQ :
        ((fiveMillionStructuredResidual N B charged).card : Rat) <=
          ((tailR263LowTwoDiagonal N).card : Rat) := by
      exact_mod_cast hstructuredCard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hchargeRatio : (charged.card : Rat) / N <= 20 / N := by
    apply div_le_div_of_nonneg_right _ hNpos.le
    exact_mod_cast hchargedCard
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (20 : Rat) / N <= 20 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  calc
    ((hallResidual N B).card : Rat) / N =
        ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
          (charged.card : Rat) / N := by
      rw [← add_div]
      congr 1
      exact_mod_cast hpartition.symm
    _ <= tailR263LowTwoDiagonalEnvelope + 20 / N :=
      add_le_add hstructuredRatio hchargeRatio
    _ <= tailR263LowTwoDiagonalEnvelope + 20 / 5_000_000 :=
      add_le_add le_rfl hchargeAtCut

def fiveMillionR263EvenThreeFinite19Envelope : Rat := 1221 / 100000

/-- Fully kernel-closed `E3` assembly at the unchanged R263 cut. -/
noncomputable def fiveMillionR263EvenThreeTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (cell : Fin 9)
    (hCell : 3 <= (fiveMillionR263EvenThreeCell N B cell).card) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let pivotWitness := Finset.exists_subset_card_eq hCell
  let pivots := Classical.choose pivotWitness
  have hpivotsSpec := Classical.choose_spec pivotWitness
  have hpivotsCell : pivots ⊆ fiveMillionR263EvenThreeCell N B cell :=
    hpivotsSpec.1
  have hpivotsCard : pivots.card = 3 := hpivotsSpec.2
  have hpivotsPart : pivots ⊆ fiveMillionValuationPart N B .evenThree :=
    hpivotsCell.trans (fiveMillionR263EvenThreeCell_subset_part N B cell)
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenThree
        (hpivotsPart hpivot))).1
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hpivotsModNine : forall pivot : Fin 3,
      globalMixedThreePivotAt pivots hpivotsCard pivot % 9 = cell := by
    intro pivot
    have hpivotCell := hpivotsCell
      (globalMixedThreePivotAt_mem pivots hpivotsCard pivot)
    have hcell := (Finset.mem_filter.mp hpivotCell).2
    simpa [oddModNineResidue] using congrArg Fin.val hcell
  have hresidual := fiveMillionR263EvenThree_residual_ratio_le
    hLower hUpper hBout hBprop hOne hTwo
  have hfiniteGlobal :=
    globalMixedEvenThreePivotFinite19Payment_ratio_le
      hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
        hpivotsPart hpivotsCard hpivotsModNine
  have hfiniteLocal :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 19 2 / N <=
        globalMixedBaseFiniteThresholdPayment N pivots 19 2 / N := by
    exact div_le_div_of_nonneg_right
      (fiveMillionR263BaseFiniteThresholdPayment_le_globalMixedBase
        N B pivots 19 2) hNpos.le
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 19 2 / N <=
        fiveMillionR263EvenThreeFinite19Envelope := by
    exact hfiniteLocal.trans hfiniteGlobal
  have htail :=
    hallBaseTailSquarePayment_threeTwo_r263_evenThree19_ratio_le
      hLower hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenThreeCell
      pivots := pivots
      cutoff := 19
      threshold := 2
      thresholdPositive := by norm_num
      thresholdCard := by omega
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := tailR263LowTwoDiagonalEnvelope + 20 / 5_000_000
      finiteEnvelope := fiveMillionR263EvenThreeFinite19Envelope
      tailEnvelope := 3 * fiveMillionSquareTail19Envelope / 25 +
        (3 / 5 : Rat) * fiveMillionOddRoot7Envelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := by
        norm_num [fiveMillionR263BranchCeiling,
          fiveMillionR263EvenThreeFinite19Envelope,
          tailR263LowTwoDiagonalEnvelope,
          fiveMillionSquareTail19Envelope,
          fiveMillionSquareTail23Envelope,
          reciprocalSquareQ,
          fiveMillionOddRoot7Envelope] }

#print axioms fiveMillionR263EvenThree_exists_dense_cell
#print axioms fiveMillionStructuredResidual_subset_r263EvenThreeLowTwo
#print axioms fiveMillionR263EvenThree_residual_ratio_le
#print axioms fiveMillionR263EvenThreeTerminal

end Erdos848
