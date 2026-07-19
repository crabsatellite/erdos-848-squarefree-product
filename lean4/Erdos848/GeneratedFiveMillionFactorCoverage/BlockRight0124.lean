import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0124

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0124 :
    factorRightValid0124 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0124 := by
  unfold factorRightValid0124 factorDataChunk0124
  decide

theorem factorBlock0124 :
    factorDataChunk0124.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0124 factorRoot0124 factorLeft0124 factorRight0124

end Erdos848.GeneratedFiveMillionFactorCoverage
