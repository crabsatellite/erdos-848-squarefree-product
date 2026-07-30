import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0510
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0511

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0461 :
    Erdos848.PackedWheelPrimeChunkProperty
      461 30030 packedWheelOffsets
      0 5760 1839 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0461_chunk00 period0461_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0461_chunk02 period0461_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0461_chunk04 period0461_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0461_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0461_chunk07 period0461_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
