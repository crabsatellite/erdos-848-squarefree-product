import Mathlib.Tactic
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalTwistMaskData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem highQrFinalK08NonsquareTwistScan :
    Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses
      highQrFinalCompletionData.primes highQrFinalTwistMaskWords
      389 8 500_000_000_000 4
      highQrFinalSmallK08.primes block3NonsquareBaseWords := by
  intro index
  fin_cases index <;> rfl

end Erdos848.GeneratedHybridPaperRootCoverage
