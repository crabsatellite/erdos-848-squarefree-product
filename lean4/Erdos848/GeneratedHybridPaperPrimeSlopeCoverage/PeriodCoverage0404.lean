import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0606
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0607

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0525 :
    Erdos848.PackedWheelPrimeChunkProperty
      525 30030 packedWheelOffsets
      0 5760 1790 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0525_chunk00 period0525_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0525_chunk02 period0525_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0525_chunk04 period0525_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0525_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0525_chunk07 period0525_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
