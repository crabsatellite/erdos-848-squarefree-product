import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0013

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0013 :
    factorRightValid0013 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0013 := by
  unfold factorRightValid0013 factorDataChunk0013
  decide

theorem factorBlock0013 :
    factorDataChunk0013.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0013 factorRoot0013 factorLeft0013 factorRight0013

end Erdos848.GeneratedFiveMillionFactorCoverage
