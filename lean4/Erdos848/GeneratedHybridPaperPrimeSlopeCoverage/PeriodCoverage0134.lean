import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0201
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0202

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0255 :
    Erdos848.PackedWheelPrimeChunkProperty
      255 30030 packedWheelOffsets
      0 5760 1903 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0255_chunk00 period0255_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0255_chunk02 period0255_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0255_chunk04 period0255_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0255_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0255_chunk07 period0255_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
