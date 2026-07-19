import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0070

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0070 :
    factorRightValid0070 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0070 := by
  unfold factorRightValid0070 factorDataChunk0070
  decide

theorem factorBlock0070 :
    factorDataChunk0070.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0070 factorRoot0070 factorLeft0070 factorRight0070

end Erdos848.GeneratedFiveMillionFactorCoverage
