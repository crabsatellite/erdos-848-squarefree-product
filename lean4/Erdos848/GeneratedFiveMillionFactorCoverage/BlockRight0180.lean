import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0180

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0180 :
    factorRightValid0180 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0180 := by
  unfold factorRightValid0180 factorDataChunk0180
  decide

theorem factorBlock0180 :
    factorDataChunk0180.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0180 factorRoot0180 factorLeft0180 factorRight0180

end Erdos848.GeneratedFiveMillionFactorCoverage
