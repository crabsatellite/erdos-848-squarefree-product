import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0066

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0066 :
    factorRightValid0066 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0066 := by
  unfold factorRightValid0066 factorDataChunk0066
  decide

theorem factorBlock0066 :
    factorDataChunk0066.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0066 factorRoot0066 factorLeft0066 factorRight0066

end Erdos848.GeneratedFiveMillionFactorCoverage
