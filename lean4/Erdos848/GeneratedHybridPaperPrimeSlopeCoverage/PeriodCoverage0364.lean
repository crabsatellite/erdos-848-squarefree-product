import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0546
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0547

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0485 :
    Erdos848.PackedWheelPrimeChunkProperty
      485 30030 packedWheelOffsets
      0 5760 1844 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0485_chunk00 period0485_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0485_chunk02 period0485_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0485_chunk04 period0485_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0485_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0485_chunk07 period0485_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
