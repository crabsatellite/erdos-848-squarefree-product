import Erdos848.TailTenMillionEvenTwoCellSelection
import Erdos848.TailTenMillionEvenActualTail
import Erdos848.TailTenMillionCompactPaperDiagonal
import Erdos848.TailFiveMillionResidual
import Erdos848.TailTenMillionR263Terminal
import Erdos848.TailR263FourPivotTerminal

namespace Erdos848

/-!
# The two dense-cell terminals on the ten-million block

The diagonal, finite, and tail terms below are all bounds on pieces of the
Hall completion.  The only generated data used is in the
separately checked root, finite-pattern, and compact diagonal certificates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem tenMillionEvenTwoCell_residual_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    ((hallResidual N B).card : Rat) / N <=
      tenMillionDiagonalUnrestricted := by
  have hsubset := hallResidual_subset_tailDiagonalBad hBout hBprop
  have hcardNat := Finset.card_le_card hsubset
  have hcardRat :
      ((hallResidual N B).card : Rat) <=
        ((tailDiagonalBad N).card : Rat) := by
    exact_mod_cast hcardNat
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le
      (by norm_num [tenMillionLower] : 0 < tenMillionLower) hLower)
  exact (div_le_div_of_nonneg_right hcardRat hNpos.le).trans
    (tenMillionCompactDiagonalCertificates_kernel.unrestricted
      N hLower hUpper)

private theorem tenMillionEvenTwoCell_completion_ratio_le_components
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {left right : Fin 9}
    (hLower : tenMillionLower <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    (hfinite :
      fiveMillionR263BaseFiniteTriplePayment
          N B selection.pivots 23 / N <=
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint)
    {tailEnvelope : Rat}
    (htail :
      hallBaseTailSquarePayment
          N B selection.pivots 23 3 / N <= tailEnvelope) :
    ((hallCompletion N B).card : Rat) / N <=
      ((hallResidual N B).card : Rat) / N +
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
        tailEnvelope := by
  have hpivotsCompletion :
      selection.pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B valuation
        (selection.pivots_subset_part hpivot))).1
  have hraw := hallCompletion_card_le_fiveMillionR263FourPivotComponents
    (cutoff := 23) hBprop hpivotsCompletion selection.pivots_card
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le
      (by norm_num [tenMillionLower] : 0 < tenMillionLower) hLower)
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          fiveMillionR263BaseFiniteTriplePayment
            N B selection.pivots 23 +
          hallBaseTailSquarePayment
            N B selection.pivots 23 3) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseFiniteTriplePayment
          N B selection.pivots 23 / N +
        hallBaseTailSquarePayment
          N B selection.pivots 23 3 / N := by
      ring
    _ <= ((hallResidual N B).card : Rat) / N +
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
        tailEnvelope :=
      add_le_add (add_le_add le_rfl hfinite) htail

structure TenMillionR263FourPivotTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : TenMillionCorrectedEvenBranch
  pivots : Finset Nat
  pivotsCard : pivots.card = 4
  cutoff : Nat
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N ≤ residualEnvelope
  finiteBound :
    fiveMillionR263BaseFiniteTriplePayment
      N B pivots cutoff / N ≤ finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff 3 / N ≤ tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope ≤
      tenMillionCorrectedEvenBranchTotal branch

theorem TenMillionR263FourPivotTerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : TenMillionR263FourPivotTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N <
      tenMillionHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263FourPivotComponents
    (cutoff := certificate.cutoff) hBprop
      certificate.pivotsCompletion certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N ≤
        ((hallResidual N B).card +
          fiveMillionR263BaseFiniteTriplePayment N B certificate.pivots
            certificate.cutoff +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff 3) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseFiniteTriplePayment N B certificate.pivots
          certificate.cutoff / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff 3 / N := by
      ring
    _ ≤ certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add
        (add_le_add certificate.residualBound certificate.finiteBound)
        certificate.tailBound
    _ ≤ tenMillionCorrectedEvenBranchTotal certificate.branch :=
      certificate.componentTotalBound
    _ ≤ tenMillionCorrectedControllingTotal :=
      tenMillionCorrectedEvenBranchTotal_le_controlling certificate.branch
    _ < tenMillionHallTarget tenMillionLower := by
      exact tenMillionCorrectedControlling_lt_target_sub_fiftyFivePpm.trans
        (by norm_num [tenMillionHallTarget, tenMillionLower])
    _ ≤ tenMillionHallTarget N := tenMillionLowerTarget_le hLower

private noncomputable def tenMillionEvenTwoCellTerminalCertificateOfComponents
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {left right : Fin 9}
    {branch : TenMillionCorrectedEvenBranch}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    (hresidual :
      ((hallResidual N B).card : Rat) / N ≤
        tenMillionDiagonalUnrestricted)
    (hfinite :
      fiveMillionR263BaseFiniteTriplePayment
          N B selection.pivots 23 / N ≤
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint)
    {tailEnvelope : Rat}
    (htail :
      hallBaseTailSquarePayment
          N B selection.pivots 23 3 / N ≤ tailEnvelope)
    (htotal :
      tenMillionDiagonalUnrestricted +
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
        tailEnvelope ≤
          tenMillionCorrectedEvenBranchTotal branch) :
    TenMillionR263FourPivotTerminalCertificate N B := by
  exact
    { branch := branch
      pivots := selection.pivots
      pivotsCard := selection.pivots_card
      cutoff := 23
      pivotsCompletion := by
        intro pivot hpivot
        exact (Finset.mem_sdiff.mp
          (fiveMillionValuationPart_subset_residual N B valuation
            (selection.pivots_subset_part hpivot))).1
      residualEnvelope := tenMillionDiagonalUnrestricted
      finiteEnvelope :=
        tenMillionFourPayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint
      tailEnvelope := tailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := htotal }

noncomputable def tenMillionEvenOneTwoCellTerminalCertificate
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection :
      TenMillionEvenTwoCellSelection N B .evenOne left right) :
    TenMillionR263FourPivotTerminalCertificate N B := by
  have hresidual := tenMillionEvenTwoCell_residual_ratio_le
    hLower hUpper hBout hBprop
  have hfinite := selection.finite_ratio_le
    hLower hBout (Or.inl rfl)
  have htail :=
    hallBaseTailSquarePayment_fourThree_tenMillion_evenOne23_ratio_le
      hLower hUpper hBout selection.pivots_subset_part
        selection.pivots_card
  exact tenMillionEvenTwoCellTerminalCertificateOfComponents
    (branch := .e1TwoCells)
    selection hresidual hfinite htail (by
      unfold tenMillionCorrectedEvenBranchTotal
        TenMillionCorrectedEvenBranch.baseBranch tenMillionBranchTotal
      ring_nf
      apply le_rfl)

noncomputable def tenMillionEvenTwoTwoCellTerminalCertificate
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection :
      TenMillionEvenTwoCellSelection N B .evenTwo left right) :
    TenMillionR263FourPivotTerminalCertificate N B := by
  have hresidual := tenMillionEvenTwoCell_residual_ratio_le
    hLower hUpper hBout hBprop
  have hfinite := selection.finite_ratio_le
    hLower hBout (Or.inr (Or.inl rfl))
  have htail :=
    hallBaseTailSquarePayment_fourThree_tenMillion_evenTwo23_ratio_le
      hLower hUpper hBout selection.pivots_subset_part
        selection.pivots_card
  exact tenMillionEvenTwoCellTerminalCertificateOfComponents
    (branch := .e2TwoCells)
    selection hresidual hfinite htail (by
      unfold tenMillionCorrectedEvenBranchTotal
        TenMillionCorrectedEvenBranch.baseBranch tenMillionBranchTotal
      ring_nf
      apply le_rfl)

theorem tenMillionEvenOneTwoCellTerminal_ratio_le
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection :
      TenMillionEvenTwoCellSelection N B .evenOne left right) :
    ((hallCompletion N B).card : Rat) / N <=
      tenMillionBranchTotal .e1TwoCells := by
  have hresidual := tenMillionEvenTwoCell_residual_ratio_le
    hLower hUpper hBout hBprop
  have hfinite := selection.finite_ratio_le
    hLower hBout (Or.inl rfl)
  have htail :=
    hallBaseTailSquarePayment_fourThree_tenMillion_evenOne23_ratio_le
      hLower hUpper hBout selection.pivots_subset_part
        selection.pivots_card
  have hcomponents :=
    tenMillionEvenTwoCell_completion_ratio_le_components
      hLower hBout hBprop selection hfinite htail
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card : Rat) / N +
          tenMillionFourPayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
          (4 * tenMillionSquareTail23 / 25 +
            2 * tenMillionRootV1 / 3) := hcomponents
    _ <= tenMillionDiagonalUnrestricted +
          tenMillionFourPayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
          (4 * tenMillionSquareTail23 / 25 +
            2 * tenMillionRootV1 / 3) := by
      gcongr
    _ = tenMillionBranchTotal .e1TwoCells := by
      unfold tenMillionBranchTotal
      ring

theorem tenMillionEvenTwoTwoCellTerminal_ratio_le
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (selection :
      TenMillionEvenTwoCellSelection N B .evenTwo left right) :
    ((hallCompletion N B).card : Rat) / N <=
      tenMillionBranchTotal .e2TwoCells := by
  have hresidual := tenMillionEvenTwoCell_residual_ratio_le
    hLower hUpper hBout hBprop
  have hfinite := selection.finite_ratio_le
    hLower hBout (Or.inr (Or.inl rfl))
  have htail :=
    hallBaseTailSquarePayment_fourThree_tenMillion_evenTwo23_ratio_le
      hLower hUpper hBout selection.pivots_subset_part
        selection.pivots_card
  have hcomponents :=
    tenMillionEvenTwoCell_completion_ratio_le_components
      hLower hBout hBprop selection hfinite htail
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card : Rat) / N +
          tenMillionFourPayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
          (4 * tenMillionSquareTail23 / 25 +
            2 * tenMillionRootV2 / 3) := hcomponents
    _ <= tenMillionDiagonalUnrestricted +
          tenMillionFourPayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint +
          (4 * tenMillionSquareTail23 / 25 +
            2 * tenMillionRootV2 / 3) := by
      gcongr
    _ = tenMillionBranchTotal .e2TwoCells := by
      unfold tenMillionBranchTotal
      ring

theorem tenMillionEvenOneTwoDenseCells_ratio_le
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hleftRight : left ≠ right)
    (hleft :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue left).card)
    (hright :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue right).card) :
    ((hallCompletion N B).card : Rat) / N <=
      tenMillionBranchTotal .e1TwoCells := by
  let selection := Classical.choice
    (tenMillionEvenTwoCellSelection_nonempty
      hBout hleftRight hleft hright)
  exact tenMillionEvenOneTwoCellTerminal_ratio_le
    hLower hUpper hBout hBprop selection

theorem tenMillionEvenTwoTwoDenseCells_ratio_le
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : tenMillionLower <= N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hleftRight : left ≠ right)
    (hleft :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue left).card)
    (hright :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue right).card) :
    ((hallCompletion N B).card : Rat) / N <=
      tenMillionBranchTotal .e2TwoCells := by
  let selection := Classical.choice
    (tenMillionEvenTwoCellSelection_nonempty
      hBout hleftRight hleft hright)
  exact tenMillionEvenTwoTwoCellTerminal_ratio_le
    hLower hUpper hBout hBprop selection

end Erdos848
