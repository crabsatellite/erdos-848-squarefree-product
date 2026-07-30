import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0501
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0502

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0455 :
    Erdos848.PackedWheelPrimeChunkProperty
      455 30030 packedWheelOffsets
      0 5760 1854 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0455_chunk00 period0455_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0455_chunk02 period0455_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0455_chunk04 period0455_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0455_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0455_chunk07 period0455_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
