import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0138
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0139

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0213 :
    Erdos848.PackedWheelPrimeChunkProperty
      213 30030 packedWheelOffsets
      0 5760 1928 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0213_chunk00 period0213_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0213_chunk02 period0213_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0213_chunk04 period0213_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0213_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0213_chunk07 period0213_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
