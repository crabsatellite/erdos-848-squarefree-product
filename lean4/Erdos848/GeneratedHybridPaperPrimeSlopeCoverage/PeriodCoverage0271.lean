import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0406
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0407

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0392 :
    Erdos848.PackedWheelPrimeChunkProperty
      392 30030 packedWheelOffsets
      0 5760 1863 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0392_chunk00 period0392_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0392_chunk02 period0392_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0392_chunk04 period0392_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0392_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0392_chunk07 period0392_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
