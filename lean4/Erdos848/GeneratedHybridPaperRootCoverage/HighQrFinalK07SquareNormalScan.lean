import Mathlib.Tactic
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalNormalMaskData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem highQrFinalK07SquareNormalScan :
    Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses
      highQrFinalCompletionData.primes highQrFinalNormalMaskWords
      789 7 500_000_000_000 3
      highQrFinalSmallK07.primes block3SquareBaseWords := by
  intro index
  fin_cases index <;> rfl

end Erdos848.GeneratedHybridPaperRootCoverage
