import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0010
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0011

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0128 :
    Erdos848.PackedWheelPrimeChunkProperty
      128 30030 packedWheelOffsets
      0 5760 1963 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0128_chunk00 period0128_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0128_chunk02 period0128_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0128_chunk04 period0128_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0128_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0128_chunk07 period0128_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
