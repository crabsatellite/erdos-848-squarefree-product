import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0523
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0524

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0470 :
    Erdos848.PackedWheelPrimeChunkProperty
      470 30030 packedWheelOffsets
      0 5760 1832 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0470_chunk00 period0470_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0470_chunk02 period0470_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0470_chunk04 period0470_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0470_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0470_chunk07 period0470_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
