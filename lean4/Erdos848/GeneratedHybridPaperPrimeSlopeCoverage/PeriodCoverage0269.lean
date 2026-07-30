import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0403
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0404

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0390 :
    Erdos848.PackedWheelPrimeChunkProperty
      390 30030 packedWheelOffsets
      0 5760 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0390_chunk00 period0390_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0390_chunk02 period0390_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0390_chunk04 period0390_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0390_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0390_chunk07 period0390_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
