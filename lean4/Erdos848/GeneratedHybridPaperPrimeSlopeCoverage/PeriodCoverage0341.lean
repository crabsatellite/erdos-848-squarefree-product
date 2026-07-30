import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0511
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0512

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0462 :
    Erdos848.PackedWheelPrimeChunkProperty
      462 30030 packedWheelOffsets
      0 5760 1874 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0462_chunk00 period0462_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0462_chunk02 period0462_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0462_chunk04 period0462_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0462_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0462_chunk07 period0462_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
