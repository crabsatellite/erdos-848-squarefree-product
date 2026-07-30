import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0103
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0104

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0190 :
    Erdos848.PackedWheelPrimeChunkProperty
      190 30030 packedWheelOffsets
      0 5760 1922 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0190_chunk00 period0190_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0190_chunk02 period0190_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0190_chunk04 period0190_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0190_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0190_chunk07 period0190_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
