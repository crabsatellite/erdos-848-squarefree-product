import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0106

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0106 :
    factorRightValid0106 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0106 := by
  unfold factorRightValid0106 factorDataChunk0106
  decide

theorem factorBlock0106 :
    factorDataChunk0106.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0106 factorRoot0106 factorLeft0106 factorRight0106

end Erdos848.GeneratedFiveMillionFactorCoverage
