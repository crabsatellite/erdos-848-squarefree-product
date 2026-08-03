import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0400
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0401

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0388 :
    Erdos848.PackedWheelPrimeChunkProperty
      388 30030 packedWheelOffsets
      0 5760 1822 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0388_chunk00 period0388_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0388_chunk02 period0388_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0388_chunk04 period0388_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0388_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0388_chunk07 period0388_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
