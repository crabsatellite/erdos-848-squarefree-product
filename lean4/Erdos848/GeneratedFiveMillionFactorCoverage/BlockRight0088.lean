import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0088

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0088 :
    factorRightValid0088 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0088 := by
  unfold factorRightValid0088 factorDataChunk0088
  decide

theorem factorBlock0088 :
    factorDataChunk0088.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0088 factorRoot0088 factorLeft0088 factorRight0088

end Erdos848.GeneratedFiveMillionFactorCoverage
