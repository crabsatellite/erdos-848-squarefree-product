import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0075

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0075 :
    factorRightValid0075 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0075 := by
  unfold factorRightValid0075 factorDataChunk0075
  decide

theorem factorBlock0075 :
    factorDataChunk0075.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0075 factorRoot0075 factorLeft0075 factorRight0075

end Erdos848.GeneratedFiveMillionFactorCoverage
