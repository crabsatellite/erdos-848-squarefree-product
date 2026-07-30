import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0507
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0508

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0459 :
    Erdos848.PackedWheelPrimeChunkProperty
      459 30030 packedWheelOffsets
      0 5760 1844 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0459_chunk00 period0459_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0459_chunk02 period0459_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0459_chunk04 period0459_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0459_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0459_chunk07 period0459_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
