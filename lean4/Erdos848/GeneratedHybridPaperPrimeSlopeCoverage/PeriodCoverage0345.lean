import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0517
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0518

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0466 :
    Erdos848.PackedWheelPrimeChunkProperty
      466 30030 packedWheelOffsets
      0 5760 1825 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0466_chunk00 period0466_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0466_chunk02 period0466_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0466_chunk04 period0466_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0466_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0466_chunk07 period0466_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
