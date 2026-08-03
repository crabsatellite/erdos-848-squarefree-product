import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0115
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0116

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0198 :
    Erdos848.PackedWheelPrimeChunkProperty
      198 30030 packedWheelOffsets
      0 5760 1899 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0198_chunk00 period0198_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0198_chunk02 period0198_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0198_chunk04 period0198_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0198_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0198_chunk07 period0198_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
