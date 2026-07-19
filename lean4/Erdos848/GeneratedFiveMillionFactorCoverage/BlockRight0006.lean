import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0006

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0006 :
    factorRightValid0006 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0006 := by
  unfold factorRightValid0006 factorDataChunk0006
  decide

theorem factorBlock0006 :
    factorDataChunk0006.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0006 factorRoot0006 factorLeft0006 factorRight0006

end Erdos848.GeneratedFiveMillionFactorCoverage
