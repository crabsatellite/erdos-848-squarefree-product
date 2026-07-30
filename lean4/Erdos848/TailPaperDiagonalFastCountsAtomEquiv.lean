import Erdos848.TailPaperDiagonalFastCountsDefs

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedDiagonalAtom_sum_equiv
    (f : TruncatedDiagonalAtom → Nat) :
    (∑ atom, f atom) =
      ∑ code, f (truncatedDiagonalAtomEquiv.symm code) :=
  Fintype.sum_equiv truncatedDiagonalAtomEquiv f
    (fun code => f (truncatedDiagonalAtomEquiv.symm code))
    (fun atom =>
      congrArg f
        (truncatedDiagonalAtomEquiv.symm_apply_apply atom).symm)

#print axioms truncatedDiagonalAtom_sum_equiv

end Erdos848
