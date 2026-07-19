import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0095

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0095 :
    factorRightValid0095 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0095 := by
  unfold factorRightValid0095 factorDataChunk0095
  decide

theorem factorBlock0095 :
    factorDataChunk0095.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0095 factorRoot0095 factorLeft0095 factorRight0095

end Erdos848.GeneratedFiveMillionFactorCoverage
