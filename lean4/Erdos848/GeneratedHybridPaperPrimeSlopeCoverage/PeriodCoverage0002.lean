import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0003
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0004

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0123 :
    Erdos848.PackedWheelPrimeChunkProperty
      123 30030 packedWheelOffsets
      0 5760 2005 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0123_chunk00 period0123_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0123_chunk02 period0123_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0123_chunk04 period0123_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0123_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0123_chunk07 period0123_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
