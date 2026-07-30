import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0303
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0304

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0323 :
    Erdos848.PackedWheelPrimeChunkProperty
      323 30030 packedWheelOffsets
      0 5760 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0323_chunk00 period0323_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0323_chunk02 period0323_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0323_chunk04 period0323_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0323_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0323_chunk07 period0323_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
