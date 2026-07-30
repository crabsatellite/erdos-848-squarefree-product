import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0420
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0421

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0401 :
    Erdos848.PackedWheelPrimeChunkProperty
      401 30030 packedWheelOffsets
      0 5760 1850 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0401_chunk00 period0401_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0401_chunk02 period0401_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0401_chunk04 period0401_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0401_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0401_chunk07 period0401_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
