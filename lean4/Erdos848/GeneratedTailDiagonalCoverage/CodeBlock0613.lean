import Erdos848.GeneratedTailDiagonalCoverage.Data

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0613 : PrimeCoverageTree :=
  (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 3333291) (.leaf 0 332175)) (.node 2 (.leaf 53 188677) (.leaf 3 3333295))) (.node 4 (.node 2 (.leaf 0 332176) (.leaf 17 588229)) (.node 2 (.leaf 3 3333299) (.leaf 0 332177)))) (.node 8 (.node 4 (.node 2 (.leaf 5 1999981) (.leaf 3 3333303)) (.node 2 (.leaf 7 1428559) (.leaf 23 434779))) (.node 4 (.node 2 (.leaf 3 3333307) (.leaf 5 1999985)) (.node 2 (.leaf 0 332178) (.leaf 3 3333311))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 0 332179) (.leaf 7 1428563)) (.node 2 (.leaf 3 3333315) (.leaf 31 322579))) (.node 4 (.node 2 (.leaf 37 270269) (.leaf 3 3333319)) (.node 2 (.leaf 17 588233) (.leaf 5 1999993)))) (.node 8 (.node 4 (.node 2 (.leaf 3 3333323) (.leaf 0 332180)) (.node 2 (.leaf 13 769229) (.leaf 3 3333327))) (.node 4 (.node 2 (.leaf 5 1999997) (.leaf 223 44843)) (.node 2 (.leaf 3 3333331) (.leaf 7 1428571))))))

theorem codeBlock0613Check :
    coverageTree0613.check primeRootCoverage 2499968 = true := by decide

theorem codeBlock0613 :
    PrimeCoverageRange primeRootCoverage 2499968 2500000 := by
  simpa [coverageTree0613, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0613Check

end Erdos848.GeneratedTailDiagonalCoverage
