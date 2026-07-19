import Erdos848.GeneratedDiagonalCoverage.Data

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0368 : PrimeCoverageTree :=
  (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 5 299981) (.leaf 29 51721)) (.node 2 (.leaf 3 499971) (.leaf 19 78943))) (.node 4 (.node 2 (.leaf 0 57020) (.leaf 3 499975)) (.node 2 (.leaf 61 24589) (.leaf 0 57021)))) (.node 8 (.node 4 (.node 2 (.leaf 3 499979) (.leaf 653 2297)) (.node 2 (.leaf 5 299989) (.leaf 3 499983))) (.node 4 (.node 2 (.leaf 7 214279) (.leaf 59 25423)) (.node 2 (.leaf 3 499987) (.leaf 5 299993)))))

theorem codeBlock0368Check :
    coverageTree0368.check primeRootCoverage 374976 = true := by decide

theorem codeBlock0368 :
    PrimeCoverageRange primeRootCoverage 374976 374992 := by
  simpa [coverageTree0368, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0368Check

end Erdos848.GeneratedDiagonalCoverage
