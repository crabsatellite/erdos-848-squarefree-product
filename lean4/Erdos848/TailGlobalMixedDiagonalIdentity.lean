import Erdos848.TailGlobalMixedPairTailReduction
import Erdos848.TailDiagonalFiniteChecker

namespace Erdos848

/-! The paper and uniform Hall routes use the same literal off-base diagonal. -/

theorem globalMixedTailDiagonalBad_eq_tailDiagonalBad (N : Nat) :
    globalMixedTailDiagonalBad N = tailDiagonalBad N := by
  ext x
  simp [globalMixedTailDiagonalBad, tailDiagonalBad, OutsideLowBase,
    and_assoc]

#print axioms globalMixedTailDiagonalBad_eq_tailDiagonalBad

end Erdos848
