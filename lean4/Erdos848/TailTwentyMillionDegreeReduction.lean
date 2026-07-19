import Erdos848.TailGlobalMixedResidual
import Erdos848.TailTwentyMillionPivotAllocation

namespace Erdos848

/-!
# Exact reduction target for the twenty-million degree producer

The external one-form scan must prove a lower bound for the literal sum of
the two base-progression degrees of every actual Hall residual pivot.  This
module converts that single universal statement to the residual-cardinality
lower bound consumed by the valuation allocation.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TwentyMillionDegreeSumCertificate (N : Nat) (B : Finset Nat) : Prop :=
  ∀ pivot ∈ hallResidual N B,
    6_910_733 * N +
        1_000_000_000 * (OriginalA18 N).card <
      1_000_000_000 *
        ((squarefreeNeighbours (OriginalA7 N) pivot).card +
          (squarefreeNeighbours (OriginalA18 N) pivot).card)

theorem twentyMillionDegreeResidualLower_of_sumCertificate
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card)
    (hcertificate : TwentyMillionDegreeSumCertificate N B) :
    TwentyMillionDegreeResidualLower N B := by
  have hmixedNonempty := hallMixedResidual_nonempty_of_defect
    (pureGlobalOppositeBaseMatching (by omega)) hdefect
  obtain ⟨pivot, hpivotMixed⟩ := hmixedNonempty
  have hpivotResidual : pivot ∈ hallResidual N B :=
    hallMixedResidual_subset_hallResidual hBout hpivotMixed
  have hdegree := hcertificate pivot hpivotResidual
  have hexact :=
    mixedHallDefect_residual_exact hBprop hpivotMixed hdefect
  have hdegreeLe :
      (squarefreeNeighbours (OriginalA7 N) pivot).card +
          (squarefreeNeighbours (OriginalA18 N) pivot).card ≤
        (hallMixedResidual N B).card + (OriginalA18 N).card := by
    omega
  have hscaledLe :
      1_000_000_000 *
          ((squarefreeNeighbours (OriginalA7 N) pivot).card +
            (squarefreeNeighbours (OriginalA18 N) pivot).card) ≤
        1_000_000_000 *
          ((hallMixedResidual N B).card + (OriginalA18 N).card) :=
    Nat.mul_le_mul_left _ hdegreeLe
  have hmixedScaled :
      6_910_733 * N <
        1_000_000_000 * (hallMixedResidual N B).card := by
    omega
  have hcard :=
    Finset.card_le_card (hallMixedResidual_subset_hallResidual hBout)
  unfold TwentyMillionDegreeResidualLower
  exact hmixedScaled.trans_le (Nat.mul_le_mul_left _ hcard)

#print axioms twentyMillionDegreeResidualLower_of_sumCertificate

end Erdos848
