import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0208
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0209

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0260 :
    Erdos848.PackedWheelPrimeChunkProperty
      260 30030 packedWheelOffsets
      0 5760 1887 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0260_chunk00 period0260_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0260_chunk02 period0260_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0260_chunk04 period0260_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0260_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0260_chunk07 period0260_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
