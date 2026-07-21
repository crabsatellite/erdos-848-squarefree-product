import Erdos848.TailR263OddTwoExhaustion
import Erdos848.TailTenMillionPeriodicTerminals

namespace Erdos848

/-!
# Two-odd R263 terminals on `10M ≤ N < 20M`

The finite combinatorial patterns are the already kernel-checked R263
patterns.  This module replaces only their interval-dependent estimates:
the compact 10M diagonal cell certificate, the periodic finite estimate
rebased at 10M, and the actual-pivot 10M tail theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionR263OddTwoFullStructuredDiagonal_kernel_close
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate) :
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N ≤
        18 * tenMillionDiagonalOneOddCell := by
  have hsubset :=
    fiveMillionR263OddTwoStructured_subset_fullDiagonal hBout hBprop
  have hcard :
      (fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card ≤
          (tailDiagonalCellUnion N false Finset.univ).card +
            (tailDiagonalCellUnion N true Finset.univ).card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le _ _)
  have hcardQ :
      ((fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card : Rat) ≤
          (tailDiagonalCellUnion N false Finset.univ).card +
            (tailDiagonalCellUnion N true Finset.univ).card := by
    exact_mod_cast hcard
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  calc
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N ≤
        (((tailDiagonalCellUnion N false Finset.univ).card : Rat) +
          (tailDiagonalCellUnion N true Finset.univ).card) / N :=
      div_le_div_of_nonneg_right hcardQ hNPositive.le
    _ = ((tailDiagonalCellUnion N false Finset.univ).card : Rat) / N +
        ((tailDiagonalCellUnion N true Finset.univ).card : Rat) / N := by
      ring
    _ ≤ 9 * tenMillionDiagonalOneOddCell +
        9 * tenMillionDiagonalOneOddCell := by
      apply add_le_add
      · simpa using tenMillionDiagonalCellUnion_ratio_le
          hLower hUpper hcellCertificate false (Finset.univ : Finset (Fin 9))
      · simpa using tenMillionDiagonalCellUnion_ratio_le
          hLower hUpper hcellCertificate true (Finset.univ : Finset (Fin 9))
    _ = 18 * tenMillionDiagonalOneOddCell := by ring

theorem tenMillionR263OddTwoOneResidueStructuredDiagonal_kernel_close
    {N : Nat} {B : Finset Nat} {commonCell : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcommon : ∀ x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B),
        oddModNineResidue x = commonCell) :
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N ≤
        2 * tenMillionDiagonalOneOddCell := by
  have hsubset :=
    fiveMillionR263OddTwoStructured_subset_oneResidueDiagonal
      hBout hBprop hcommon
  have hcard :
      (fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card ≤
          (tailDiagonalCellUnion N false {commonCell}).card +
            (tailDiagonalCellUnion N true {commonCell}).card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le _ _)
  have hcardQ :
      ((fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card : Rat) ≤
          (tailDiagonalCellUnion N false {commonCell}).card +
            (tailDiagonalCellUnion N true {commonCell}).card := by
    exact_mod_cast hcard
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  calc
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N ≤
        (((tailDiagonalCellUnion N false {commonCell}).card : Rat) +
          (tailDiagonalCellUnion N true {commonCell}).card) / N :=
      div_le_div_of_nonneg_right hcardQ hNPositive.le
    _ = ((tailDiagonalCellUnion N false {commonCell}).card : Rat) / N +
        ((tailDiagonalCellUnion N true {commonCell}).card : Rat) / N := by
      ring
    _ ≤ tenMillionDiagonalOneOddCell +
        tenMillionDiagonalOneOddCell := by
      apply add_le_add
      · simpa using tenMillionDiagonalCellUnion_ratio_le
          hLower hUpper hcellCertificate false {commonCell}
      · simpa using tenMillionDiagonalCellUnion_ratio_le
          hLower hUpper hcellCertificate true {commonCell}
    _ = 2 * tenMillionDiagonalOneOddCell := by ring

lemma tenMillionR263OddTwoSparseCharge_card_le_forty
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hactive : (fiveMillionR263OddTwoActiveCells N B cls).Nonempty) :
    (fiveMillionR263OddTwoSparseCharge N B cls).card ≤ 40 := by
  classical
  let active := fiveMillionR263OddTwoActiveCells N B cls
  let inactive := Finset.univ \ active
  have hactivePositive : 0 < active.card := by
    exact Finset.card_pos.mpr (by simpa [active] using hactive)
  have hactiveSubset : active ⊆ (Finset.univ : Finset (Fin 9)) :=
    Finset.subset_univ active
  have hpartition : inactive.card + active.card = 9 := by
    simpa [inactive] using
      Finset.card_sdiff_add_card_eq_card hactiveSubset
  have hinactiveCard : inactive.card ≤ 8 := by omega
  have hsubset : fiveMillionR263OddTwoSparseCharge N B cls ⊆
      inactive.biUnion (fiveMillionR263OddTwoCell N B cls) := by
    intro x hx
    have hxData := Finset.mem_filter.mp hx
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, ?_, ?_⟩
    · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxData.2⟩
    · exact Finset.mem_filter.mpr ⟨hxData.1, rfl⟩
  calc
    (fiveMillionR263OddTwoSparseCharge N B cls).card ≤
        (inactive.biUnion (fiveMillionR263OddTwoCell N B cls)).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ cell ∈ inactive,
        (fiveMillionR263OddTwoCell N B cls cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive) (t := fiveMillionR263OddTwoCell N B cls)
    _ ≤ ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionR263OddTwoInactiveCell_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ ≤ 8 * 5 := by omega
    _ = 40 := by norm_num

theorem tenMillionR263OddTwoCharge_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hEvenCharge :
      ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        27 * tenMillionCellCharge)
    (hOddOne : 46 ≤ (fiveMillionValuationPart N B .oddOne).card)
    (hOddThree : 46 ≤ (fiveMillionValuationPart N B .oddThree).card) :
    ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
      tenMillionPeriodicCharge 80 := by
  have hOneNonempty :=
    fiveMillionR263OddTwoActiveCells_nonempty hOddOne
  have hThreeNonempty :=
    fiveMillionR263OddTwoActiveCells_nonempty hOddThree
  have hOneCard :=
    tenMillionR263OddTwoSparseCharge_card_le_forty hOneNonempty
  have hThreeCard :=
    tenMillionR263OddTwoSparseCharge_card_le_forty hThreeNonempty
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hOneRatio :
      ((fiveMillionR263OddTwoSparseCharge N B .oddOne).card : Rat) / N ≤
        40 / tenMillionLower := by
    calc
      ((fiveMillionR263OddTwoSparseCharge N B .oddOne).card : Rat) / N ≤
          40 / N := by
        apply div_le_div_of_nonneg_right _ hNpos.le
        exact_mod_cast hOneCard
      _ ≤ 40 / tenMillionLower := by
        apply div_le_div_of_nonneg_left (by norm_num)
          (by norm_num [tenMillionLower])
        exact_mod_cast hLower
  have hThreeRatio :
      ((fiveMillionR263OddTwoSparseCharge N B .oddThree).card : Rat) / N ≤
        40 / tenMillionLower := by
    calc
      ((fiveMillionR263OddTwoSparseCharge N B .oddThree).card : Rat) / N ≤
          40 / N := by
        apply div_le_div_of_nonneg_right _ hNpos.le
        exact_mod_cast hThreeCard
      _ ≤ 40 / tenMillionLower := by
        apply div_le_div_of_nonneg_left (by norm_num)
          (by norm_num [tenMillionLower])
        exact_mod_cast hLower
  have hchargeCard :
      ((fiveMillionR263OddTwoCharge N B).card : Rat) ≤
        (fiveMillionR263EvenCharge N B).card +
          (fiveMillionR263OddTwoSparseCharge N B .oddOne).card +
          (fiveMillionR263OddTwoSparseCharge N B .oddThree).card := by
    have hfirst := Finset.card_union_le
      (fiveMillionR263EvenCharge N B)
      (fiveMillionR263OddTwoSparseCharge N B .oddOne)
    have hsecond := Finset.card_union_le
      (fiveMillionR263EvenCharge N B ∪
        fiveMillionR263OddTwoSparseCharge N B .oddOne)
      (fiveMillionR263OddTwoSparseCharge N B .oddThree)
    exact_mod_cast hsecond.trans (Nat.add_le_add_right hfirst _)
  calc
    ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
        (fiveMillionR263EvenCharge N B).card / N +
          (fiveMillionR263OddTwoSparseCharge N B .oddOne).card / N +
          (fiveMillionR263OddTwoSparseCharge N B .oddThree).card / N := by
      rw [← add_div, ← add_div]
      exact div_le_div_of_nonneg_right hchargeCard hNpos.le
    _ ≤ 27 * tenMillionCellCharge +
        40 / tenMillionLower + 40 / tenMillionLower :=
      add_le_add (add_le_add hEvenCharge hOneRatio) hThreeRatio
    _ = tenMillionPeriodicCharge 80 := by
      norm_num [tenMillionPeriodicCharge, tenMillionLower]
      ring

theorem tenMillionR263OddTwoResidual_ratio_le
    {N : Nat} {B : Finset Nat} {diagonalEnvelope : Rat}
    (hcharge :
      ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
        tenMillionPeriodicCharge 80)
    (hdiagonal : ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N ≤
        diagonalEnvelope) :
    ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + tenMillionPeriodicCharge 80 := by
  let charged := fiveMillionR263OddTwoCharge N B
  have hchargedSubset : charged ⊆ hallResidual N B :=
    fiveMillionR263OddTwoCharge_subset_residual N B
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
    _ ≤ diagonalEnvelope + tenMillionPeriodicCharge 80 :=
      add_le_add hdiagonal hcharge

noncomputable def tenMillionR263OddTwoBalancedTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcharge :
      ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
        tenMillionPeriodicCharge 80)
    (pattern : R263OddTwoBalancedPattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    TenMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    tenMillionR263OddTwoFullStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop hcellCertificate
  have hresidual :=
    tenMillionR263OddTwoResidual_ratio_le hcharge hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le_at_lower
      (lower := tenMillionLower) (by norm_num [tenMillionLower])
      hLower hBout hpivotsResidual (by norm_num : 42 ≤ 882)
      (pattern.period_card_le_42 (Or.inl rfl))
      (pattern.period_card_le_42 (Or.inr rfl))
  have htailRaw :=
    hallBaseTailSquarePayment_sixFive_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 5 / N ≤
        tenMillionPeriodicOddTail := by
    simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
      htailRaw
  exact
    { branch := .odd .twoOddBalanced
      pivots := pivots
      cutoff := 7
      threshold := 5
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        18 * tenMillionDiagonalOneOddCell + tenMillionPeriodicCharge 80
      finiteEnvelope := r263OptionRootFiniteEnvelopeAt tenMillionLower 42
      tailEnvelope := tenMillionPeriodicOddTail
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := by
        norm_num [tenMillionR263BranchTotal,
          tenMillionPeriodicOddBranchTotal, tenMillionPeriodicRow,
          tenMillionPeriodicCharge, tenMillionPeriodicFinite,
          r263OptionRootFiniteEnvelopeAt, tenMillionCellCharge,
          tenMillionLower]
        linarith }

noncomputable def tenMillionR263OddTwoSplitPairTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcharge :
      ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
        tenMillionPeriodicCharge 80)
    (pattern : R263OddTwoSplitPairPattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    TenMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    tenMillionR263OddTwoFullStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop hcellCertificate
  have hresidual :=
    tenMillionR263OddTwoResidual_ratio_le hcharge hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le_at_lower
      (lower := tenMillionLower) (by norm_num [tenMillionLower])
      hLower hBout hpivotsResidual (by norm_num : 152 ≤ 882)
      (pattern.period_card_le_152 (Or.inl rfl))
      (pattern.period_card_le_152 (Or.inr rfl))
  have htailRaw :=
    hallBaseTailSquarePayment_fourThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (2 / 3 : Rat) * tenMillionPeriodicOddTail := by
    simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
      htailRaw
  exact
    { branch := .odd .twoOddAtMostElevenCells
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        18 * tenMillionDiagonalOneOddCell + tenMillionPeriodicCharge 80
      finiteEnvelope := r263OptionRootFiniteEnvelopeAt tenMillionLower 152
      tailEnvelope := (2 / 3 : Rat) * tenMillionPeriodicOddTail
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := by
        norm_num [tenMillionR263BranchTotal,
          tenMillionPeriodicOddBranchTotal, tenMillionPeriodicCharge,
          r263OptionRootFiniteEnvelopeAt, tenMillionOddFourDensity,
          tenMillionOddFourEndpoint, tenMillionPeriodicOddTail,
          tenMillionCellCharge, tenMillionLower]
        linarith }

noncomputable def tenMillionR263OddTwoOneResidueTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcharge :
      ((fiveMillionR263OddTwoCharge N B).card : Rat) / N ≤
        tenMillionPeriodicCharge 80)
    (commonCell : Fin 9)
    (hcommon : ∀ x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B),
        oddModNineResidue x = commonCell)
    (pattern : R263OddTwoOneResiduePattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    TenMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    tenMillionR263OddTwoOneResidueStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop hcellCertificate hcommon
  have hresidual :=
    tenMillionR263OddTwoResidual_ratio_le hcharge hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le_at_lower
      (lower := tenMillionLower) (by norm_num [tenMillionLower])
      hLower hBout hpivotsResidual (by norm_num : 244 ≤ 882)
      (pattern.period_card_le_244 (Or.inl rfl))
      (pattern.period_card_le_244 (Or.inr rfl))
  have htailRaw :=
    hallBaseTailSquarePayment_fourThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (2 / 3 : Rat) * tenMillionPeriodicOddTail := by
    simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
      htailRaw
  exact
    { branch := .odd .twoOddOneResidue
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        2 * tenMillionDiagonalOneOddCell + tenMillionPeriodicCharge 80
      finiteEnvelope := r263OptionRootFiniteEnvelopeAt tenMillionLower 244
      tailEnvelope := (2 / 3 : Rat) * tenMillionPeriodicOddTail
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := by
        norm_num [tenMillionR263BranchTotal,
          tenMillionPeriodicOddBranchTotal, tenMillionPeriodicCharge,
          r263OptionRootFiniteEnvelopeAt, tenMillionOddTwoCellDensity,
          tenMillionOddTwoCellEndpoint, tenMillionPeriodicOddTail,
          tenMillionCellCharge, tenMillionRootOdd7,
          tenMillionSquareTail7, tenMillionLower]
        linarith }

/-- Complete finite-set dispatcher for the surviving two-odd allocation. -/
theorem tenMillionR263OddTwoTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hEvenCharge :
      ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        27 * tenMillionCellCharge)
    (hOddOne : 46 ≤
      (fiveMillionValuationPart N B .oddOne).card)
    (hOddThree : 46 ≤
      (fiveMillionValuationPart N B .oddThree).card) :
    Nonempty (TenMillionR263TerminalCertificate N B) := by
  classical
  let leftCells := fiveMillionR263OddTwoActiveCells N B .oddOne
  let rightCells := fiveMillionR263OddTwoActiveCells N B .oddThree
  have hleftNonempty : leftCells.Nonempty := by
    simpa [leftCells] using
      (fiveMillionR263OddTwoActiveCells_nonempty hOddOne)
  have hrightNonempty : rightCells.Nonempty := by
    simpa [rightCells] using
      (fiveMillionR263OddTwoActiveCells_nonempty hOddThree)
  have hcharge :=
    tenMillionR263OddTwoCharge_ratio_le
      hLower hEvenCharge hOddOne hOddThree
  rcases finNine_two_set_triple_dichotomy leftCells rightCells with
      hbalanced | hsmall
  · obtain ⟨leftThree, rightThree, hleftSubset, hleftCard,
      hrightSubset, hrightCard, hdisjoint⟩ := hbalanced
    obtain ⟨pivots, left, right, pattern, hpivotsStructured⟩ :=
      fiveMillionR263OddTwoBalancedPattern_exists
        (by simpa [leftCells] using hleftSubset) hleftCard
        (by simpa [rightCells] using hrightSubset) hrightCard
        hdisjoint
    exact ⟨tenMillionR263OddTwoBalancedTerminal
      hLower hUpper hBout hBprop hcellCertificate
      hcharge pattern hpivotsStructured⟩
  · by_cases hsingleton : (leftCells ∪ rightCells).card = 1
    · obtain ⟨commonCell, hcommonLeft⟩ := hleftNonempty
      obtain ⟨rightCell, hrightCell⟩ := hrightNonempty
      have hleOne : (leftCells ∪ rightCells).card ≤ 1 := by omega
      have hcommonUnion : commonCell ∈ leftCells ∪ rightCells :=
        Finset.mem_union_left _ hcommonLeft
      have hrightUnion : rightCell ∈ leftCells ∪ rightCells :=
        Finset.mem_union_right _ hrightCell
      have hcellsEq : commonCell = rightCell :=
        (Finset.card_le_one.mp hleOne)
          commonCell hcommonUnion rightCell hrightUnion
      have hcommonRight : commonCell ∈ rightCells := by
        rw [hcellsEq]
        exact hrightCell
      have hcommon :
          ∀ x ∈ fiveMillionStructuredResidual N B
            (fiveMillionR263OddTwoCharge N B),
              oddModNineResidue x = commonCell := by
        intro x hx
        rcases mem_fiveMillionR263OddTwoStructuredResidual.mp hx with
            hxOne | hxThree
        · have hxCell : oddModNineResidue x ∈ leftCells := by
            simpa [leftCells] using hxOne.2
          exact (Finset.card_le_one.mp hleOne)
            (oddModNineResidue x) (Finset.mem_union_left _ hxCell)
              commonCell hcommonUnion
        · have hxCell : oddModNineResidue x ∈ rightCells := by
            simpa [rightCells] using hxThree.2
          exact (Finset.card_le_one.mp hleOne)
            (oddModNineResidue x) (Finset.mem_union_right _ hxCell)
              commonCell hcommonUnion
      obtain ⟨pivots, left, right, hpattern, hpivotsStructured⟩ :=
        fiveMillionR263OddTwoOneResiduePattern_exists
          (by simpa [leftCells] using hcommonLeft)
          (by simpa [rightCells] using hcommonRight)
      obtain ⟨pattern⟩ := hpattern
      exact ⟨tenMillionR263OddTwoOneResidueTerminal
        hLower hUpper hBout hBprop hcellCertificate
        hcharge commonCell hcommon
        pattern hpivotsStructured⟩
    · have hunionNonempty : (leftCells ∪ rightCells).Nonempty :=
        hleftNonempty.mono Finset.subset_union_left
      have hcardTwo : 2 ≤ (leftCells ∪ rightCells).card := by
        have hpositive : 0 < (leftCells ∪ rightCells).card :=
          Finset.card_pos.mpr hunionNonempty
        omega
      obtain ⟨leftCell, hleftCell, rightCell, hrightCell, hcellsNe⟩ :=
        exists_cross_ne_of_union_card_two
          hleftNonempty hrightNonempty hcardTwo
      obtain ⟨pivots, left, right, hpattern, hpivotsStructured⟩ :=
        fiveMillionR263OddTwoSplitPairPattern_exists
          (by simpa [leftCells] using hleftCell)
          (by simpa [rightCells] using hrightCell)
          hcellsNe
      obtain ⟨pattern⟩ := hpattern
      exact ⟨tenMillionR263OddTwoSplitPairTerminal
        hLower hUpper hBout hBprop hcellCertificate
        hcharge pattern hpivotsStructured⟩

#print axioms tenMillionR263OddTwoFullStructuredDiagonal_kernel_close
#print axioms tenMillionR263OddTwoBalancedTerminal
#print axioms tenMillionR263OddTwoSplitPairTerminal
#print axioms tenMillionR263OddTwoOneResidueTerminal
#print axioms tenMillionR263OddTwoTerminal

end Erdos848
