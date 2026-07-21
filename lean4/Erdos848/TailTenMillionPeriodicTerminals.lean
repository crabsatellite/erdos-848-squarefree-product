import Erdos848.TailGlobalMixedOneOddSevenCellAllocation
import Erdos848.TailTenMillionActualTail
import Erdos848.TailTenMillionPeriodicDiagonal
import Erdos848.TailTenMillionR263Terminal

namespace Erdos848

/-!
# Actual periodic odd terminals on `10M ≤ N < 20M`

The allocation and CRT witnesses are the literal R263 objects already used
below ten million.  Only the three quantitative components are replaced:

* the residual is bounded by the checked 10M one-cell diagonal certificate;
* the same CRT classifications are evaluated with lower endpoint 10M; and
* transformed roots and the remaining square tail use the checked 10M
  actual-pivot theorem.

No external producer is trusted and no final Hall inequality is a premise.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionPivotsOdd_of_structuredClass
    {N : Nat} {B charged pivots : Finset Nat}
    (parity : Bool)
    (hpivots :
      pivots ⊆ fiveMillionStructuredResidual N B charged)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    ∀ pivot ∈ pivots, Odd pivot := by
  intro pivot hpivot
  have hmod := hclass pivot (hpivots hpivot)
  apply odd_of_mod_four_eq_one_or_three
  cases parity <;> simp_all

noncomputable def tenMillionPeriodicOddTerminalOfComponents
    {N threshold pivotCount cellCount : Nat}
    {B charged pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hcharged : charged ⊆ hallResidual N B)
    (chargeEnvelope : Rat)
    (hchargedRatio : (charged.card : Rat) / N ≤ chargeEnvelope)
    (hpivotsCard : pivots.card = pivotCount)
    (hthresholdPositive : 0 < threshold)
    (hthresholdCard : threshold ≤ pivotCount)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (branch : TenMillionPeriodicOddBranch)
    (finiteEnvelope tailEnvelope : Rat)
    (hdiagonal :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        cellCount * tenMillionDiagonalOneOddCell)
    (hfinite :
      fiveMillionR263BaseFiniteThresholdPayment
        N B pivots 7 threshold / N ≤ finiteEnvelope)
    (htail :
      hallBaseTailSquarePayment N B pivots 7 threshold / N ≤
        tailEnvelope)
    (hcomponents :
      cellCount * tenMillionDiagonalOneOddCell +
          chargeEnvelope +
          finiteEnvelope + tailEnvelope ≤
        tenMillionPeriodicOddBranchTotal branch) :
    TenMillionR263TerminalCertificate N B := by
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp (hpivotsResidual hpivot)).1
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hcharged
  have hresidualN :
      ((hallResidual N B).card : Rat) / N ≤
        cellCount * tenMillionDiagonalOneOddCell + chargeEnvelope := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
            (charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hpartition.symm
      _ ≤ cellCount * tenMillionDiagonalOneOddCell + chargeEnvelope :=
        add_le_add hdiagonal hchargedRatio
  exact
    { branch := .odd branch
      pivots := pivots
      cutoff := 7
      threshold := threshold
      thresholdPositive := hthresholdPositive
      thresholdCard := by simpa [hpivotsCard] using hthresholdCard
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        cellCount * tenMillionDiagonalOneOddCell +
          chargeEnvelope
      finiteEnvelope := finiteEnvelope
      tailEnvelope := tailEnvelope
      residualBound := hresidualN
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := hcomponents }

noncomputable def tenMillionOneCellPatternTerminal
    {N n threshold extra : Nat}
    {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (chargeEnvelope : Rat)
    (hchargedRatio : (charged.card : Rat) / N ≤ chargeEnvelope)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell)
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (hpivotsResidual : pattern.pivots ⊆ hallResidual N B)
    (branch : TenMillionPeriodicOddBranch)
    (density endpoint tailFactor : Rat)
    (hfiniteRaw :
      fiveMillionR263BaseFiniteThresholdPayment
          N B pattern.pivots 7 threshold / N ≤
        2 * density / 25 +
          2 * (density + endpoint) / tenMillionLower)
    (htail :
      hallBaseTailSquarePayment N B pattern.pivots 7 threshold / N ≤
        tailFactor * tenMillionPeriodicOddTail)
    (hcomponents :
      tenMillionDiagonalOneOddCell +
          chargeEnvelope +
          (2 * density / 25 +
            2 * (density + endpoint) / tenMillionLower) +
          tailFactor * tenMillionPeriodicOddTail ≤
        tenMillionPeriodicOddBranchTotal branch) :
    TenMillionR263TerminalCertificate N B := by
  let cells : Finset (Fin 9) := {cell}
  have hcells :
      ∀ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x ∈ cells := by
    intro x hx
    simp [cells, honeCell x hx]
  have hdiagonal :=
    tenMillionStructuredOneOddCells_ratio_le
      hLower hUpper hcellCertificate hBout
      hBprop
      parity cells hclass hcells
  have hdiagonal' :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        tenMillionDiagonalOneOddCell := by
    simpa [cells] using hdiagonal
  exact tenMillionPeriodicOddTerminalOfComponents
    (cellCount := 1)
    hLower hcharged chargeEnvelope hchargedRatio pattern.pivots_card
      pattern.thresholdPositive pattern.thresholdCard
      hpivotsResidual branch
      (2 * density / 25 +
        2 * (density + endpoint) / tenMillionLower)
      (tailFactor * tenMillionPeriodicOddTail)
      (by simpa using hdiagonal') hfiniteRaw htail
      (by simpa using hcomponents)

noncomputable def tenMillionOneCellTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hcellSize : 6 ≤
      ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell) :
    TenMillionR263TerminalCertificate N B := by
  classical
  apply Classical.choice
  rcases fiveMillionOneCellPatternDichotomy
      parity cell hcellSize hclass with hmatch | hfailure
  · let produced := hmatch.some
    let pattern := produced.1
    have hpivotsOdd :=
      fiveMillionOneCellPatternPivots_odd
        parity pattern produced.2 hclass
    have hfiniteOriginal :=
      fiveMillionCardPeriodicThreshold_ratio_le_at_lower
        (lower := tenMillionLower)
        (by norm_num [tenMillionLower]) hLower
        (pattern.toCardPeriodicCertificate hBout)
    have hfinite :
        fiveMillionR263BaseFiniteThresholdPayment
            N B pattern.pivots 7 3 / N ≤
          2 * (1 / 3 : Rat) / 25 +
            2 * ((1 / 3 : Rat) + 392) / tenMillionLower := by
      convert hfiniteOriginal using 1 <;>
        norm_num [fiveMillionR263BaseFiniteThresholdPayment,
          fiveMillionFiniteEventCount]
    have htailRaw :=
      hallBaseTailSquarePayment_eightThree_tenMillion_odd_ratio_le
        hLower hUpper hBout pattern.pivots_card
        pattern.pivots_subset_residual hpivotsOdd
    have htail :
        hallBaseTailSquarePayment N B pattern.pivots 7 3 / N ≤
          (4 / 9 : Rat) * tenMillionPeriodicOddTail := by
      simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
        htailRaw
    exact ⟨tenMillionOneCellPatternTerminal
      hLower hUpper hBout hBprop hcellCertificate parity cell
      hcharged (tenMillionPeriodicCharge 85) hchargedRatio
      hclass honeCell pattern
      pattern.pivots_subset_residual
      .oneCellMatch (1 / 3) 392 (4 / 9)
      hfinite htail (by
        norm_num [tenMillionPeriodicOddBranchTotal,
          tenMillionPeriodicRow, tenMillionPeriodicCharge,
          tenMillionPeriodicFinite, tenMillionCellCharge,
          tenMillionLower]
        linarith)⟩
  · let failure := hfailure.some
    let totalCharge := charged ∪ failure.extraCharge
    have htotalSubset : totalCharge ⊆ hallResidual N B := by
      intro x hx
      rcases Finset.mem_union.mp hx with hxc | hxe
      · exact hcharged hxc
      · exact (Finset.mem_sdiff.mp (failure.extraChargeSubset hxe)).1
    have hNpos : (0 : Rat) < N := by
      exact_mod_cast
        (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
    have htotalCard :
        (totalCharge.card : Rat) ≤
          charged.card + failure.extraCharge.card := by
      exact_mod_cast (Finset.card_union_le charged failure.extraCharge)
    have hextraRatio :
        (failure.extraCharge.card : Rat) / N ≤
          49 / tenMillionLower := by
      calc
        (failure.extraCharge.card : Rat) / N ≤ 49 / N := by
          apply div_le_div_of_nonneg_right _ hNpos.le
          exact_mod_cast failure.extraChargeCard
        _ ≤ 49 / tenMillionLower := by
          apply div_le_div_of_nonneg_left (by norm_num)
            (by norm_num [tenMillionLower])
          exact_mod_cast hLower
    have htotalRatio :
        (totalCharge.card : Rat) / N ≤
          tenMillionPeriodicCharge 134 := by
      calc
        (totalCharge.card : Rat) / N ≤
            (charged.card : Rat) / N +
              (failure.extraCharge.card : Rat) / N := by
          rw [← add_div]
          exact div_le_div_of_nonneg_right htotalCard hNpos.le
        _ ≤ tenMillionPeriodicCharge 85 + 49 / tenMillionLower :=
          add_le_add hchargedRatio hextraRatio
        _ = tenMillionPeriodicCharge 134 := by
          norm_num [tenMillionPeriodicCharge, tenMillionLower]
          ring
    have hfinalClass :
        ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
          x % 4 = if parity then 3 else 1 := by
      intro x hx
      apply hclass x
      have hxParts := Finset.mem_sdiff.mp hx
      have hxNotCharged : x ∉ charged := by
        intro hxc
        exact hxParts.2 (Finset.mem_union_left _ hxc)
      exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
    have hfinalCell :
        ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
          oddModNineResidue x = cell := by
      intro x hx
      apply honeCell x
      have hxParts := Finset.mem_sdiff.mp hx
      have hxNotCharged : x ∉ charged := by
        intro hxc
        exact hxParts.2 (Finset.mem_union_left _ hxc)
      exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
    rcases failure.pattern with hfibreTwo | hfibreThree
    · let produced := hfibreTwo.some
      let pattern := produced.1
      have hpivotsOdd :=
        fiveMillionOneCellPatternPivots_odd
          parity pattern produced.2 hclass
      have hfiniteOriginal :=
        fiveMillionCardPeriodicThreshold_ratio_le_at_lower
          (lower := tenMillionLower)
          (by norm_num [tenMillionLower]) hLower
          (pattern.toCardPeriodicCertificate hBout)
      have hfinite :
          fiveMillionR263BaseFiniteThresholdPayment
              N B pattern.pivots 7 2 / N ≤
            2 * (53 / 147 : Rat) / 25 +
              2 * ((53 / 147 : Rat) + 19_928 / 49) /
                tenMillionLower := by
        convert hfiniteOriginal using 1 <;>
          norm_num [fiveMillionR263BaseFiniteThresholdPayment,
            fiveMillionFiniteEventCount]
      have htailRaw :=
        hallBaseTailSquarePayment_sixTwo_tenMillion_odd_ratio_le
          hLower hUpper hBout pattern.pivots_card
          pattern.pivots_subset_residual hpivotsOdd
      have htail :
          hallBaseTailSquarePayment N B pattern.pivots 7 2 / N ≤
            (2 / 5 : Rat) * tenMillionPeriodicOddTail := by
        simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
          htailRaw
      exact ⟨tenMillionOneCellPatternTerminal
        hLower hUpper hBout hBprop hcellCertificate parity cell
        htotalSubset (tenMillionPeriodicCharge 134) htotalRatio
        hfinalClass hfinalCell pattern
        pattern.pivots_subset_residual
        .oneCellFibreTwo (53 / 147) (19_928 / 49) (2 / 5)
        hfinite htail (by
          norm_num [tenMillionPeriodicOddBranchTotal,
            tenMillionPeriodicRow, tenMillionPeriodicCharge,
            tenMillionPeriodicFinite, tenMillionCellCharge,
            tenMillionLower]
          linarith)⟩
    · let produced := hfibreThree.some
      let pattern := produced.1
      have hpivotsOdd :=
        fiveMillionOneCellPatternPivots_odd
          parity pattern produced.2 hclass
      have hfiniteOriginal :=
        fiveMillionCardPeriodicThreshold_ratio_le_at_lower
          (lower := tenMillionLower)
          (by norm_num [tenMillionLower]) hLower
          (pattern.toCardPeriodicCertificate hBout)
      have hfinite :
          fiveMillionR263BaseFiniteThresholdPayment
              N B pattern.pivots 7 3 / N ≤
            2 * (1 / 3 : Rat) / 25 +
              2 * ((1 / 3 : Rat) + 392) / tenMillionLower := by
        convert hfiniteOriginal using 1 <;>
          norm_num [fiveMillionR263BaseFiniteThresholdPayment,
            fiveMillionFiniteEventCount]
      have htailRaw :=
        hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
          hLower hUpper hBout pattern.pivots_card
          pattern.pivots_subset_residual hpivotsOdd
      have htail :
          hallBaseTailSquarePayment N B pattern.pivots 7 3 / N ≤
            (1 / 2 : Rat) * tenMillionPeriodicOddTail := by
        simpa [tenMillionPeriodicOddTail, tenMillionOddTailEnvelope] using
          htailRaw
      exact ⟨tenMillionOneCellPatternTerminal
        hLower hUpper hBout hBprop hcellCertificate parity cell
        htotalSubset (tenMillionPeriodicCharge 134) htotalRatio
        hfinalClass hfinalCell pattern
        pattern.pivots_subset_residual
        .oneCellFibreThree (1 / 3) 392 (1 / 2)
        hfinite htail (by
          norm_num [tenMillionPeriodicOddBranchTotal,
            tenMillionPeriodicRow, tenMillionPeriodicCharge,
            tenMillionPeriodicFinite, tenMillionCellCharge,
            tenMillionLower]
          linarith)⟩

noncomputable def tenMillionSixPivotCellTerminal
    {N cellCount threshold : Nat}
    {B charged pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = cellCount)
    (hcharged : charged ⊆ hallResidual N B)
    (chargeEnvelope : Rat)
    (hchargedRatio : (charged.card : Rat) / N ≤ chargeEnvelope)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells)
    (hpivotsCard : pivots.card = 6)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged)
    (branch : TenMillionPeriodicOddBranch)
    (finiteEnvelope tailEnvelope : Rat)
    (hthresholdPositive : 0 < threshold)
    (hthresholdCard : threshold ≤ 6)
    (hfinite :
      fiveMillionR263BaseFiniteThresholdPayment
        N B pivots 7 threshold / N ≤ finiteEnvelope)
    (htail :
      hallBaseTailSquarePayment N B pivots 7 threshold / N ≤
        tailEnvelope)
    (hcomponents :
      cellCount * tenMillionDiagonalOneOddCell +
          chargeEnvelope +
          finiteEnvelope + tailEnvelope ≤
        tenMillionPeriodicOddBranchTotal branch) :
    TenMillionR263TerminalCertificate N B := by
  have hdiagonal :=
    tenMillionStructuredOneOddCells_ratio_le
      hLower hUpper hcellCertificate hBout hBprop
      parity cells hclass hcells
  have hdiagonal' :
      ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        cellCount * tenMillionDiagonalOneOddCell := by
    simpa [hcellsCard] using hdiagonal
  exact tenMillionPeriodicOddTerminalOfComponents
    hLower hcharged chargeEnvelope hchargedRatio hpivotsCard
      hthresholdPositive hthresholdCard
      (hpivotsStructured.trans Finset.sdiff_subset)
      branch finiteEnvelope tailEnvelope
      hdiagonal' hfinite htail hcomponents

noncomputable def tenMillionTwoCellTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hcellsCard : cells.card = 2)
    (hcellSize : ∀ cell ∈ cells,
      3 ≤ ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    TenMillionR263TerminalCertificate N B := by
  let produced := fiveMillionTwoCellSixPivotPatternOfCells
    parity cells hcellsCard hcellSize hclass
  let pattern : FiveMillionTwoCellSixPivotPattern N B := produced.1
  let pivots := pattern.pivots
  have hpivotsStructured : pivots ⊆
      fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact produced.2 i
  have hpivotsOdd :=
    tenMillionPivotsOdd_of_structuredClass
      parity hpivotsStructured hclass
  have hfiniteOriginal :=
    fiveMillionTwoCellBasePeriodicThreshold_ratio_le_at_lower
      (lower := tenMillionLower)
      (by norm_num [tenMillionLower]) hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 4 / N ≤
        2 * (40 / 147 : Rat) / 25 +
          2 * ((40 / 147 : Rat) + 17_120 / 49) /
            tenMillionLower := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htailRaw :=
    hallBaseTailSquarePayment_sixFour_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivots_card
      pattern.pivots_subset_residual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 4 / N ≤
        (2 / 3 : Rat) * tenMillionPeriodicOddTail := by
    simpa [pivots, tenMillionPeriodicOddTail,
      tenMillionOddTailEnvelope] using htailRaw
  exact tenMillionSixPivotCellTerminal
    hLower hUpper hBout hBprop hcellCertificate parity cells
    hcellsCard hcharged (tenMillionPeriodicCharge 85) hchargedRatio
    hclass hcells
    pattern.pivots_card hpivotsStructured .twoCells
    (2 * (40 / 147 : Rat) / 25 +
      2 * ((40 / 147 : Rat) + 17_120 / 49) / tenMillionLower)
    ((2 / 3 : Rat) * tenMillionPeriodicOddTail)
    (by norm_num) (by norm_num) hfinite htail
    (by
      norm_num [tenMillionPeriodicOddBranchTotal,
        tenMillionPeriodicRow, tenMillionPeriodicCharge,
        tenMillionPeriodicFinite, tenMillionCellCharge,
        tenMillionLower]
      linarith)

noncomputable def tenMillionThreeCellTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hcellsCard : cells.card = 3)
    (hcellSize : ∀ cell ∈ cells,
      2 ≤ ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    TenMillionR263TerminalCertificate N B := by
  let produced := fiveMillionThreeCellSixPivotPatternOfCells
    parity cells hcellsCard hcellSize hclass
  let pattern : FiveMillionThreeCellSixPivotPattern N B := produced.1
  let pivots := pattern.pivots
  have hpivotsStructured : pivots ⊆
      fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact produced.2 i
  have hpivotsOdd :=
    tenMillionPivotsOdd_of_structuredClass
      parity hpivotsStructured hclass
  have hfiniteOriginal :=
    fiveMillionThreeCellBasePeriodicThreshold_ratio_le_at_lower
      (lower := tenMillionLower)
      (by norm_num [tenMillionLower]) hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N ≤
        2 * (57 / 196 : Rat) / 25 +
          2 * ((57 / 196 : Rat) + 71_307 / 196) /
            tenMillionLower := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htailRaw :=
    hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivots_card
      pattern.pivots_subset_residual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (1 / 2 : Rat) * tenMillionPeriodicOddTail := by
    simpa [pivots, tenMillionPeriodicOddTail,
      tenMillionOddTailEnvelope] using htailRaw
  exact tenMillionSixPivotCellTerminal
    hLower hUpper hBout hBprop hcellCertificate parity cells
    hcellsCard hcharged (tenMillionPeriodicCharge 85) hchargedRatio
    hclass hcells
    pattern.pivots_card hpivotsStructured .threeCells
    (2 * (57 / 196 : Rat) / 25 +
      2 * ((57 / 196 : Rat) + 71_307 / 196) / tenMillionLower)
    ((1 / 2 : Rat) * tenMillionPeriodicOddTail)
    (by norm_num) (by norm_num) hfinite htail
    (by
      norm_num [tenMillionPeriodicOddBranchTotal,
        tenMillionPeriodicRow, tenMillionPeriodicCharge,
        tenMillionPeriodicFinite, tenMillionCellCharge,
        tenMillionLower]
      linarith)

noncomputable def tenMillionFourCellTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hcellsCard : cells.card = 4)
    (hcellSize : ∀ cell ∈ cells,
      2 ≤ ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    TenMillionR263TerminalCertificate N B := by
  let produced := fiveMillionFourCellSixPivotPatternOfCells
    parity cells hcellsCard hcellSize hclass
  let pattern : FiveMillionFourCellSixPivotPattern N B := produced.1
  let pivots := pattern.pivots
  have hpivotsStructured : pivots ⊆
      fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact produced.2 i
  have hpivotsOdd :=
    tenMillionPivotsOdd_of_structuredClass
      parity hpivotsStructured hclass
  have hfiniteOriginal :=
    fiveMillionFourCellBasePeriodicThreshold_ratio_le_at_lower
      (lower := tenMillionLower)
      (by norm_num [tenMillionLower]) hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N ≤
        2 * (169 / 588 : Rat) / 25 +
          2 * ((169 / 588 : Rat) + 70_811 / 196) /
            tenMillionLower := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htailRaw :=
    hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivots_card
      pattern.pivots_subset_residual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (1 / 2 : Rat) * tenMillionPeriodicOddTail := by
    simpa [pivots, tenMillionPeriodicOddTail,
      tenMillionOddTailEnvelope] using htailRaw
  exact tenMillionSixPivotCellTerminal
    hLower hUpper hBout hBprop hcellCertificate parity cells
    hcellsCard hcharged (tenMillionPeriodicCharge 85) hchargedRatio
    hclass hcells
    pattern.pivots_card hpivotsStructured .fourCells
    (2 * (169 / 588 : Rat) / 25 +
      2 * ((169 / 588 : Rat) + 70_811 / 196) / tenMillionLower)
    ((1 / 2 : Rat) * tenMillionPeriodicOddTail)
    (by norm_num) (by norm_num) hfinite htail
    (by
      norm_num [tenMillionPeriodicOddBranchTotal,
        tenMillionPeriodicRow, tenMillionPeriodicCharge,
        tenMillionPeriodicFinite, tenMillionCellCharge,
        tenMillionLower]
      linarith)

noncomputable def tenMillionFiveCellTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hcellsCard : cells.card = 5)
    (hcellSize : ∀ cell ∈ cells,
      2 ≤ ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    TenMillionR263TerminalCertificate N B := by
  let produced := fiveMillionFiveCellSixPivotPatternOfCells
    parity cells hcellsCard hcellSize hclass
  let pattern : FiveMillionFiveCellSixPivotPattern N B := produced.1
  let pivots := pattern.pivots
  have hpivotsStructured : pivots ⊆
      fiveMillionStructuredResidual N B charged := by
    intro pivot hpivot
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
    exact produced.2 i
  have hpivotsOdd :=
    tenMillionPivotsOdd_of_structuredClass
      parity hpivotsStructured hclass
  have hfiniteOriginal :=
    fiveMillionFiveCellBasePeriodicThreshold_ratio_le_at_lower
      (lower := tenMillionLower)
      (by norm_num [tenMillionLower]) hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N ≤
        2 * (167 / 588 : Rat) / 25 +
          2 * ((167 / 588 : Rat) + 70_307 / 196) /
            tenMillionLower := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htailRaw :=
    hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivots_card
      pattern.pivots_subset_residual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (1 / 2 : Rat) * tenMillionPeriodicOddTail := by
    simpa [pivots, tenMillionPeriodicOddTail,
      tenMillionOddTailEnvelope] using htailRaw
  exact tenMillionSixPivotCellTerminal
    hLower hUpper hBout hBprop hcellCertificate parity cells
    hcellsCard hcharged (tenMillionPeriodicCharge 85) hchargedRatio
    hclass hcells
    pattern.pivots_card hpivotsStructured .fiveCells
    (2 * (167 / 588 : Rat) / 25 +
      2 * ((167 / 588 : Rat) + 70_307 / 196) / tenMillionLower)
    ((1 / 2 : Rat) * tenMillionPeriodicOddTail)
    (by norm_num) (by norm_num) hfinite htail
    (by
      norm_num [tenMillionPeriodicOddBranchTotal,
        tenMillionPeriodicRow, tenMillionPeriodicCharge,
        tenMillionPeriodicFinite, tenMillionCellCharge,
        tenMillionLower]
      linarith)

noncomputable def tenMillionAtLeastSixCellTerminal
    {N cellCount : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = cellCount)
    (hcellsLower : 6 ≤ cells.card)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤ tenMillionPeriodicCharge 85)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (branch : TenMillionPeriodicOddBranch)
    (hcomponents :
      cellCount * tenMillionDiagonalOneOddCell +
          tenMillionPeriodicCharge 85 +
          (2 * (55 / 196 : Rat) / 25 +
            2 * ((55 / 196 : Rat) + 69_795 / 196) /
              tenMillionLower) +
          (1 / 2 : Rat) * tenMillionPeriodicOddTail ≤
        tenMillionPeriodicOddBranchTotal branch) :
    TenMillionR263TerminalCertificate N B := by
  let produced :=
    fiveMillionSixPivotPatternWithStructuredOfActiveCells
      parity cells hcellsLower hactive hclass
  let pivots : Finset Nat := produced.1
  let pattern : FiveMillionSixPivotPattern N B pivots := produced.2.1
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged :=
    produced.2.2
  have hpivotsOdd :=
    tenMillionPivotsOdd_of_structuredClass
      parity hpivotsStructured hclass
  have hfiniteOriginal :=
    fiveMillionBasePeriodicThreshold_ratio_le_at_lower
      (lower := tenMillionLower)
      (by norm_num [tenMillionLower]) hLower
      (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N ≤
        2 * (55 / 196 : Rat) / 25 +
          2 * ((55 / 196 : Rat) + 69_795 / 196) /
            tenMillionLower := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount] using hfiniteOriginal
  have htailRaw :=
    hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
      hLower hUpper hBout pattern.pivotsCard
      pattern.pivotsResidual hpivotsOdd
  have htail :
      hallBaseTailSquarePayment N B pivots 7 3 / N ≤
        (1 / 2 : Rat) * tenMillionPeriodicOddTail := by
    simpa [tenMillionPeriodicOddTail,
      tenMillionOddTailEnvelope] using htailRaw
  exact tenMillionSixPivotCellTerminal
    hLower hUpper hBout hBprop hcellCertificate parity cells
    hcellsCard hcharged (tenMillionPeriodicCharge 85) hchargedRatio
    hclass hcells
    pattern.pivotsCard hpivotsStructured branch
    (2 * (55 / 196 : Rat) / 25 +
      2 * ((55 / 196 : Rat) + 69_795 / 196) / tenMillionLower)
    ((1 / 2 : Rat) * tenMillionPeriodicOddTail)
    (by norm_num) (by norm_num) hfinite htail hcomponents

lemma tenMillionR263SparseCellChargeAfter_card_le_forty
    {N : Nat} {B charged : Finset Nat}
    (hactive :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).Nonempty) :
    (fiveMillionR263SparseCellChargeAfter N B charged).card ≤ 40 := by
  classical
  let active := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  let inactive := Finset.univ \ active
  have hactivePositive : 0 < active.card := by
    exact Finset.card_pos.mpr (by simpa [active] using hactive)
  have hactiveSubset : active ⊆ (Finset.univ : Finset (Fin 9)) := by
    exact Finset.subset_univ active
  have hpartition :
      inactive.card + active.card = 9 := by
    simpa [inactive] using
      Finset.card_sdiff_add_card_eq_card hactiveSubset
  have hinactiveCard : inactive.card ≤ 8 := by omega
  have hsubset : fiveMillionR263SparseCellChargeAfter N B charged ⊆
      inactive.biUnion
        (fiveMillionR263ChargedResidualModNineCell N B charged) := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, ?_, ?_⟩
    · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxParts.2⟩
    · exact Finset.mem_filter.mpr ⟨hxParts.1, rfl⟩
  calc
    (fiveMillionR263SparseCellChargeAfter N B charged).card ≤
        (inactive.biUnion
          (fiveMillionR263ChargedResidualModNineCell N B charged)).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ cell ∈ inactive,
        (fiveMillionR263ChargedResidualModNineCell N B charged cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive)
        (t := fiveMillionR263ChargedResidualModNineCell N B charged)
    _ ≤ ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionR263InactiveModNineCellAfter_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ ≤ 8 * 5 := by omega
    _ = 40 := by norm_num

/-- Complete one-odd dispatcher for an arbitrary charged valuation class.
The outside class pays the 27 even-cell charge and at most 45 points from the
other odd class.  Since an active cell exists, at most eight sparse cells
remain, so the final raw charge is at most 85 rather than the budgeted 90. -/
noncomputable def tenMillionOneOddChargedClassTerminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedRatio :
      (charged.card : Rat) / N ≤
        27 * tenMillionCellCharge + 45 / tenMillionLower)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcellsNonempty :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).Nonempty) :
    TenMillionR263TerminalCertificate N B := by
  classical
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  have hnonempty : cells.Nonempty := by
    simpa [cells] using hcellsNonempty
  have hpositive : 0 < cells.card := Finset.card_pos.mpr hnonempty
  have hupper : cells.card ≤ 9 := by
    calc
      cells.card ≤ Fintype.card (Fin 9) := Finset.card_le_univ cells
      _ = 9 := by simp
  have htotalSubset : totalCharge ⊆ hallResidual N B :=
    fiveMillionR263TotalOddCharge_subset_residual hcharged
  have hsparseCard :
      (fiveMillionR263SparseCellChargeAfter N B charged).card ≤ 40 :=
    tenMillionR263SparseCellChargeAfter_card_le_forty hcellsNonempty
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hsparseRatio :
      ((fiveMillionR263SparseCellChargeAfter N B charged).card : Rat) / N ≤
        40 / tenMillionLower := by
    calc
      ((fiveMillionR263SparseCellChargeAfter N B charged).card : Rat) / N ≤
          40 / N := by
        apply div_le_div_of_nonneg_right _ hNpos.le
        exact_mod_cast hsparseCard
      _ ≤ 40 / tenMillionLower := by
        apply div_le_div_of_nonneg_left (by norm_num)
          (by norm_num [tenMillionLower])
        exact_mod_cast hLower
  have htotalCard :
      (totalCharge.card : Rat) ≤
        charged.card +
          (fiveMillionR263SparseCellChargeAfter N B charged).card := by
    exact_mod_cast (Finset.card_union_le charged
      (fiveMillionR263SparseCellChargeAfter N B charged))
  have htotalRatio :
      (totalCharge.card : Rat) / N ≤ tenMillionPeriodicCharge 85 := by
    calc
      (totalCharge.card : Rat) / N ≤
          (charged.card : Rat) / N +
            ((fiveMillionR263SparseCellChargeAfter N B charged).card : Rat) /
              N := by
        rw [← add_div]
        exact div_le_div_of_nonneg_right htotalCard hNpos.le
      _ ≤ (27 * tenMillionCellCharge + 45 / tenMillionLower) +
          40 / tenMillionLower :=
        add_le_add hchargedRatio hsparseRatio
      _ = tenMillionPeriodicCharge 85 := by
        norm_num [tenMillionPeriodicCharge, tenMillionLower]
        ring
  have hfinalClass :
      ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
        x % 4 = if parity then 3 else 1 := by
    intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  have hfinalCells :
      ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
        oddModNineResidue x ∈ cells := by
    intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx
  have hactive :
      ∀ cell ∈ cells,
        ∃ x ∈ fiveMillionStructuredResidual N B totalCharge,
          oddModNineResidue x = cell := by
    intro cell hcell
    exact fiveMillionR263ActiveCellAfter_has_finalStructuredPoint hcell
  have hcellSize :
      ∀ cell ∈ cells,
        6 ≤ ((fiveMillionStructuredResidual N B totalCharge).filter fun x =>
          oddModNineResidue x = cell).card := by
    intro cell hcell
    exact fiveMillionR263FinalActiveCell_card_ge_six hcell
  by_cases hsix : 6 ≤ cells.card
  · by_cases hsixExact : cells.card = 6
    · exact tenMillionAtLeastSixCellTerminal
        (cellCount := 6)
        hLower hUpper hBout hBprop hcellCertificate parity cells
        hsixExact hsix htotalSubset htotalRatio hfinalClass hfinalCells
        hactive .sixCells
        (by
          norm_num [tenMillionPeriodicOddBranchTotal,
            tenMillionPeriodicRow, tenMillionPeriodicCharge,
            tenMillionPeriodicFinite, tenMillionCellCharge,
            tenMillionLower]
          linarith)
    · by_cases hsevenExact : cells.card = 7
      · exact tenMillionAtLeastSixCellTerminal
          (cellCount := 7)
          hLower hUpper hBout hBprop hcellCertificate parity cells
          hsevenExact hsix htotalSubset htotalRatio hfinalClass hfinalCells
          hactive .sevenCells
          (by
            norm_num [tenMillionPeriodicOddBranchTotal,
              tenMillionPeriodicRow, tenMillionPeriodicCharge,
              tenMillionPeriodicFinite, tenMillionCellCharge,
              tenMillionLower]
            linarith)
      · by_cases heightExact : cells.card = 8
        · exact tenMillionAtLeastSixCellTerminal
            (cellCount := 8)
            hLower hUpper hBout hBprop hcellCertificate parity cells
            heightExact hsix htotalSubset htotalRatio hfinalClass hfinalCells
            hactive .eightCellsFailure
            (by
              norm_num [tenMillionPeriodicOddBranchTotal,
                tenMillionPeriodicRow, tenMillionPeriodicCharge,
                tenMillionPeriodicFinite, tenMillionCellCharge,
                tenMillionLower]
              linarith)
        · have hnineExact : cells.card = 9 := by omega
          exact tenMillionAtLeastSixCellTerminal
            (cellCount := 9)
            hLower hUpper hBout hBprop hcellCertificate parity cells
            hnineExact hsix htotalSubset htotalRatio hfinalClass hfinalCells
            hactive .nineCellsFailure
            (by
              norm_num [tenMillionPeriodicOddBranchTotal,
                tenMillionPeriodicRow, tenMillionPeriodicCharge,
                tenMillionPeriodicFinite, tenMillionCellCharge,
                tenMillionLower]
              linarith)
  · by_cases hfive : cells.card = 5
    · exact tenMillionFiveCellTerminal
        hLower hUpper hBout hBprop hcellCertificate parity cells
        htotalSubset htotalRatio hfive
        (fun cell hcell => (hcellSize cell hcell).trans' (by norm_num))
        hfinalClass hfinalCells
    · by_cases hfour : cells.card = 4
      · exact tenMillionFourCellTerminal
          hLower hUpper hBout hBprop hcellCertificate parity cells
          htotalSubset htotalRatio hfour
          (fun cell hcell => (hcellSize cell hcell).trans' (by norm_num))
          hfinalClass hfinalCells
      · by_cases hthree : cells.card = 3
        · exact tenMillionThreeCellTerminal
            hLower hUpper hBout hBprop hcellCertificate parity cells
            htotalSubset htotalRatio hthree
            (fun cell hcell => (hcellSize cell hcell).trans' (by norm_num))
            hfinalClass hfinalCells
        · by_cases htwo : cells.card = 2
          · exact tenMillionTwoCellTerminal
              hLower hUpper hBout hBprop hcellCertificate parity cells
              htotalSubset htotalRatio htwo
              (fun cell hcell => (hcellSize cell hcell).trans' (by norm_num))
              hfinalClass hfinalCells
          · have hone : cells.card = 1 := by omega
            let cell : Fin 9 := Classical.choose hnonempty
            have hcellMem : cell ∈ cells :=
              Classical.choose_spec hnonempty
            have honeCell :
                ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
                  oddModNineResidue x = cell := by
              intro x hx
              exact (Finset.card_le_one.mp (by omega))
                (oddModNineResidue x) (hfinalCells x hx) cell hcellMem
            exact tenMillionOneCellTerminal
              hLower hUpper hBout hBprop hcellCertificate parity cell
              htotalSubset htotalRatio (hcellSize cell hcellMem)
              hfinalClass honeCell

/-- Complete dispatcher for either odd mod-four valuation class on the
ten-million block. -/
noncomputable def tenMillionR263OneOddValuationTerminal
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hcls : cls = .oddOne ∨ cls = .oddThree)
    (houtsideRatio :
      ((fiveMillionR263OutsideValuationCharge N B cls).card : Rat) / N ≤
        27 * tenMillionCellCharge + 45 / tenMillionLower)
    (hcellsNonempty :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B cls)).Nonempty) :
    TenMillionR263TerminalCertificate N B := by
  classical
  cases cls with
  | evenOne => simp at hcls
  | evenTwo => simp at hcls
  | evenThree => simp at hcls
  | oddOne =>
      apply tenMillionOneOddChargedClassTerminal
        hLower hUpper hBout hBprop hcellCertificate
        (fiveMillionR263OutsideValuationCharge_subset_residual
          N B .oddOne)
        houtsideRatio false
      · intro x hx
        rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
        simpa using fiveMillionValuationPart_oddOne hx
      · exact hcellsNonempty
  | oddThree =>
      apply tenMillionOneOddChargedClassTerminal
        hLower hUpper hBout hBprop hcellCertificate
        (fiveMillionR263OutsideValuationCharge_subset_residual
          N B .oddThree)
        houtsideRatio true
      · intro x hx
        rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
        simpa using fiveMillionValuationPart_oddThree hx
      · exact hcellsNonempty

#print axioms tenMillionPivotsOdd_of_structuredClass
#print axioms tenMillionPeriodicOddTerminalOfComponents
#print axioms tenMillionOneCellTerminal
#print axioms tenMillionTwoCellTerminal
#print axioms tenMillionFiveCellTerminal
#print axioms tenMillionAtLeastSixCellTerminal
#print axioms tenMillionR263SparseCellChargeAfter_card_le_forty
#print axioms tenMillionOneOddChargedClassTerminal
#print axioms tenMillionR263OneOddValuationTerminal

end Erdos848
