import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0580
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0581

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0508 :
    Erdos848.PackedWheelPrimeChunkProperty
      508 30030 packedWheelOffsets
      0 5760 1831 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0508_chunk00 period0508_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0508_chunk02 period0508_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0508_chunk04 period0508_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0508_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0508_chunk07 period0508_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
