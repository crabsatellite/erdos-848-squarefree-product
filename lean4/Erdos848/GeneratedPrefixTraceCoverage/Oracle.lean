import Erdos848.PrefixTraceChecker
import Erdos848.GeneratedFactorCoverage.Certificate

namespace Erdos848.GeneratedPrefixTraceCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def squarefreeOracle : Erdos848.SquarefreeOracle where
  certifies := fun n =>
    match Erdos848.GeneratedFactorCoverage.factorForest.find n with
    | some data => decide (data.value = n)
    | none => false
  sound := by
    intro n hcert
    cases hfind : Erdos848.GeneratedFactorCoverage.factorForest.find n with
    | none => simp [hfind] at hcert
    | some data =>
        have hvalue : data.value = n := of_decide_eq_true (by
          simpa [hfind] using hcert)
        exact Erdos848.GeneratedFactorCoverage.squarefree_of_find hfind hvalue

end Erdos848.GeneratedPrefixTraceCoverage
