import Erdos848.GeneratedDiagonalCoverage.Data

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0369 : PrimeCoverageTree :=
  (.node 8 (.node 4 (.node 2 (.leaf 43 34883) (.leaf 3 499991)) (.node 2 (.leaf 0 57022) (.leaf 7 214283))) (.node 4 (.node 2 (.leaf 3 499995) (.leaf 103 14563)) (.node 2 (.leaf 11 136363) (.leaf 3 499999))))

theorem codeBlock0369Check :
    coverageTree0369.check primeRootCoverage 374992 = true := by decide

theorem codeBlock0369 :
    PrimeCoverageRange primeRootCoverage 374992 375000 := by
  simpa [coverageTree0369, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0369Check

end Erdos848.GeneratedDiagonalCoverage
