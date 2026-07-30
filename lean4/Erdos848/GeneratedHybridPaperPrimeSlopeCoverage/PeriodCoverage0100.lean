import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0150
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0151

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0221 :
    Erdos848.PackedWheelPrimeChunkProperty
      221 30030 packedWheelOffsets
      0 5760 1897 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0221_chunk00 period0221_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0221_chunk02 period0221_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0221_chunk04 period0221_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0221_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0221_chunk07 period0221_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
