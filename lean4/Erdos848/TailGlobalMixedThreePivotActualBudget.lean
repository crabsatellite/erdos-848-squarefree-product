import Erdos848.TailGlobalMixedThreePivotActualReduction

namespace Erdos848

/-!
# Exact residual budget for the actual three-pivot route

The finite and tail terms are now closed.  This file records, without decimal
arithmetic, the precise residual density which each valuation branch may
spend and still contradict the Hall target.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedThreePivotFiniteAtFiveMillion : Rat :=
  2 / 25 * globalMixedThreePivotFinite7Envelope + 116 / 5_000_000

def globalMixedThreePivotActualResidualEnvelope
    (valuation : FiveMillionValuationClass) : Rat :=
  match valuation with
  | .evenThree => 15327 / 1_000_000
  | _ => 17067 / 1_000_000

theorem globalMixedThreePivotFiniteEnvelope_le_atFiveMillion
    {N : Nat} (hLower : 5_000_000 <= N) :
    2 / 25 * globalMixedThreePivotFinite7Envelope + 116 / N <=
      globalMixedThreePivotFiniteAtFiveMillion := by
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hendpoint : (116 : Rat) / N <= 116 / 5_000_000 := by
    exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  unfold globalMixedThreePivotFiniteAtFiveMillion
  linarith

theorem globalMixedThreePivotActual_budget_atFiveMillion
    (valuation : FiveMillionValuationClass) :
    globalMixedThreePivotActualResidualEnvelope valuation +
        globalMixedThreePivotFiniteAtFiveMillion +
          globalMixedThreePivotActualTailEnvelope valuation <
      tailHallTarget 5_000_000 := by
  cases valuation <;>
    norm_num [globalMixedThreePivotActualResidualEnvelope,
      globalMixedThreePivotFiniteAtFiveMillion,
      globalMixedThreePivotActualTailEnvelope,
      globalMixedThreePivotFinite7Envelope,
      fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope,
      tailHallTarget]

theorem globalMixedThreePivotActual_budget
    {N : Nat} (hLower : 5_000_000 <= N)
    (valuation : FiveMillionValuationClass) :
    globalMixedThreePivotActualResidualEnvelope valuation +
        globalMixedThreePivotFiniteAtFiveMillion +
          globalMixedThreePivotActualTailEnvelope valuation <
      tailHallTarget N :=
  (globalMixedThreePivotActual_budget_atFiveMillion valuation).trans_le
    (tailHallTarget_mono (by norm_num) hLower)

theorem hallCompletion_ratio_lt_tailTarget_of_actualResidualEnvelope
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (hresidual : ((hallResidual N B).card : Rat) / N <=
      globalMixedThreePivotActualResidualEnvelope valuation) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual N B valuation
        (hpivots hpivot))).1
  have hNposNat : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw := hallCompletion_card_le_actualResidualFiniteTail
    (cutoff := 7) (k := 2) hBprop hpivotsCompletion (by omega)
  have hratio := div_le_div_of_nonneg_right hraw hNposQ.le
  have hfinite := globalMixedEvenThreePivotFinitePayment_ratio_le
    hLower hBout hvaluation hpivots hcard
  have hfiniteAt := hfinite.trans
    (globalMixedThreePivotFiniteEnvelope_le_atFiveMillion hLower)
  have htail := hallBaseTailSquarePayment_threeTwo_actual_ratio_le
    hLower hBout hpivots hcard
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          globalMixedBaseFiniteThresholdPayment N pivots 7 2 +
            hallBaseTailSquarePayment N B pivots 7 2) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        globalMixedBaseFiniteThresholdPayment N pivots 7 2 / N +
          hallBaseTailSquarePayment N B pivots 7 2 / N := by ring
    _ <= globalMixedThreePivotActualResidualEnvelope valuation +
        globalMixedThreePivotFiniteAtFiveMillion +
          globalMixedThreePivotActualTailEnvelope valuation :=
      add_le_add (add_le_add hresidual hfiniteAt) htail
    _ < tailHallTarget N :=
      globalMixedThreePivotActual_budget hLower valuation

#print axioms globalMixedThreePivotActual_budget_atFiveMillion
#print axioms hallCompletion_ratio_lt_tailTarget_of_actualResidualEnvelope

end Erdos848
