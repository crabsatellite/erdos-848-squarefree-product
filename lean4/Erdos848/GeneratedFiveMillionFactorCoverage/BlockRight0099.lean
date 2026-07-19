import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0099

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0099 :
    factorRightValid0099 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0099 := by
  unfold factorRightValid0099 factorDataChunk0099
  decide

theorem factorBlock0099 :
    factorDataChunk0099.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0099 factorRoot0099 factorLeft0099 factorRight0099

end Erdos848.GeneratedFiveMillionFactorCoverage
