import Erdos848.TailPaperDiagonalGridChecker

namespace Erdos848

/-!
# Recoverable aggregation for paper diagonal grids

Generated row blocks are checked independently.  This lemma lets the
untrusted generator assemble those already checked intervals without asking
the kernel to reduce the complete grid again in one monolithic `decide`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem paperDiagonalGridCoversFrom_append
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff start middle stop : Nat}
    {left right :
      List (CertifiedPaperDiagonalGridRow targets cutoff)}
    (hleft :
      paperDiagonalGridCoversFrom start middle left = true)
    (hright :
      paperDiagonalGridCoversFrom middle stop right = true) :
    paperDiagonalGridCoversFrom start stop (left ++ right) = true := by
  induction left generalizing start with
  | nil =>
      change decide (start = middle) = true at hleft
      have hstart : start = middle := of_decide_eq_true hleft
      subst middle
      simpa using hright
  | cons certificate rest ih =>
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          paperDiagonalGridCoversFrom
            (certificate.row.upper + 1) middle rest) = true at hleft
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          paperDiagonalGridCoversFrom
            (certificate.row.upper + 1) stop (rest ++ right)) = true
      have hparts := Bool.and_eq_true_iff.mp hleft
      exact Bool.and_eq_true_iff.mpr
        ⟨hparts.1, ih hparts.2⟩

#print axioms paperDiagonalGridCoversFrom_append

end Erdos848
