import Erdos848.GeneratedDiagonalCoverage.Data

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0367 : PrimeCoverageTree :=
  (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 499883) (.leaf 349 4297)) (.node 2 (.leaf 41 36577) (.leaf 3 499887))) (.node 4 (.node 2 (.leaf 5 299933) (.leaf 23 65203)) (.node 2 (.leaf 3 499891) (.leaf 29 51713)))) (.node 8 (.node 4 (.node 2 (.leaf 0 57016) (.leaf 3 499895)) (.node 2 (.leaf 17 88217) (.leaf 13 115361))) (.node 4 (.node 2 (.leaf 3 499899) (.leaf 7 214243)) (.node 2 (.leaf 5 299941) (.leaf 3 499903))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 0 57017) (.leaf 97 15461)) (.node 2 (.leaf 3 499907) (.leaf 5 299945))) (.node 4 (.node 2 (.leaf 7 214247) (.leaf 3 499911)) (.node 2 (.leaf 173 8669) (.leaf 53 28297)))) (.node 8 (.node 4 (.node 2 (.leaf 3 499915) (.leaf 31 48379)) (.node 2 (.leaf 1151 1303) (.leaf 3 499919))) (.node 4 (.node 2 (.leaf 23 65207) (.leaf 5 299953)) (.node 2 (.leaf 3 499923) (.leaf 11 136343)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 1051 1427) (.leaf 3 499927)) (.node 2 (.leaf 5 299957) (.leaf 227 6607))) (.node 4 (.node 2 (.leaf 3 499931) (.leaf 13 115369)) (.node 2 (.leaf 727 2063) (.leaf 3 499935)))) (.node 8 (.node 4 (.node 2 (.leaf 661 2269) (.leaf 7 214259)) (.node 2 (.leaf 3 499939) (.leaf 41 36581))) (.node 4 (.node 2 (.leaf 5 299965) (.leaf 3 499943)) (.node 2 (.leaf 373 4021) (.leaf 619 2423))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 499947) (.leaf 5 299969)) (.node 2 (.leaf 13 115373) (.leaf 3 499951))) (.node 4 (.node 2 (.leaf 0 57018) (.leaf 11 136351)) (.node 2 (.leaf 3 499955) (.leaf 7 214267)))) (.node 8 (.node 4 (.node 2 (.leaf 31 48383) (.leaf 3 499959)) (.node 2 (.leaf 0 57019) (.leaf 5 299977))) (.node 4 (.node 2 (.leaf 3 499963) (.leaf 17 88229)) (.node 2 (.leaf 7 214271) (.leaf 3 499967)))))))

theorem codeBlock0367Check :
    coverageTree0367.check primeRootCoverage 374912 = true := by decide

theorem codeBlock0367 :
    PrimeCoverageRange primeRootCoverage 374912 374976 := by
  simpa [coverageTree0367, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0367Check

end Erdos848.GeneratedDiagonalCoverage
