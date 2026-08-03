import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0007
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0008

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0126 :
    Erdos848.PackedWheelPrimeChunkProperty
      126 30030 packedWheelOffsets
      0 5760 1986 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0126_chunk00 period0126_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0126_chunk02 period0126_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0126_chunk04 period0126_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0126_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0126_chunk07 period0126_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
