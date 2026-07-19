import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0143

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0143 :
    factorRightValid0143 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0143 := by
  unfold factorRightValid0143 factorDataChunk0143
  decide

theorem factorBlock0143 :
    factorDataChunk0143.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0143 factorRoot0143 factorLeft0143 factorRight0143

end Erdos848.GeneratedFiveMillionFactorCoverage
