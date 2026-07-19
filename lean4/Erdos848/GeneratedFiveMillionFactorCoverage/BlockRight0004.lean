import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0004

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0004 :
    factorRightValid0004 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0004 := by
  unfold factorRightValid0004 factorDataChunk0004
  decide

theorem factorBlock0004 :
    factorDataChunk0004.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0004 factorRoot0004 factorLeft0004 factorRight0004

end Erdos848.GeneratedFiveMillionFactorCoverage
