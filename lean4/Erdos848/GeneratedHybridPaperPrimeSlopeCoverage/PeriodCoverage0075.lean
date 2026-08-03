import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0112
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0113

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0196 :
    Erdos848.PackedWheelPrimeChunkProperty
      196 30030 packedWheelOffsets
      0 5760 1956 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0196_chunk00 period0196_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0196_chunk02 period0196_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0196_chunk04 period0196_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0196_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0196_chunk07 period0196_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
