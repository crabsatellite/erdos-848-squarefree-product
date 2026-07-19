import Erdos848.GeneratedLowDiagonalCoverage.Data

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def coverageTree0307 : PrimeCoverageTree :=
  (.node 64 (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 0 174181) (.leaf 5 999937)) (.node 2 (.leaf 3 1666563) (.leaf 0 174182))) (.node 4 (.node 2 (.leaf 73 68489) (.leaf 3 1666567)) (.node 2 (.leaf 5 999941) (.leaf 11 454519)))) (.node 8 (.node 4 (.node 2 (.leaf 3 1666571) (.leaf 17 294101)) (.node 2 (.leaf 109 45869) (.leaf 3 1666575))) (.node 4 (.node 2 (.leaf 7 714247) (.leaf 0 174183)) (.node 2 (.leaf 3 1666579) (.leaf 67 74623))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 5 999949) (.leaf 3 1666583)) (.node 2 (.leaf 11 454523) (.leaf 7 714251))) (.node 4 (.node 2 (.leaf 3 1666587) (.leaf 5 999953)) (.node 2 (.leaf 0 174184) (.leaf 3 1666591)))) (.node 8 (.node 4 (.node 2 (.leaf 877 5701) (.leaf 0 174185)) (.node 2 (.leaf 3 1666595) (.leaf 107 46727))) (.node 4 (.node 2 (.leaf 19 263147) (.leaf 3 1666599)) (.node 2 (.leaf 0 174186) (.leaf 5 999961)))))) (.node 32 (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 3 1666603) (.leaf 7 714259)) (.node 2 (.leaf 389 12853) (.leaf 3 1666607))) (.node 4 (.node 2 (.leaf 5 999965) (.leaf 1847 2707)) (.node 2 (.leaf 3 1666611) (.leaf 59 84743)))) (.node 8 (.node 4 (.node 2 (.leaf 7 714263) (.leaf 3 1666615)) (.node 2 (.leaf 0 174187) (.leaf 17 294109))) (.node 4 (.node 2 (.leaf 3 1666619) (.leaf 29 172409)) (.node 2 (.leaf 5 999973) (.leaf 3 1666623))))) (.node 16 (.node 8 (.node 4 (.node 2 (.leaf 173 28901) (.leaf 131 38167)) (.node 2 (.leaf 3 1666627) (.leaf 5 999977))) (.node 4 (.node 2 (.leaf 0 174188) (.leaf 3 1666631)) (.node 2 (.leaf 7 714271) (.leaf 23 217387)))) (.node 8 (.node 4 (.node 2 (.leaf 3 1666635) (.leaf 41 121949)) (.node 2 (.leaf 0 174189) (.leaf 3 1666639))) (.node 4 (.node 2 (.leaf 17 294113) (.leaf 5 999985)) (.node 2 (.leaf 3 1666643) (.leaf 0 174190)))))))

theorem codeBlock0307Check :
    coverageTree0307.check primeRootCoverage 1249920 = true := by decide

theorem codeBlock0307 :
    PrimeCoverageRange primeRootCoverage 1249920 1249984 := by
  simpa [coverageTree0307, PrimeCoverageTree.size] using
    PrimeCoverageTree.range codeBlock0307Check

end Erdos848.GeneratedLowDiagonalCoverage
