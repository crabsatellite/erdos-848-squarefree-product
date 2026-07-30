import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0021
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0022

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0135 :
    Erdos848.PackedWheelPrimeChunkProperty
      135 30030 packedWheelOffsets
      0 5760 1961 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0135_chunk00 period0135_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0135_chunk02 period0135_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0135_chunk04 period0135_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0135_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0135_chunk07 period0135_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
