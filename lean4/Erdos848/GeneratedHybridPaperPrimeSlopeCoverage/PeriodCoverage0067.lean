import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0100
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0101

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0188 :
    Erdos848.PackedWheelPrimeChunkProperty
      188 30030 packedWheelOffsets
      0 5760 1915 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0188_chunk00 period0188_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0188_chunk02 period0188_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0188_chunk04 period0188_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0188_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0188_chunk07 period0188_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
