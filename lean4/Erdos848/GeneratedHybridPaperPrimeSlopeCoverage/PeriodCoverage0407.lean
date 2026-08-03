import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0610
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0611

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0528 :
    Erdos848.PackedWheelPrimeChunkProperty
      528 30030 packedWheelOffsets
      0 5760 1820 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0528_chunk00 period0528_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0528_chunk02 period0528_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0528_chunk04 period0528_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0528_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0528_chunk07 period0528_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
