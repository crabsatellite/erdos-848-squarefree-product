import Erdos848.TailR263EvenTwoOneCell
import Erdos848.TailR263EvenTwoFinite
import Erdos848.TailTenMillionCombinatorics

namespace Erdos848

/-!
# Direct `E2` two-cell terminal at the R263 cut

After charging at most ten `E1` points, two distinct `E2` mod-nine cells with
two points each supply four actual Hall pivots.  The residual is contained in
the generated low-two plus all-`E2` diagonal, while the base part is bounded
by the literal four-pivot Boolean terminal.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma fiveMillionR263EvenOneCharge_subset_residual
    (N : Nat) (B : Finset Nat) :
    fiveMillionValuationPart N B .evenOne ⊆ hallResidual N B :=
  fiveMillionValuationPart_subset_residual N B .evenOne

lemma fiveMillionStructuredResidual_subset_r263EvenTwoAllDiagonal
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    fiveMillionStructuredResidual N B
        (fiveMillionValuationPart N B .evenOne) ⊆
      tailR263EvenTwoAllDiagonal N := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  have hxResidual : x ∈ hallResidual N B := hxParts.1
  have hxNotCharge := hxParts.2
  have hxDiagonal : x ∈ tailDiagonalBad N := by
    have hglobal := hallResidual_subset_globalMixedTailDiagonalBad
      hBout hBprop hxResidual
    have hparts := Finset.mem_filter.mp hglobal
    apply Finset.mem_filter.mpr
    exact ⟨hparts.1, ⟨hparts.2.1, hparts.2.2.1⟩, hparts.2.2.2⟩
  by_cases hOne : fiveMillionValuationClassOf x = .evenOne
  · exact False.elim (hxNotCharge
      (mem_fiveMillionValuationPart.mpr ⟨hxResidual, hOne⟩))
  by_cases hTwo : fiveMillionValuationClassOf x = .evenTwo
  · have hxTwo : x ∈ fiveMillionValuationPart N B .evenTwo :=
      mem_fiveMillionValuationPart.mpr ⟨hxResidual, hTwo⟩
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    let residue : Fin 9 := ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
    refine ⟨residue, Finset.mem_univ _, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨hxDiagonal, ?_⟩
    exact ⟨fiveMillionValuationPart_evenTwo hxTwo, rfl⟩
  · apply Finset.mem_union_left
    apply Finset.mem_filter.mpr
    exact ⟨hxDiagonal,
      tailR263LowTwo_accepts_of_not_evenOne_evenTwo hOne hTwo⟩

structure FiveMillionR263EvenTwoTwoCellSelection
    (N : Nat) (B : Finset Nat) (left right : Fin 9) : Type where
  x0 : Nat
  x1 : Nat
  y0 : Nat
  y1 : Nat
  x0Part : x0 ∈ fiveMillionValuationPart N B .evenTwo
  x1Part : x1 ∈ fiveMillionValuationPart N B .evenTwo
  y0Part : y0 ∈ fiveMillionValuationPart N B .evenTwo
  y1Part : y1 ∈ fiveMillionValuationPart N B .evenTwo
  x0Cell : oddModNineResidue x0 = left
  x1Cell : oddModNineResidue x1 = left
  y0Cell : oddModNineResidue y0 = right
  y1Cell : oddModNineResidue y1 = right
  x0_ne_x1 : x0 ≠ x1
  y0_ne_y1 : y0 ≠ y1
  x0_ne_y0 : x0 ≠ y0
  x0_ne_y1 : x0 ≠ y1
  x1_ne_y0 : x1 ≠ y0
  x1_ne_y1 : x1 ≠ y1

theorem fiveMillionR263EvenTwoTwoCellSelection_nonempty
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hleftRight : left ≠ right)
    (hleft : 2 <= (fiveMillionR263EvenTwoCell N B left).card)
    (hright : 2 <= (fiveMillionR263EvenTwoCell N B right).card) :
    Nonempty (FiveMillionR263EvenTwoTwoCellSelection N B left right) := by
  have hleft' : 2 <=
      (cellFibre (fiveMillionValuationPart N B .evenTwo)
        oddModNineResidue left).card := by
    simpa [cellFibre, fiveMillionR263EvenTwoCell] using hleft
  have hright' : 2 <=
      (cellFibre (fiveMillionValuationPart N B .evenTwo)
        oddModNineResidue right).card := by
    simpa [cellFibre, fiveMillionR263EvenTwoCell] using hright
  obtain ⟨x0, hx0, x1, hx1, y0, hy0, y1, hy1,
      hx0Cell, hx1Cell, hy0Cell, hy1Cell,
      hx01, hy01, hx0y0, hx0y1, hx1y0, hx1y1⟩ :=
    two_cells_supply_four_pivots
      (fiveMillionValuationPart N B .evenTwo)
      oddModNineResidue hleftRight hleft' hright'
  exact ⟨{
    x0 := x0, x1 := x1, y0 := y0, y1 := y1
    x0Part := hx0, x1Part := hx1, y0Part := hy0, y1Part := hy1
    x0Cell := hx0Cell, x1Cell := hx1Cell
    y0Cell := hy0Cell, y1Cell := hy1Cell
    x0_ne_x1 := hx01, y0_ne_y1 := hy01
    x0_ne_y0 := hx0y0, x0_ne_y1 := hx0y1
    x1_ne_y0 := hx1y0, x1_ne_y1 := hx1y1 }⟩

noncomputable def fiveMillionR263EvenTwoTwoCellTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (left right : Fin 9) (hleftRight : left ≠ right)
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hleft : 2 <= (fiveMillionR263EvenTwoCell N B left).card)
    (hright : 2 <= (fiveMillionR263EvenTwoCell N B right).card) :
    FiveMillionR263FourPivotTerminalCertificate N B := by
  classical
  let selected := Classical.choice
    (fiveMillionR263EvenTwoTwoCellSelection_nonempty
      hleftRight hleft hright)
  let x0 := selected.x0
  let x1 := selected.x1
  let y0 := selected.y0
  let y1 := selected.y1
  have hx0 : x0 ∈ fiveMillionValuationPart N B .evenTwo := by
    simpa [x0] using selected.x0Part
  have hx1 : x1 ∈ fiveMillionValuationPart N B .evenTwo := by
    simpa [x1] using selected.x1Part
  have hy0 : y0 ∈ fiveMillionValuationPart N B .evenTwo := by
    simpa [y0] using selected.y0Part
  have hy1 : y1 ∈ fiveMillionValuationPart N B .evenTwo := by
    simpa [y1] using selected.y1Part
  have hx0Cell : oddModNineResidue x0 = left := by
    simpa [x0] using selected.x0Cell
  have hx1Cell : oddModNineResidue x1 = left := by
    simpa [x1] using selected.x1Cell
  have hy0Cell : oddModNineResidue y0 = right := by
    simpa [y0] using selected.y0Cell
  have hy1Cell : oddModNineResidue y1 = right := by
    simpa [y1] using selected.y1Cell
  have hx01 : x0 ≠ x1 := by simpa [x0, x1] using selected.x0_ne_x1
  have hy01 : y0 ≠ y1 := by simpa [y0, y1] using selected.y0_ne_y1
  have hx0y0 : x0 ≠ y0 := by simpa [x0, y0] using selected.x0_ne_y0
  have hx0y1 : x0 ≠ y1 := by simpa [x0, y1] using selected.x0_ne_y1
  have hx1y0 : x1 ≠ y0 := by simpa [x1, y0] using selected.x1_ne_y0
  have hx1y1 : x1 ≠ y1 := by simpa [x1, y1] using selected.x1_ne_y1
  let pivots : Finset Nat := {x0, x1, y0, y1}
  have hpivotsCard : pivots.card = 4 := by
    simp [pivots, hx01, hy01, hx0y0, hx0y1, hx1y0, hx1y1]
  have hpivotsPart : pivots ⊆ fiveMillionValuationPart N B .evenTwo := by
    intro pivot hpivot
    simp only [pivots, Finset.mem_insert, Finset.mem_singleton] at hpivot
    rcases hpivot with rfl | rfl | rfl | rfl
    · exact hx0
    · exact hx1
    · exact hy0
    · exact hy1
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B .evenTwo
        (hpivotsPart hpivot))).1
  have hx0Mod : x0 % 9 = left.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hx0Cell
  have hx1Mod : x1 % 9 = left.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hx1Cell
  have hy0Mod : y0 % 9 = right.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hy0Cell
  have hy1Mod : y1 % 9 = right.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hy1Cell
  have hvalNe : left.val ≠ right.val := by
    intro hval
    exact hleftRight (Fin.ext hval)
  have hpivotCases {pivot : Nat} (hpivot : pivot ∈ pivots) :
      pivot = x0 ∨ pivot = x1 ∨ pivot = y0 ∨ pivot = y1 := by
    simpa [pivots] using hpivot
  have hpivotsCapacity : ∀ residue : Fin 9,
      (pivots.filter fun pivot => pivot % 9 = residue.val).card <= 2 := by
    intro residue
    by_cases hresLeft : residue = left
    · subst residue
      have hsubset :
          pivots.filter (fun pivot => pivot % 9 = left.val) ⊆ {x0, x1} := by
        intro pivot hpivot
        have hparts := Finset.mem_filter.mp hpivot
        rcases hpivotCases hparts.1 with rfl | rfl | rfl | rfl
        · simp
        · simp
        · have hrightLeft : right.val = left.val := hy0Mod.symm.trans hparts.2
          exact False.elim (hvalNe hrightLeft.symm)
        · have hrightLeft : right.val = left.val := hy1Mod.symm.trans hparts.2
          exact False.elim (hvalNe hrightLeft.symm)
      exact (Finset.card_le_card hsubset).trans (by simp [hx01])
    by_cases hresRight : residue = right
    · subst residue
      have hsubset :
          pivots.filter (fun pivot => pivot % 9 = right.val) ⊆ {y0, y1} := by
        intro pivot hpivot
        have hparts := Finset.mem_filter.mp hpivot
        rcases hpivotCases hparts.1 with rfl | rfl | rfl | rfl
        · have hleftRightVal : left.val = right.val := hx0Mod.symm.trans hparts.2
          exact False.elim (hvalNe hleftRightVal)
        · have hleftRightVal : left.val = right.val := hx1Mod.symm.trans hparts.2
          exact False.elim (hvalNe hleftRightVal)
        · simp
        · simp
      exact (Finset.card_le_card hsubset).trans (by simp [hy01])
    · have hleftVal : left.val ≠ residue.val := by
        intro hval
        exact hresLeft (Fin.ext hval.symm)
      have hrightVal : right.val ≠ residue.val := by
        intro hval
        exact hresRight (Fin.ext hval.symm)
      have hempty :
          pivots.filter (fun pivot => pivot % 9 = residue.val) = ∅ := by
        apply Finset.not_nonempty_iff_eq_empty.mp
        intro hnonempty
        obtain ⟨pivot, hpivot⟩ := hnonempty
        have hparts := Finset.mem_filter.mp hpivot
        rcases hpivotCases hparts.1 with rfl | rfl | rfl | rfl
        · exact hleftVal (hx0Mod.symm.trans hparts.2)
        · exact hleftVal (hx1Mod.symm.trans hparts.2)
        · exact hrightVal (hy0Mod.symm.trans hparts.2)
        · exact hrightVal (hy1Mod.symm.trans hparts.2)
      simp [hempty]
  have hchargedSubset : fiveMillionValuationPart N B .evenOne ⊆
      hallResidual N B := fiveMillionR263EvenOneCharge_subset_residual N B
  have hstructuredSubset : fiveMillionStructuredResidual N B
      (fiveMillionValuationPart N B .evenOne) ⊆
        tailR263EvenTwoAllDiagonal N :=
    fiveMillionStructuredResidual_subset_r263EvenTwoAllDiagonal hBout hBprop
  have hdiagonal :=
    (GeneratedTailR263Diagonal.fiveMillionR263Diagonal_kernel_close
      N hLower hUpper).evenTwoAll
  have hstructuredCard :
      (fiveMillionStructuredResidual N B
        (fiveMillionValuationPart N B .evenOne)).card <=
          (tailR263EvenTwoAllDiagonal N).card :=
    Finset.card_le_card hstructuredSubset
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B
        (fiveMillionValuationPart N B .evenOne)).card : Rat) / N <=
          tailR263EvenTwoAllDiagonalEnvelope := by
    have hcardQ :
        ((fiveMillionStructuredResidual N B
          (fiveMillionValuationPart N B .evenOne)).card : Rat) <=
            ((tailR263EvenTwoAllDiagonal N).card : Rat) := by
      exact_mod_cast hstructuredCard
    exact (div_le_div_of_nonneg_right hcardQ hNpos.le).trans hdiagonal
  have hchargeRatio :
      ((fiveMillionValuationPart N B .evenOne).card : Rat) / N <=
        10 / N := by
    apply div_le_div_of_nonneg_right _ hNpos.le
    exact_mod_cast hOne
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (10 : Rat) / N <= 10 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hpartition :
      (fiveMillionStructuredResidual N B
        (fiveMillionValuationPart N B .evenOne)).card +
          (fiveMillionValuationPart N B .evenOne).card =
            (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hresidual : ((hallResidual N B).card : Rat) / N <=
      tailR263EvenTwoAllDiagonalEnvelope + 10 / 5_000_000 := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B
            (fiveMillionValuationPart N B .evenOne)).card : Rat) / N +
          ((fiveMillionValuationPart N B .evenOne).card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ <= tailR263EvenTwoAllDiagonalEnvelope + 10 / N :=
        add_le_add hstructuredRatio hchargeRatio
      _ <= tailR263EvenTwoAllDiagonalEnvelope + 10 / 5_000_000 :=
        add_le_add le_rfl hchargeAtCut
  have hfinite := globalMixedEvenTwoFourPivotFiniteTriplePayment_ratio_le
    hBout hpivotsPart hpivotsCard hpivotsCapacity
  have htail := globalMixedEvenTwoFourPivotTailPayment_ratio_le
    hLower hBout hpivotsPart hpivotsCard
  refine
    { branch := .evenTwoTwoCells
      pivots := pivots
      pivotsCard := hpivotsCard
      cutoff := 7
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := tailR263EvenTwoAllDiagonalEnvelope + 10 / 5_000_000
      finiteEnvelope := 4 / 1225 + 36 / 5_000_000
      tailEnvelope :=
        (2 / 3 : Rat) * fiveMillionOddRoot7Envelope +
          4 * fiveMillionSquareTail7Envelope / 25
      residualBound := hresidual
      finiteBound := ?_
      tailBound := htail
      componentTotalBound := ?_ }
  · exact hfinite.trans (by
      have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
      have hendpoint : (36 : Rat) / N <= 36 / 5_000_000 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
      linarith)
  · norm_num [fiveMillionR263BranchCeiling,
      tailR263EvenTwoAllDiagonalEnvelope,
      fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope]

#print axioms fiveMillionStructuredResidual_subset_r263EvenTwoAllDiagonal
#print axioms fiveMillionR263EvenTwoTwoCellTerminal

end Erdos848
