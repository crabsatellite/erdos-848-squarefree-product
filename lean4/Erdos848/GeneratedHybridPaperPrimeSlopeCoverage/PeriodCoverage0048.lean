import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0072
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0073

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0169 :
    Erdos848.PackedWheelPrimeChunkProperty
      169 30030 packedWheelOffsets
      0 5760 1945 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0169_chunk00 period0169_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0169_chunk02 period0169_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0169_chunk04 period0169_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0169_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0169_chunk07 period0169_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
