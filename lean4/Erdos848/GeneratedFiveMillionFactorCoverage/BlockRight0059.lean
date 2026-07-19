import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0059

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0059 :
    factorRightValid0059 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0059 := by
  unfold factorRightValid0059 factorDataChunk0059
  decide

theorem factorBlock0059 :
    factorDataChunk0059.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0059 factorRoot0059 factorLeft0059 factorRight0059

end Erdos848.GeneratedFiveMillionFactorCoverage
