import Mathlib.Tactic
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalTwistMaskData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem highQrFinalK09SquareTwistScan :
    Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses
      highQrFinalCompletionData.primes highQrFinalTwistMaskWords
      190 9 500_000_000_000 5
      highQrFinalSmallK09.primes block3SquareBaseWords := by
  intro index
  fin_cases index <;> rfl

end Erdos848.GeneratedHybridPaperRootCoverage
