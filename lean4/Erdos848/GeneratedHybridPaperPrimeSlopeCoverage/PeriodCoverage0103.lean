import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0154
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0155

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0224 :
    Erdos848.PackedWheelPrimeChunkProperty
      224 30030 packedWheelOffsets
      0 5760 1921 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0224_chunk00 period0224_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0224_chunk02 period0224_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0224_chunk04 period0224_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0224_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0224_chunk07 period0224_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
