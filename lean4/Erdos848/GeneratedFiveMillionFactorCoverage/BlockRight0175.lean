import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0175

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0175 :
    factorRightValid0175 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0175 := by
  unfold factorRightValid0175 factorDataChunk0175
  decide

theorem factorBlock0175 :
    factorDataChunk0175.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0175 factorRoot0175 factorLeft0175 factorRight0175

end Erdos848.GeneratedFiveMillionFactorCoverage
