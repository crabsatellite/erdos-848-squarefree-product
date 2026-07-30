import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0141
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0142

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0215 :
    Erdos848.PackedWheelPrimeChunkProperty
      215 30030 packedWheelOffsets
      0 5760 1903 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0215_chunk00 period0215_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0215_chunk02 period0215_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0215_chunk04 period0215_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0215_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0215_chunk07 period0215_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
