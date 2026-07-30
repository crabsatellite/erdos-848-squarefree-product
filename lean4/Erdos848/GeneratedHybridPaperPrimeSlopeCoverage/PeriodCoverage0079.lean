import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0118
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0119

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0200 :
    Erdos848.PackedWheelPrimeChunkProperty
      200 30030 packedWheelOffsets
      0 5760 1928 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0200_chunk00 period0200_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0200_chunk02 period0200_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0200_chunk04 period0200_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0200_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0200_chunk07 period0200_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
