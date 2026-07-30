import Erdos848.TailR263MixedHalfDecomposition

namespace Erdos848

/-! The interval-specific terminal wrapper around the generic mixed-half split. -/

structure FiveMillionR263MixedHalfTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : FiveMillionR263Branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 3
  cutoff : Nat
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N <= residualEnvelope
  finiteBound :
    fiveMillionR263BaseMixedHalfPayment N B pivots cutoff / N <=
      finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff 2 / N <= tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope <=
      fiveMillionR263BranchCeiling branch

theorem FiveMillionR263MixedHalfTerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FiveMillionR263MixedHalfTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263MixedHalfComponents
    (cutoff := certificate.cutoff) hBprop certificate.pivotsCompletion
      certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
            certificate.cutoff +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff 2) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
          certificate.cutoff / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff 2 / N := by ring
    _ <= certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add (add_le_add certificate.residualBound
        certificate.finiteBound) certificate.tailBound
    _ <= fiveMillionR263BranchCeiling certificate.branch :=
      certificate.componentTotalBound
    _ <= fiveMillionR263PublicBudget :=
      fiveMillionR263BranchCeiling_le_publicBudget certificate.branch
    _ < tailHallTarget N := fiveMillionR263PublicBudget_lt_target hLower

end Erdos848
