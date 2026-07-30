import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0109
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0110

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0194 :
    Erdos848.PackedWheelPrimeChunkProperty
      194 30030 packedWheelOffsets
      0 5760 1931 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0194_chunk00 period0194_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0194_chunk02 period0194_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0194_chunk04 period0194_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0194_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0194_chunk07 period0194_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
