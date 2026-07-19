import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0113

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0113 :
    factorRightValid0113 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0113 := by
  unfold factorRightValid0113 factorDataChunk0113
  decide

theorem factorBlock0113 :
    factorDataChunk0113.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0113 factorRoot0113 factorLeft0113 factorRight0113

end Erdos848.GeneratedFiveMillionFactorCoverage
