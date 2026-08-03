import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0360
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0361

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0361 :
    Erdos848.PackedWheelPrimeChunkProperty
      361 30030 packedWheelOffsets
      0 5760 1872 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0361_chunk00 period0361_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0361_chunk02 period0361_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0361_chunk04 period0361_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0361_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0361_chunk07 period0361_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
