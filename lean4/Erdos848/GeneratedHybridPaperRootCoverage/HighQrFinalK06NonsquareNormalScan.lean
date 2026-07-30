import Mathlib.Tactic
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalNormalMaskData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem highQrFinalK06NonsquareNormalScan :
    Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses
      highQrFinalCompletionData.primes highQrFinalNormalMaskWords
      1_589 6 500_000_000_000 2
      highQrFinalSmallK06.primes block3NonsquareBaseWords := by
  intro index
  fin_cases index <;> rfl

end Erdos848.GeneratedHybridPaperRootCoverage
