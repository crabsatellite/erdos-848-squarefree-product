import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0312
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0313

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0329 :
    Erdos848.PackedWheelPrimeChunkProperty
      329 30030 packedWheelOffsets
      0 5760 1857 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0329_chunk00 period0329_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0329_chunk02 period0329_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0329_chunk04 period0329_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0329_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0329_chunk07 period0329_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
