import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0411
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0412

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0395 :
    Erdos848.PackedWheelPrimeChunkProperty
      395 30030 packedWheelOffsets
      0 5760 1852 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0395_chunk00 period0395_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0395_chunk02 period0395_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0395_chunk04 period0395_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0395_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0395_chunk07 period0395_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
