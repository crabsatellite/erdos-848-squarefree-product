import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0120
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0121

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0201 :
    Erdos848.PackedWheelPrimeChunkProperty
      201 30030 packedWheelOffsets
      0 5760 1908 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0201_chunk00 period0201_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0201_chunk02 period0201_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0201_chunk04 period0201_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0201_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0201_chunk07 period0201_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
