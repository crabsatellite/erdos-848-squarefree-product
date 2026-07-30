import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0030
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0031

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0141 :
    Erdos848.PackedWheelPrimeChunkProperty
      141 30030 packedWheelOffsets
      0 5760 1958 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0141_chunk00 period0141_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0141_chunk02 period0141_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0141_chunk04 period0141_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0141_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0141_chunk07 period0141_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
