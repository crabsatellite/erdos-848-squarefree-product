import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0000
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0001
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0002
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0003
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0004
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0005
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0006
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0007
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0008
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0009
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0010
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0011
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.SemanticGroup0012

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem period_primeCounting_step
    {period : ℕ}
    (hLower : 121 ≤ period)
    (hUpper : period ≤ 532) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h00 : period ≤ 152
  · exact periodStepGroup0000 (by omega) h00
  by_cases h01 : period ≤ 184
  · exact periodStepGroup0001 (by omega) h01
  by_cases h02 : period ≤ 216
  · exact periodStepGroup0002 (by omega) h02
  by_cases h03 : period ≤ 248
  · exact periodStepGroup0003 (by omega) h03
  by_cases h04 : period ≤ 280
  · exact periodStepGroup0004 (by omega) h04
  by_cases h05 : period ≤ 312
  · exact periodStepGroup0005 (by omega) h05
  by_cases h06 : period ≤ 344
  · exact periodStepGroup0006 (by omega) h06
  by_cases h07 : period ≤ 376
  · exact periodStepGroup0007 (by omega) h07
  by_cases h08 : period ≤ 408
  · exact periodStepGroup0008 (by omega) h08
  by_cases h09 : period ≤ 440
  · exact periodStepGroup0009 (by omega) h09
  by_cases h10 : period ≤ 472
  · exact periodStepGroup0010 (by omega) h10
  by_cases h11 : period ≤ 504
  · exact periodStepGroup0011 (by omega) h11
  · exact periodStepGroup0012 (by omega) hUpper

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
