import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0009
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0010

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0127 :
    Erdos848.PackedWheelPrimeChunkProperty
      127 30030 packedWheelOffsets
      0 5760 2007 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0127_chunk00 period0127_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0127_chunk02 period0127_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0127_chunk04 period0127_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0127_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0127_chunk07 period0127_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
