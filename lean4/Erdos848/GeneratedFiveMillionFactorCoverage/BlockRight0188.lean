import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0188

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0188 :
    factorRightValid0188 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0188 := by
  unfold factorRightValid0188 factorDataChunk0188
  decide

theorem factorBlock0188 :
    factorDataChunk0188.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0188 factorRoot0188 factorLeft0188 factorRight0188

end Erdos848.GeneratedFiveMillionFactorCoverage
