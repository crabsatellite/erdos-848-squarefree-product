import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0516
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0517

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0465 :
    Erdos848.PackedWheelPrimeChunkProperty
      465 30030 packedWheelOffsets
      0 5760 1788 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0465_chunk00 period0465_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0465_chunk02 period0465_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0465_chunk04 period0465_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0465_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0465_chunk07 period0465_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
