import Erdos848.GeneratedLowDiagonalCoverage.Data

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0308 : PrimeCoverageTree :=
  (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 463 10799) (.leaf 3 1666647)) (.node 2 (.leaf 5 999989) (.leaf 0 174191))) (.node 4 (.node 2 (.leaf 3 1666651) (.leaf 0 174192)) (.node 2 (.leaf 0 174193) (.leaf 3 1666655)))) (.node 8 (.node 4 (.node 2 (.leaf 13 384613) (.leaf 11 454543)) (.node 2 (.leaf 3 1666659) (.leaf 7 714283))) (.node 4 (.node 2 (.leaf 5 999997) (.leaf 3 1666663)) (.node 2 (.leaf 23 217391) (.leaf 43 116279)))))

theorem codeBlock0308Check :
    coverageTree0308.check primeRootCoverage 1249984 = true := by decide

theorem codeBlock0308 :
    PrimeCoverageRange primeRootCoverage 1249984 1250000 := by
  simpa [coverageTree0308, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0308Check

end Erdos848.GeneratedLowDiagonalCoverage
