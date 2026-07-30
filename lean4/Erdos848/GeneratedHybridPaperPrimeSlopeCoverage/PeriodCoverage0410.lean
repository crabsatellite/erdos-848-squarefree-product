import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0615
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0616

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0531 :
    Erdos848.PackedWheelPrimeChunkProperty
      531 30030 packedWheelOffsets
      0 5760 1815 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0531_chunk00 period0531_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0531_chunk02 period0531_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0531_chunk04 period0531_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0531_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0531_chunk07 period0531_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
