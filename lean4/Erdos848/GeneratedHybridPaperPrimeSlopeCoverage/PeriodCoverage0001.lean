import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0001
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0002

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0122 :
    Erdos848.PackedWheelPrimeChunkProperty
      122 30030 packedWheelOffsets
      0 5760 2002 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0122_chunk00 period0122_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0122_chunk02 period0122_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0122_chunk04 period0122_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0122_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0122_chunk07 period0122_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
