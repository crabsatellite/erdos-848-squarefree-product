import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0568
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0569

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0500 :
    Erdos848.PackedWheelPrimeChunkProperty
      500 30030 packedWheelOffsets
      0 5760 1835 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0500_chunk00 period0500_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0500_chunk02 period0500_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0500_chunk04 period0500_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0500_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0500_chunk07 period0500_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
