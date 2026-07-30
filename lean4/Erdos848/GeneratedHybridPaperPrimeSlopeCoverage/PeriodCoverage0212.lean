import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0318
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0319

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0333 :
    Erdos848.PackedWheelPrimeChunkProperty
      333 30030 packedWheelOffsets
      0 5760 1874 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0333_chunk00 period0333_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0333_chunk02 period0333_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0333_chunk04 period0333_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0333_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0333_chunk07 period0333_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
