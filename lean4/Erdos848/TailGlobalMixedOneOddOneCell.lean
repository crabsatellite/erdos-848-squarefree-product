import Erdos848.TailFiveMillionOneCellPatternDichotomy
import Erdos848.TailFiveMillionOneCellActualTail
import Erdos848.TailFiveMillionR263Terminal
import Erdos848.TailFiveMillionOneOddCertificate
import Erdos848.TailGlobalMixedOneOddSevenCellGenerated
import Erdos848.GeneratedTailDiagonalCoverage.TailS1EnvelopeAggregate
import Erdos848.GeneratedTailDiagonalCoverage.TailS1ThreeFibreEnvelopeAggregate

namespace Erdos848

/-! Direct R263 close for the one-odd, one-active-cell branch. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedOneOddOneCellDiagonalEnvelope : Rat :=
  708045205594373 / 10^18

def globalMixedOneOddOneCellThreeFibreDiagonalEnvelope : Rat :=
  47878235598355 / 10^18

def globalMixedOneOddOneCellMatchFiniteEnvelope : Rat :=
  2 * (588 / 1764 : Rat) / 25 +
    2 * ((588 / 1764 : Rat) +
      ((588 * (1764 - 588) : Nat) : Rat) / 1764) / 5_000_000

def globalMixedOneOddOneCellFibreTwoFiniteEnvelope : Rat :=
  2 * (636 / 1764 : Rat) / 25 +
    2 * ((636 / 1764 : Rat) +
      ((636 * (1764 - 636) : Nat) : Rat) / 1764) / 5_000_000

def globalMixedOneOddOneCellFibreThreeFiniteEnvelope : Rat :=
  globalMixedOneOddOneCellMatchFiniteEnvelope

def globalMixedOneOddOneCellMatchTailEnvelope : Rat :=
  (4 / 9 : Rat) * fiveMillionOddRoot7Envelope +
    (4 / 9 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25

def globalMixedOneOddOneCellFibreTwoTailEnvelope : Rat :=
  (2 / 5 : Rat) * fiveMillionOddRoot7Envelope +
    (2 / 5 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25

def globalMixedOneOddOneCellFibreThreeTailEnvelope : Rat :=
  (1 / 2 : Rat) * fiveMillionOddRoot7Envelope +
    (1 / 2 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25

def globalMixedOneOddOneCellMatchBudget : Rat :=
  globalMixedOneOddOneCellDiagonalEnvelope + 128 / 5_000_000 +
    globalMixedOneOddOneCellMatchFiniteEnvelope +
      globalMixedOneOddOneCellMatchTailEnvelope

def globalMixedOneOddOneCellFibreTwoBudget : Rat :=
  globalMixedOneOddOneCellThreeFibreDiagonalEnvelope + 177 / 5_000_000 +
    globalMixedOneOddOneCellFibreTwoFiniteEnvelope +
      globalMixedOneOddOneCellFibreTwoTailEnvelope

def globalMixedOneOddOneCellFibreThreeBudget : Rat :=
  globalMixedOneOddOneCellThreeFibreDiagonalEnvelope + 177 / 5_000_000 +
    globalMixedOneOddOneCellFibreThreeFiniteEnvelope +
      globalMixedOneOddOneCellFibreThreeTailEnvelope

theorem globalMixedOneOddOneCellMatchBudget_le_branchCeiling :
    globalMixedOneOddOneCellMatchBudget ≤
      fiveMillionR263BranchCeiling .oddOneOneCellMatch := by
  norm_num [globalMixedOneOddOneCellMatchBudget,
    globalMixedOneOddOneCellDiagonalEnvelope,
    globalMixedOneOddOneCellMatchFiniteEnvelope,
    globalMixedOneOddOneCellMatchTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem globalMixedOneOddOneCellFibreTwoBudget_le_branchCeiling :
    globalMixedOneOddOneCellFibreTwoBudget ≤
      fiveMillionR263BranchCeiling .oddOneOneCellFibreTwo := by
  norm_num [globalMixedOneOddOneCellFibreTwoBudget,
    globalMixedOneOddOneCellThreeFibreDiagonalEnvelope,
    globalMixedOneOddOneCellFibreTwoFiniteEnvelope,
    globalMixedOneOddOneCellFibreTwoTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem globalMixedOneOddOneCellFibreThreeBudget_le_branchCeiling :
    globalMixedOneOddOneCellFibreThreeBudget ≤
      fiveMillionR263BranchCeiling .oddOneOneCellFibreThree := by
  norm_num [globalMixedOneOddOneCellFibreThreeBudget,
    globalMixedOneOddOneCellThreeFibreDiagonalEnvelope,
    globalMixedOneOddOneCellFibreThreeFiniteEnvelope,
    globalMixedOneOddOneCellMatchFiniteEnvelope,
    globalMixedOneOddOneCellFibreThreeTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem globalMixedOneOddOneCellStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
      globalMixedOneOddOneCellDiagonalEnvelope := by
  let cells : Finset (Fin 9) := {cell}
  have hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells := by
    intro x hx
    simp [cells, honeCell x hx]
  have hsubset := fiveMillionStructuredResidual_subset_generatedCellUnion
    hBout hBprop parity cells hclass hcells
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        ((tailDiagonalCellUnion N parity cells).card : Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ ≤ globalMixedOneOddOneCellDiagonalEnvelope := by
      simpa [globalMixedOneOddOneCellDiagonalEnvelope] using
        GeneratedTailDiagonalCoverage.fiveMillionOneOddS1Diagonal_kernel_close
          N hLower hUpper parity cells (by simp [cells])

theorem fiveMillionOneCellFailureStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell)
    (failure : FiveMillionOneCellFibreFailureData
      N B charged parity cell) :
    ((fiveMillionStructuredResidual N B
      (charged ∪ failure.extraCharge)).card : Rat) / N ≤
      globalMixedOneOddOneCellThreeFibreDiagonalEnvelope := by
  have hsubset : fiveMillionStructuredResidual N B
      (charged ∪ failure.extraCharge) ⊆
      tailDiagonalThreeFibreCover N
        { parity := parity, residue := cell } failure.residues := by
    intro x hx
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotUnion := hxParts.2
    have hxNotCharged : x ∉ charged := by
      intro hxc
      exact hxNotUnion (Finset.mem_union_left _ hxc)
    have hxNotExtra : x ∉ failure.extraCharge := by
      intro hxe
      exact hxNotUnion (Finset.mem_union_right _ hxe)
    have hxOld : x ∈ fiveMillionStructuredResidual N B charged :=
      Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
    have hxPoint : x ∈
        (fiveMillionStructuredResidual N B charged).filter fun y =>
          oddModNineResidue y = cell :=
      Finset.mem_filter.mpr ⟨hxOld, honeCell x hxOld⟩
    have hxSupport := failure.support x
      (Finset.mem_sdiff.mpr ⟨hxPoint, hxNotExtra⟩)
    apply Finset.mem_biUnion.mpr
    refine ⟨fiveMillionNatModFortyNine x, hxSupport, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨?_, rfl⟩
    apply Finset.mem_filter.mpr
    refine ⟨hallResidual_subset_generatedTailDiagonalBad
      hBout hBprop hxParts.1, ?_⟩
    refine ⟨by simpa [OddModNineCell.modFour] using hclass x hxOld, ?_⟩
    have hcellValue := congrArg Fin.val (honeCell x hxOld)
    simpa [oddModNineResidue] using hcellValue
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B
      (charged ∪ failure.extraCharge)).card : Rat) / N ≤
        ((tailDiagonalThreeFibreCover N
          { parity := parity, residue := cell } failure.residues).card : Rat) /
            N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ ≤ globalMixedOneOddOneCellThreeFibreDiagonalEnvelope := by
      simpa [globalMixedOneOddOneCellThreeFibreDiagonalEnvelope] using
        GeneratedTailDiagonalCoverage.fiveMillionOneOddS1ThreeFibreDiagonal_kernel_close
            N hLower hUpper parity cell failure.residues failure.residuesCard

theorem fiveMillionOneCellPatternPivots_odd
    {N n threshold extra : Nat} {B charged : Finset Nat}
    (parity : Bool)
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (hpivotStructured : ∀ i,
      pattern.pivot i ∈ fiveMillionStructuredResidual N B charged)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    ∀ pivot ∈ pattern.pivots, Odd pivot := by
  intro pivot hpivot
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hpivot
  have hmod := hclass (pattern.pivot i) (hpivotStructured i)
  apply odd_of_mod_four_eq_one_or_three
  cases parity <;> simp_all

noncomputable def fiveMillionOneCellR263TerminalOfComponents
    {N n threshold extra chargeCap : Nat} {B totalCharge : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hcharged : totalCharge ⊆ hallResidual N B)
    (hchargedCard : totalCharge.card ≤ chargeCap)
    (pattern : FiveMillionOneCellPivotPattern N B n threshold extra)
    (branch : FiveMillionR263Branch)
    (diagonalEnvelope finiteEnvelope tailEnvelope : Rat)
    (hpivotsOdd : ∀ pivot ∈ pattern.pivots, Odd pivot)
    (hdiagonal :
      ((fiveMillionStructuredResidual N B totalCharge).card : Rat) / N ≤
        diagonalEnvelope)
    (hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pattern.pivots 7 threshold /
        N ≤ finiteEnvelope)
    (htail : hallBaseTailSquarePayment N B pattern.pivots 7 threshold / N ≤
      tailEnvelope)
    (hcomponents : diagonalEnvelope + chargeCap / 5_000_000 +
      finiteEnvelope + tailEnvelope ≤ fiveMillionR263BranchCeiling branch) :
    FiveMillionR263TerminalCertificate N B := by
  have hpivotsCompletion : pattern.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp (pattern.pivots_subset_residual hpivot)).1
  have hchargeRatio : (totalCharge.card : Rat) / N ≤ chargeCap / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hchargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B totalCharge).card + totalCharge.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hcharged
  have hresidualN : ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + chargeCap / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B totalCharge).card : Rat) / N +
            (totalCharge.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ ≤ diagonalEnvelope + chargeCap / N :=
        add_le_add hdiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) ≤ N := by exact_mod_cast hLower
  have hchargeAtCut : (chargeCap : Rat) / N ≤ chargeCap / 5_000_000 :=
    div_le_div_of_nonneg_left (by positivity) (by norm_num) hLowerQ
  have hresidual : ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + chargeCap / 5_000_000 := by
    linarith
  exact
    { branch := branch
      pivots := pattern.pivots
      cutoff := 7
      threshold := threshold
      thresholdPositive := pattern.thresholdPositive
      thresholdCard := by
        rw [pattern.pivots_card]
        exact pattern.thresholdCard
      pivotsCompletion := hpivotsCompletion
      residualEnvelope := diagonalEnvelope + chargeCap / 5_000_000
      finiteEnvelope := finiteEnvelope
      tailEnvelope := tailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := hcomponents }

noncomputable def globalMixedOneOddOneCellMatchR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell)
    (produced : { p : FiveMillionOneCellPivotPattern N B 8 3 0 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged }) :
    FiveMillionR263TerminalCertificate N B := by
  let pattern := produced.1
  have hpivotsOdd := fiveMillionOneCellPatternPivots_odd
    parity pattern produced.2 hclass
  have hfiniteOriginal := fiveMillionCardPeriodicThreshold_ratio_le
    hLower (pattern.toCardPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pattern.pivots 7 3 / N ≤
        globalMixedOneOddOneCellMatchFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount,
      globalMixedOneOddOneCellMatchFiniteEnvelope] using hfiniteOriginal
  have htail := hallBaseTailSquarePayment_eightThree_ratio_le_actual
    hLower hBout pattern.pivots_card pattern.pivots_subset_residual hpivotsOdd
  exact fiveMillionOneCellR263TerminalOfComponents hLower
    hcharged hchargedCard pattern .oddOneOneCellMatch
    globalMixedOneOddOneCellDiagonalEnvelope
    globalMixedOneOddOneCellMatchFiniteEnvelope
    globalMixedOneOddOneCellMatchTailEnvelope hpivotsOdd
    (globalMixedOneOddOneCellStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop parity cell hclass honeCell)
    hfinite (by simpa [globalMixedOneOddOneCellMatchTailEnvelope] using htail)
    (by simpa [globalMixedOneOddOneCellMatchBudget] using
      globalMixedOneOddOneCellMatchBudget_le_branchCeiling)

noncomputable def globalMixedOneOddOneCellFibreTwoR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell)
    (failure : FiveMillionOneCellFibreFailureData N B charged parity cell)
    (produced : { p : FiveMillionOneCellPivotPattern N B 6 2 2 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged }) :
    FiveMillionR263TerminalCertificate N B := by
  let pattern := produced.1
  let totalCharge := charged ∪ failure.extraCharge
  have htotalSubset : totalCharge ⊆ hallResidual N B := by
    intro x hx
    rcases Finset.mem_union.mp hx with hxc | hxe
    · exact hcharged hxc
    · exact (Finset.mem_sdiff.mp (failure.extraChargeSubset hxe)).1
  have htotalCard : totalCharge.card ≤ 177 :=
    (Finset.card_union_le _ _).trans (by
      have hbase := hchargedCard
      have hextra := failure.extraChargeCard
      omega)
  have hpivotsOdd := fiveMillionOneCellPatternPivots_odd
    parity pattern produced.2 hclass
  have hfiniteOriginal := fiveMillionCardPeriodicThreshold_ratio_le
    hLower (pattern.toCardPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pattern.pivots 7 2 / N ≤
        globalMixedOneOddOneCellFibreTwoFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount,
      globalMixedOneOddOneCellFibreTwoFiniteEnvelope] using hfiniteOriginal
  have htail := hallBaseTailSquarePayment_sixTwo_ratio_le_actual
    hLower hBout pattern.pivots_card pattern.pivots_subset_residual hpivotsOdd
  exact fiveMillionOneCellR263TerminalOfComponents hLower
    htotalSubset htotalCard pattern .oddOneOneCellFibreTwo
    globalMixedOneOddOneCellThreeFibreDiagonalEnvelope
    globalMixedOneOddOneCellFibreTwoFiniteEnvelope
    globalMixedOneOddOneCellFibreTwoTailEnvelope hpivotsOdd
    (fiveMillionOneCellFailureStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop parity cell hclass honeCell failure)
    hfinite (by simpa [globalMixedOneOddOneCellFibreTwoTailEnvelope] using htail)
    (by simpa [globalMixedOneOddOneCellFibreTwoBudget] using
      globalMixedOneOddOneCellFibreTwoBudget_le_branchCeiling)

noncomputable def globalMixedOneOddOneCellFibreThreeR263Terminal
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell)
    (failure : FiveMillionOneCellFibreFailureData N B charged parity cell)
    (produced : { p : FiveMillionOneCellPivotPattern N B 6 3 0 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged }) :
    FiveMillionR263TerminalCertificate N B := by
  let pattern := produced.1
  let totalCharge := charged ∪ failure.extraCharge
  have htotalSubset : totalCharge ⊆ hallResidual N B := by
    intro x hx
    rcases Finset.mem_union.mp hx with hxc | hxe
    · exact hcharged hxc
    · exact (Finset.mem_sdiff.mp (failure.extraChargeSubset hxe)).1
  have htotalCard : totalCharge.card ≤ 177 :=
    (Finset.card_union_le _ _).trans (by
      have hbase := hchargedCard
      have hextra := failure.extraChargeCard
      omega)
  have hpivotsOdd := fiveMillionOneCellPatternPivots_odd
    parity pattern produced.2 hclass
  have hfiniteOriginal := fiveMillionCardPeriodicThreshold_ratio_le
    hLower (pattern.toCardPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pattern.pivots 7 3 / N ≤
        globalMixedOneOddOneCellFibreThreeFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      fiveMillionFiniteEventCount,
      globalMixedOneOddOneCellFibreThreeFiniteEnvelope,
      globalMixedOneOddOneCellMatchFiniteEnvelope] using hfiniteOriginal
  let tailCertificate := globalMixedBaseTailCertificate_actual
    hLower hBout pattern.pivots_card pattern.pivots_subset_residual hpivotsOdd
  have htail := hallBaseTailSquarePayment_sixThree_ratio_le tailCertificate
  exact fiveMillionOneCellR263TerminalOfComponents hLower
    htotalSubset htotalCard pattern .oddOneOneCellFibreThree
    globalMixedOneOddOneCellThreeFibreDiagonalEnvelope
    globalMixedOneOddOneCellFibreThreeFiniteEnvelope
    globalMixedOneOddOneCellFibreThreeTailEnvelope hpivotsOdd
    (fiveMillionOneCellFailureStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop parity cell hclass honeCell failure)
    hfinite (by simpa [globalMixedOneOddOneCellFibreThreeTailEnvelope] using htail)
    (by simpa [globalMixedOneOddOneCellFibreThreeBudget] using
      globalMixedOneOddOneCellFibreThreeBudget_le_branchCeiling)

noncomputable def globalMixedOneOddOneCellR263Terminal_of_generated
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cell : Fin 9)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hcellSize : 6 ≤
      ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (honeCell : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x = cell) :
    FiveMillionR263TerminalCertificate N B := by
  have hterminal : Nonempty (FiveMillionR263TerminalCertificate N B) := by
    rcases fiveMillionOneCellPatternDichotomy parity cell hcellSize hclass with
        hmatch | hfailure
    · exact ⟨globalMixedOneOddOneCellMatchR263Terminal
        hLower hUpper hBout hBprop parity cell hcharged hchargedCard
          hclass honeCell hmatch.some⟩
    · let failure := hfailure.some
      rcases failure.pattern with hfibreTwo | hfibreThree
      · exact ⟨globalMixedOneOddOneCellFibreTwoR263Terminal
          hLower hUpper hBout hBprop parity cell hcharged hchargedCard
            hclass honeCell failure hfibreTwo.some⟩
      · exact ⟨globalMixedOneOddOneCellFibreThreeR263Terminal
          hLower hUpper hBout hBprop parity cell hcharged hchargedCard
            hclass honeCell failure hfibreThree.some⟩
  exact Classical.choice hterminal

#print axioms globalMixedOneOddOneCellMatchBudget_le_branchCeiling
#print axioms globalMixedOneOddOneCellFibreTwoBudget_le_branchCeiling
#print axioms globalMixedOneOddOneCellFibreThreeBudget_le_branchCeiling
#print axioms globalMixedOneOddOneCellStructuredDiagonal_kernel_close
#print axioms fiveMillionOneCellFailureStructuredDiagonal_kernel_close
#print axioms globalMixedOneOddOneCellR263Terminal_of_generated

end Erdos848
