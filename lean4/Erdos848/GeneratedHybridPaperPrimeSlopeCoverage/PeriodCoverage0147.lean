import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0220
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0221

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0268 :
    Erdos848.PackedWheelPrimeChunkProperty
      268 30030 packedWheelOffsets
      0 5760 1899 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0268_chunk00 period0268_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0268_chunk02 period0268_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0268_chunk04 period0268_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0268_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0268_chunk07 period0268_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
