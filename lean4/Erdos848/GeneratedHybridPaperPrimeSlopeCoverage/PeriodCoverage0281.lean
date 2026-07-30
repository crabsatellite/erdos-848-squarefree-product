import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0421
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0422

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0402 :
    Erdos848.PackedWheelPrimeChunkProperty
      402 30030 packedWheelOffsets
      0 5760 1807 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0402_chunk00 period0402_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0402_chunk02 period0402_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0402_chunk04 period0402_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0402_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0402_chunk07 period0402_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
