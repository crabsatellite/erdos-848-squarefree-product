import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0505
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0506

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0458 :
    Erdos848.PackedWheelPrimeChunkProperty
      458 30030 packedWheelOffsets
      0 5760 1799 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0458_chunk00 period0458_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0458_chunk02 period0458_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0458_chunk04 period0458_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0458_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0458_chunk07 period0458_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
