import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0222
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0223

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0269 :
    Erdos848.PackedWheelPrimeChunkProperty
      269 30030 packedWheelOffsets
      0 5760 1841 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0269_chunk00 period0269_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0269_chunk02 period0269_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0269_chunk04 period0269_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0269_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0269_chunk07 period0269_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
