import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0205
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0206

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0258 :
    Erdos848.PackedWheelPrimeChunkProperty
      258 30030 packedWheelOffsets
      0 5760 1887 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0258_chunk00 period0258_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0258_chunk02 period0258_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0258_chunk04 period0258_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0258_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0258_chunk07 period0258_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
