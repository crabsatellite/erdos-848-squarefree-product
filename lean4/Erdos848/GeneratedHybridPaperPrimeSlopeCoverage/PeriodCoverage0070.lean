import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0105
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0106

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0191 :
    Erdos848.PackedWheelPrimeChunkProperty
      191 30030 packedWheelOffsets
      0 5760 1925 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0191_chunk00 period0191_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0191_chunk02 period0191_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0191_chunk04 period0191_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0191_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0191_chunk07 period0191_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
