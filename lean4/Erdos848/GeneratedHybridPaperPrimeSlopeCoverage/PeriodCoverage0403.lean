import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0604
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0605

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0524 :
    Erdos848.PackedWheelPrimeChunkProperty
      524 30030 packedWheelOffsets
      0 5760 1823 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0524_chunk00 period0524_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0524_chunk02 period0524_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0524_chunk04 period0524_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0524_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0524_chunk07 period0524_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
