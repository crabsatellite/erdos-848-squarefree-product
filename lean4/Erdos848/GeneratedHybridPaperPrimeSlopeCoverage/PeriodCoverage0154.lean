import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0231
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0232

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0275 :
    Erdos848.PackedWheelPrimeChunkProperty
      275 30030 packedWheelOffsets
      0 5760 1886 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0275_chunk00 period0275_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0275_chunk02 period0275_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0275_chunk04 period0275_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0275_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0275_chunk07 period0275_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
